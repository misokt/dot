;;; jr-dark-theme.el --- Jr Dark color theme for Emacs.

(deftheme jr-dark
  "Jr Dark color theme for Emacs")

(let ((jr-dark-fg        "#e4e4ef")
      (jr-dark-fg+1      "#f4f4ff")
      (jr-dark-fg+2      "#f5f5f5")
      (jr-dark-white     "#ffffff")
      (jr-dark-black     "#000000")
      (jr-dark-bg-1      "#101010")
      (jr-dark-bg        "#181818")
      (jr-dark-bg+1      "#282828")
      (jr-dark-bg+2      "#453d41")
      (jr-dark-bg+3      "#484848")
      (jr-dark-bg+4      "#52494e")
      (jr-dark-red-1     "#c73c3f")
      (jr-dark-red       "#f43841")
      (jr-dark-red+1     "#ff4f58")
      (jr-dark-green     "#73c936")
      (jr-dark-yellow    "#ffdd33")
      (jr-dark-brown     "#cc8c3c")
      (jr-dark-quartz    "#95a99f")
      (jr-dark-niagara-2 "#303540")
      (jr-dark-niagara-1 "#565f73")
      (jr-dark-niagara   "#96a6c8")
      (jr-dark-wisteria  "#9e95c7")
      )
  (custom-theme-set-variables
   'jr-dark
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'jr-dark

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,jr-dark-quartz))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,jr-dark-quartz))))
   `(agda2-highlight-function-face ((t (:foreground ,jr-dark-niagara))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground jr-dark-yellow
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,jr-dark-green))))
   `(agda2-highlight-number-face ((t (:foreground ,jr-dark-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,jr-dark-quartz :bold t))))
   `(font-latex-italic-face ((t (:foreground ,jr-dark-quartz :italic t))))
   `(font-latex-math-face ((t (:foreground ,jr-dark-green))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground jr-dark-niagara
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,jr-dark-niagara))))
   `(font-latex-string-face ((t (:foreground ,jr-dark-green))))
   `(font-latex-warning-face ((t (:foreground ,jr-dark-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background jr-dark-bg-1
                       :foreground jr-dark-bg+2))))
   `(cursor ((t (:background ,jr-dark-yellow))))
   `(default ((t ,(list :foreground jr-dark-fg
                        :background jr-dark-bg))))
   `(fringe ((t ,(list :background nil
                       :foreground jr-dark-bg+2))))
   `(vertical-border ((t ,(list :foreground jr-dark-bg+2))))
   `(link ((t (:foreground ,jr-dark-niagara :underline t))))
   `(link-visited ((t (:foreground ,jr-dark-wisteria :underline t))))
   `(match ((t (:background ,jr-dark-bg+4))))
   `(shadow ((t (:foreground ,jr-dark-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,jr-dark-niagara))))
   `(region ((t (:background ,jr-dark-bg+3 :foreground nil))))
   `(secondary-selection ((t ,(list :background jr-dark-bg+3
                                    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground jr-dark-black
                                    :background jr-dark-red))))
   `(tooltip ((t ,(list :background jr-dark-bg+4
                        :foreground jr-dark-white))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,jr-dark-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground jr-dark-green
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground jr-dark-brown
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,jr-dark-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground jr-dark-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground jr-dark-green
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,jr-dark-green))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground jr-dark-red+1
                             :background nil))))
   `(diff-added ((t ,(list :foreground jr-dark-green
                           :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,jr-dark-niagara :weight bold))))
   `(dired-ignored ((t ,(list :foreground jr-dark-quartz
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,jr-dark-niagara :weight bold))))
   `(ebrowse-progress ((t (:background ,jr-dark-niagara))))

   ;; Egg
   `(egg-branch ((t (:foreground ,jr-dark-yellow))))
   `(egg-branch-mono ((t (:foreground ,jr-dark-yellow))))
   `(egg-diff-add ((t (:foreground ,jr-dark-green))))
   `(egg-diff-del ((t (:foreground ,jr-dark-red))))
   `(egg-diff-file-header ((t (:foreground ,jr-dark-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,jr-dark-yellow))))
   `(egg-help-header-2 ((t (:foreground ,jr-dark-niagara))))
   `(egg-log-HEAD-name ((t (:box (:color ,jr-dark-fg)))))
   `(egg-reflog-mono ((t (:foreground ,jr-dark-niagara-1))))
   `(egg-section-title ((t (:foreground ,jr-dark-yellow))))
   `(egg-text-base ((t (:foreground ,jr-dark-fg))))
   `(egg-term ((t (:foreground ,jr-dark-yellow))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,jr-dark-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,jr-dark-green))))
   `(erc-input-face ((t (:foreground ,jr-dark-red+1))))
   `(erc-my-nick-face ((t (:foreground ,jr-dark-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,jr-dark-quartz))))
   `(eshell-ls-directory ((t (:foreground ,jr-dark-niagara))))
   `(eshell-ls-executable ((t (:foreground ,jr-dark-green))))
   `(eshell-ls-symlink ((t (:foreground ,jr-dark-yellow))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,jr-dark-yellow))))
   `(font-lock-comment-face ((t (:foreground ,jr-dark-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,jr-dark-brown))))
   `(font-lock-constant-face ((t (:foreground ,jr-dark-quartz))))
   `(font-lock-doc-face ((t (:foreground ,jr-dark-green))))
   `(font-lock-doc-string-face ((t (:foreground ,jr-dark-green))))
   `(font-lock-function-name-face ((t (:foreground ,jr-dark-niagara))))
   `(font-lock-keyword-face ((t (:foreground ,jr-dark-yellow :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,jr-dark-quartz))))
   `(font-lock-reference-face ((t (:foreground ,jr-dark-quartz))))
   `(font-lock-string-face ((t (:foreground ,jr-dark-green))))
   `(font-lock-type-face ((t (:foreground ,jr-dark-quartz))))
   `(font-lock-variable-name-face ((t (:foreground ,jr-dark-fg+1))))
   `(font-lock-warning-face ((t (:foreground ,jr-dark-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,jr-dark-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,jr-dark-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,jr-dark-yellow)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,jr-dark-yellow :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,jr-dark-green)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,jr-dark-green :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,jr-dark-red) :inherit unspecified))
      (t (:foreground ,jr-dark-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,jr-dark-yellow) :inherit unspecified))
      (t (:foreground ,jr-dark-yellow :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background jr-dark-bg+2
                                      :foreground jr-dark-yellow
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground jr-dark-niagara
                                  :background jr-dark-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,jr-dark-green))))
   `(helm-ff-file ((t (:foreground ,jr-dark-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground jr-dark-bg
                                        :background jr-dark-red))))
   `(helm-ff-symlink ((t (:foreground ,jr-dark-yellow :bold t))))
   `(helm-selection-line ((t (:background ,jr-dark-bg+1))))
   `(helm-selection ((t (:background ,jr-dark-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground jr-dark-yellow
                                   :background jr-dark-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,jr-dark-yellow :bold nil))))
   `(ido-only-match ((t (:foreground ,jr-dark-brown :weight bold))))
   `(ido-subdir ((t (:foreground ,jr-dark-niagara :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,jr-dark-niagara))))
   `(info-visited ((t (:foreground ,jr-dark-wisteria))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground jr-dark-quartz
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,jr-dark-yellow))))
   `(jabber-chat-prompt-system ((t (:foreground ,jr-dark-green))))
   `(jabber-rare-time-face ((t (:foreground ,jr-dark-green))))
   `(jabber-roster-user-online ((t (:foreground ,jr-dark-green))))
   `(jabber-activity-face ((t (:foreground ,jr-dark-red))))
   `(jabber-activity-personal-face ((t (:foreground ,jr-dark-yellow :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,jr-dark-bg+1 :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background jr-dark-bg+1
                                            :foreground nil))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,jr-dark-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,jr-dark-yellow))))

   ;; Linum
   `(linum ((t `(list :foreground jr-dark-quartz
                      :background jr-dark-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,jr-dark-niagara))))
   `(magit-diff-hunk-header ((t (:background ,jr-dark-bg+2))))
   `(magit-diff-file-header ((t (:background ,jr-dark-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,jr-dark-red+1))))
   `(magit-log-author ((t (:foreground ,jr-dark-brown))))
   `(magit-log-head-label-remote ((t ,(list :foreground jr-dark-green
                                            :background jr-dark-bg+1))))
   `(magit-log-head-label-local ((t ,(list :foreground jr-dark-niagara
                                           :background jr-dark-bg+1))))
   `(magit-log-head-label-tags ((t ,(list :foreground jr-dark-yellow
                                          :background jr-dark-bg+1))))
   `(magit-log-head-label-head ((t ,(list :foreground jr-dark-fg
                                          :background jr-dark-bg+1))))
   `(magit-item-highlight ((t (:background ,jr-dark-bg+1))))
   `(magit-tag ((t ,(list :foreground jr-dark-yellow
                          :background jr-dark-bg))))
   `(magit-blame-heading ((t ,(list :background jr-dark-bg+1
                                    :foreground jr-dark-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,jr-dark-green))))

   ;; Mode Line
   `(mode-line ((t ,(list :background jr-dark-bg+1
                          :foreground jr-dark-white))))
   `(mode-line-buffer-id ((t ,(list :background jr-dark-bg+1
                                    :foreground jr-dark-white))))
   `(mode-line-inactive ((t ,(list :background jr-dark-bg+1
                                   :foreground jr-dark-quartz))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,jr-dark-niagara))))

   ;; Org Mode
   `(org-agenda-structure ((t (:foreground ,jr-dark-niagara))))
   `(org-column ((t (:background ,jr-dark-bg-1))))
   `(org-column-title ((t (:background ,jr-dark-bg-1 :underline t :weight bold))))
   `(org-done ((t (:foreground ,jr-dark-green))))
   `(org-todo ((t (:foreground ,jr-dark-red-1))))
   `(org-upcoming-deadline ((t (:foreground ,jr-dark-yellow))))

   ;; Search
   `(isearch ((t ,(list :foreground jr-dark-black
                        :background jr-dark-fg+2))))
   `(isearch-fail ((t ,(list :foreground jr-dark-black
                             :background jr-dark-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground jr-dark-fg+1
                                       :background jr-dark-niagara-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,jr-dark-red+1))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,jr-dark-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,jr-dark-red-1))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,jr-dark-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,jr-dark-yellow))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground jr-dark-niagara
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,jr-dark-fg))))
   `(speedbar-highlight-face ((t (:background ,jr-dark-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,jr-dark-red))))
   `(speedbar-tag-face ((t (:foreground ,jr-dark-yellow))))

   ;; Which Function
   `(which-func ((t (:foreground ,jr-dark-wisteria))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background jr-dark-bg
                                 :foreground jr-dark-bg+1))))
   `(whitespace-tab ((t ,(list :background jr-dark-bg
                               :foreground jr-dark-bg+1))))
   `(whitespace-hspace ((t ,(list :background jr-dark-bg
                                  :foreground jr-dark-bg+2))))
   `(whitespace-line ((t ,(list :background jr-dark-bg+2
                                :foreground jr-dark-red+1))))
   `(whitespace-newline ((t ,(list :background jr-dark-bg
                                   :foreground jr-dark-bg+2))))
   `(whitespace-trailing ((t ,(list :background jr-dark-red
                                    :foreground jr-dark-red))))
   `(whitespace-empty ((t ,(list :background jr-dark-yellow
                                 :foreground jr-dark-yellow))))
   `(whitespace-indentation ((t ,(list :background jr-dark-yellow
                                       :foreground jr-dark-red))))
   `(whitespace-space-after-tab ((t ,(list :background jr-dark-yellow
                                           :foreground jr-dark-yellow))))
   `(whitespace-space-before-tab ((t ,(list :background jr-dark-brown
                                            :foreground jr-dark-brown))))

   ;; tab-bar
   `(tab-bar ((t (:background ,jr-dark-bg+1 :foreground ,jr-dark-bg+4))))
   `(tab-bar-tab ((t (:background nil :foreground ,jr-dark-yellow :weight bold))))
   `(tab-bar-tab-inactive ((t (:background nil))))

   ;; vterm / ansi-term
   `(term-color-black ((t (:foreground ,jr-dark-bg+3 :background ,jr-dark-bg+4))))
   `(term-color-red ((t (:foreground ,jr-dark-red-1 :background ,jr-dark-red-1))))
   `(term-color-green ((t (:foreground ,jr-dark-green :background ,jr-dark-green))))
   `(term-color-blue ((t (:foreground ,jr-dark-niagara :background ,jr-dark-niagara))))
   `(term-color-yellow ((t (:foreground ,jr-dark-yellow :background ,jr-dark-yellow))))
   `(term-color-magenta ((t (:foreground ,jr-dark-wisteria :background ,jr-dark-wisteria))))
   `(term-color-cyan ((t (:foreground ,jr-dark-quartz :background ,jr-dark-quartz))))
   `(term-color-white ((t (:foreground ,jr-dark-fg :background ,jr-dark-white))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,jr-dark-fg :background ,jr-dark-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,jr-dark-brown :background ,jr-dark-bg+1))))
   `(company-tooltip-annotation-selection ((t (:foreground ,jr-dark-brown :background ,jr-dark-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,jr-dark-fg :background ,jr-dark-bg-1))))
   `(company-tooltip-mouse ((t (:background ,jr-dark-bg-1))))
   `(company-tooltip-common ((t (:foreground ,jr-dark-green))))
   `(company-tooltip-common-selection ((t (:foreground ,jr-dark-green))))
   `(company-scrollbar-fg ((t (:background ,jr-dark-bg-1))))
   `(company-scrollbar-bg ((t (:background ,jr-dark-bg+2))))
   `(company-preview ((t (:background ,jr-dark-green))))
   `(company-preview-common ((t (:foreground ,jr-dark-green :background ,jr-dark-bg-1))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,jr-dark-niagara-2))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,jr-dark-yellow))))
   `(orderless-match-face-1 ((t (:foreground ,jr-dark-green))))
   `(orderless-match-face-2 ((t (:foreground ,jr-dark-brown))))
   `(orderless-match-face-3 ((t (:foreground ,jr-dark-quartz))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'jr-dark)

;;; jr-dark-theme.el ends here.
