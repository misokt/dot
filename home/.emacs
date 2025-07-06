(setq custom-file "~/.emacs.custom.el")

(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      backup-by-copying t
      version-control t
      kept-new-versions 6
      kept-old-versions 3
      delete-old-versions t)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; start emacs with `--maximized`
; (setq default-frame-alist '((fullscreen . maximized)))

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
; (blink-cursor-mode 0)
(setq inhibit-startup-screen t)

(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

(cua-mode t)
(global-hl-line-mode t)

(setq whitespace-style '(face trailing tabs spaces space-mark tab-mark))
;; (global-whitespace-mode t)
(add-hook 'prog-mode-hook 'whitespace-mode)

(defun remove-whitespace-and-tabs()
  "Remove whitespace and tabs from entire buffer"
  (interactive)
  (delete-trailing-whitespace)
  (untabify (point-min) (point-max)))
(add-hook 'before-save-hook 'remove-whitespace-and-tabs)

(global-set-key (kbd "C-S-d") 'duplicate-line)

;; Opens the buffer list in current window
;; (global-set-key (kbd "C-x C-b") 'buffer-menu)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Quick switch between two recently used buffers
(global-set-key (kbd "M-o") 'mode-line-other-buffer)

; middle click pastes where cursor is; ignores where the mouse pointer is
(setq mouse-yank-at-point t)

;; show packages from melpa too
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;;; company
(require 'company)
(global-company-mode)
(setq company-dabbrev-downcase nil)

;;; move text
(require 'move-text)
(move-text-default-bindings)

;;; set default font
;; (set-frame-font "{font name} {font-size}" nil t)
(set-frame-font "Iosevka Fixed 16" nil t)

;; line numbers
(global-display-line-numbers-mode t)
(column-number-mode t)
(setq display-line-numbers-type 'relative)

;; buffer completion
(ido-mode t)
(ido-everywhere t)

;;; smex
(require 'smex)
(global-set-key (kbd "M-x") 'smex)
; old M-x
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;; ido-completing-read+
;; completion for other areas too
(require 'ido-completing-read+)
(ido-ubiquitous-mode 1)

;;; multiple-cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-S-c C-<") 'mc/mark-all-like-this)

;; auto insert matching closing delimiters
(electric-pair-mode t)

;; C indent 4 spaces
(setq-default c-basic-offset 4)

(load-file custom-file)
