(setq custom-file "~/.emacs.custom.el")

(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      backup-by-copying t
      version-control t
      kept-new-versions 6
      kept-old-versions 3
      delete-old-versions t)

(setq default-frame-alist '((fullscreen . maximized)))

; show packages from melpa too
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

; company
(require 'company)
(global-company-mode)

; move text
(require 'move-text)
(move-text-default-bindings)

; to set default font
; (set-frame-font "{font name} {font-size}" nil t)

; line numbers
(global-display-line-numbers-mode t)
(column-number-mode t)
(setq display-line-numbers-type 'relative)

(global-hl-line-mode t)

(cua-mode t)

; buffer completion
(ido-mode t)
(ido-everywhere t)

(add-to-list 'write-file-functions 'delete-trailing-whitespace)

; supposedly insert spaces when pressing tab
(setq indent-tabs-mode nil
      tab-width 4)

(load-file custom-file)
