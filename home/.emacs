(setq custom-file "~/.emacs.custom.el")

(column-number-mode 1)
(global-display-line-numbers-mode 1)
(display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

(cua-mode 1)

(ido-mode 1)
(ido-everywhere 1)

(load-file custom-file)
