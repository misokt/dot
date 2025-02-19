(setq custom-file "~/.emacs.custom.el")

; to set default font
; (set-frame-font "{font name} {font-size}" nil t)

; line numbers
(column-number-mode 1)
(display-line-numbers-mode 1)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

(cua-mode 1)

; buffer completion
(ido-mode 1)
(ido-everywhere 1)

(load-file custom-file)
