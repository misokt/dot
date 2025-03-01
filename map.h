#ifndef MAP_H_
#define MAP_H_

typedef struct {
  char *key;
  char *value;
} KV;

#include <stdlib.h>
typedef struct {
  KV *pair;
  size_t size;
} Map;

Map* create_map();
void add_to_map(Map *map, const char *key, const char *value);
char** get_keys(Map *map);
char* get_value(Map *map, const char *key);
void free_map(Map *map);

#endif // MAP_H_

#ifdef MAP_IMPLEMENTATION

Map* create_map()
{
  Map *map = (Map*)malloc(sizeof(Map));
  map->pair = NULL;
  map->size = 0;
  return map;
}

#include <string.h>
void add_to_map(Map *map, const char *key, const char *value)
{
  map->pair = (KV*)realloc(map->pair, (size_t)((map->size + 1) * sizeof(KV)));
  map->pair[map->size].key = strdup(key);
  map->pair[map->size].value = strdup(value);
  map->size++;
}

char** get_keys(Map *map)
{
  char **keys = malloc(sizeof(char*)*map->size);
  for (size_t i = 0; i < map->size; ++i)
    keys[i] = map->pair[i].key;
  return keys;
}

char* get_value(Map *map, const char *key)
{
  for (size_t i = 0; i < map->size; ++i) {
    if (strcmp(map->pair[i].key, key) == 0)
      return map->pair[i].value;
  }
  return NULL;
}

void free_map(Map *map)
{
  for (size_t i = 0; i < map->size; ++i) {
    free(map->pair[i].key);
    free(map->pair[i].value);
  }
  free(map->pair);
  free(map);
}

#endif // MAP_IMPLEMENTATION
