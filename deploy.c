#include <assert.h>
#include <dirent.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>

#define MAP_IMPLEMENTATION
#include "map.h"

#define MAX_PATH_LENGTH 1024
#define STRCMP(a, x, y) ((strcmp(a, x) == 0) || (strcmp(a, y) == 0))

void create_symlink(const char *source, const char *target)
{
  if (symlink(source, target) != 0) {
    fprintf(stderr, "error creating symlink. ERROR: %s -> %s\n", source, target);
  } else {
    printf("Created symlink from %s to %s\n", source, target);
  }
}

void visit_directory(Map *map, const char *key, const char *path)
{
  struct dirent *entry;
  struct stat st;

  char cwd[MAX_PATH_LENGTH];
  getcwd(cwd, sizeof(cwd));
  assert(cwd != NULL);

  DIR *dir = opendir(path);
  if (dir == NULL) {
    fprintf(stderr, "error opening directory. ERROR: %s\n", path);
    return;
  }

  while ((entry = readdir(dir)) != NULL) {
    if (STRCMP(entry->d_name, ".", "..")) {
      continue;
    }

    char full_path[MAX_PATH_LENGTH];
    snprintf(full_path, sizeof(full_path), "%s/%s", path, entry->d_name);

    if (stat(full_path, &st) == -1) {
      fprintf(stderr, "error getting file status. ERROR: %s\n", full_path);
      continue;
    }

    if (S_ISDIR(st.st_mode)) {
      visit_directory(map, key, full_path);
    } else if (S_ISREG(st.st_mode)) {
      const char *target_dir = get_value(map, key);
      if (target_dir != NULL) {
        char target_path[MAX_PATH_LENGTH];
        snprintf(target_path, sizeof(target_path), "%s%s", target_dir, (full_path+strlen(key)));

        char source_path[MAX_PATH_LENGTH*2];
        snprintf(source_path, sizeof(source_path), "%s/%s", cwd, full_path);

        create_symlink(source_path, target_path);
      }
    }
  }

  closedir(dir);
}

Map* init_config()
{
  Map *map = create_map();

  char *home_dir = getenv("HOME");
  assert(home_dir != NULL);
  add_to_map(map, "home", home_dir);

  char config_dir[MAX_PATH_LENGTH];
  snprintf(config_dir, sizeof(config_dir), "%s/%s", home_dir, ".config");
  add_to_map(map, "config", config_dir);

  char emacs_d_dir[MAX_PATH_LENGTH];
  snprintf(emacs_d_dir, sizeof(emacs_d_dir), "%s/%s", home_dir, ".emacs.d");
  add_to_map(map, "emacs.d", emacs_d_dir);

  // char *root_dir = "/";
  // add_to_map(map, "root", root_dir);

  return map;
}

int main(void)
{
  Map *map = init_config();

  char **keys = get_keys(map);
  for (size_t i = 0; i < map->size; ++i) {
    visit_directory(map, keys[i], keys[i]);
  }

  free_map(map);
  return 0;
}
