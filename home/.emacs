(setq custom-file "~/.emacs.custom.el")

(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
  backup-by-copying t
  version-control t
  kept-new-versions 6
  kept-old-versions 3
  delete-old-versions t
  )

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
(column-number-mode 1)
(display-line-numbers-mode 1)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

; (hl-line-mode 1)
(global-hl-line-mode 1)

(cua-mode 1)

; buffer completion
(ido-mode 1)
(ido-everywhere 1)

(load-file custom-file)
