;;; automata-theme.el --- An extra refined color theme for Emacs, based on NieR:Automata. -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Michel T. Soares a.k.a. tichelmorres

;; Author: Michel T. Soares <qualquercoisahhhh@gmail.com>
;; URL: http://github.com/tichelmorres/automata-theme
;; Version: 0.1

;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;;; Commentary:
;;
;; automata-theme.el is a color theme for Emacs inspired by the visual
;; identity of NieR:Automata, the 2017 action RPG directed by YOKO TARO
;; and developed by PlatinumGames.
;;
;; "automata" refers to the YoRHa combat units built to wage war on
;; behalf of a mankind that may no longer exist, questioning their own
;; purpose and consciousness along the way. The theme borrows that name
;; as a homage to the quiet melancholy and discipline that define the
;; game's artistic direction.
;;
;; NieR:Automata's UI and color identity were crafted by Hisayoshi Kijima,
;; who served as both UI and mecha designer on the project. Kijima described
;; his guiding concept as something "systematic and sterile, but also
;; beautiful", achieved with a warm beige palette, deliberately flat, with
;; color reserved for moments that demand it. This theme would not exist
;; without that vision.

(deftheme automata
  "An extra refined color theme for Emacs, based on NieR:Automata.")

(let (
      (automata-light-white      "#ffffff")
      (automata-dark-white       "#927e59")

      (automata-red              "#9d0006")

      (automata-green            "#79740e")

      (automata-yellow           "#b57614")

      (automata-blue             "#076678")

      (automata-light-magenta    "#c378a7")
      (automata-dark-magenta     "#8f3f71")

      (automata-teal             "#427b58")

      (automata-light-dimm       "#565f73")
      (automata-dark-dimm        "#303540")

      (automata-light-gray       "#504945")
      (automata-dark-gray        "#282828")

      (automata-light-brown      "#b3ad91")
      (automata-dark-brown       "#453d41")

      (automata-light-black      "#181818")
      (automata-dark-black       "#000000")

      (automata-background       "#c2bda6")
      (automata-foreground       "#48463d")
      )

  (custom-theme-set-variables
   'automata
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'automata

   ;; Agda2
   `(agda2-highlight-datatype-face              ((t  (     :foreground ,automata-dark-magenta))))
   `(agda2-highlight-primitive-type-face        ((t  (     :foreground ,automata-dark-magenta))))
   `(agda2-highlight-function-face              ((t  (     :foreground ,automata-blue        ))))
   `(agda2-highlight-keyword-face               ((t ,(list :foreground  automata-red :bold t ))))
   `(agda2-highlight-inductive-constructor-face ((t  (     :foreground ,automata-yellow      ))))
   `(agda2-highlight-number-face                ((t  (     :foreground ,automata-teal        ))))

   ;; AUCTeX
   `(font-latex-bold-face         ((t  (     :foreground ,automata-dark-magenta :bold   t))))
   `(font-latex-italic-face       ((t  (     :foreground ,automata-dark-magenta :italic t))))
   `(font-latex-math-face         ((t  (     :foreground ,automata-yellow                ))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground  automata-blue         :bold   t))))
   `(font-latex-slide-title-face  ((t  (     :foreground ,automata-blue                  ))))
   `(font-latex-string-face       ((t  (     :foreground ,automata-yellow                ))))
   `(font-latex-warning-face      ((t  (     :foreground ,automata-light-magenta         ))))

   ;; Basic Coloring (or Uncategorized)
   `(border              ((t ,(list :background  automata-light-black :foreground automata-dark-brown           ))))
   `(cursor              ((t  (     :background ,automata-red                                                   ))))
   `(default             ((t ,(list :foreground  automata-foreground  :background automata-background           ))))
   `(fringe              ((t ,(list :background  nil                  :foreground automata-dark-brown           ))))
   `(vertical-border     ((t ,(list :foreground  automata-dark-brown                                            ))))
   `(link                ((t  (     :foreground ,automata-blue        :underline t                              ))))
   `(link-visited        ((t  (     :foreground ,automata-teal        :underline t                              ))))
   `(match               ((t  (     :background ,automata-light-gray                                            ))))
   `(shadow              ((t  (     :foreground ,automata-light-gray                                            ))))
   `(minibuffer-prompt   ((t  (     :foreground ,automata-blue                                                  ))))
   `(region              ((t  (     :background ,automata-light-brown :foreground nil                           ))))
   `(secondary-selection ((t ,(list :background  automata-light-brown :foreground nil                           ))))
   `(trailing-whitespace ((t ,(list :foreground  automata-dark-black  :background automata-light-magenta        ))))
   `(tooltip             ((t ,(list :background  automata-light-gray  :foreground automata-light-white          ))))
   `(warning             ((t  (     :foreground ,automata-light-magenta                                         ))))
   `(header-line         ((t  (     :background ,automata-dark-gray   :foreground ,automata-light-white :box nil))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,automata-light-magenta))))

   ;; Compilation
   `(compilation-info           ((t ,(list :foreground  automata-yellow                      :inherit 'unspecified))))
   `(compilation-warning        ((t ,(list :foreground  automata-green         :bold t       :inherit 'unspecified))))
   `(compilation-error          ((t  (     :foreground ,automata-light-magenta                                    ))))
   `(compilation-mode-line-fail ((t ,(list :foreground  automata-light-magenta :weight 'bold :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground  automata-yellow        :weight 'bold :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,automata-yellow))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground automata-light-magenta :background nil))))
   `(diff-added   ((t ,(list :foreground automata-yellow        :background nil))))

   ;; Dired
   `(dired-directory ((t  (     :foreground ,automata-blue         :weight bold         ))))
   `(dired-ignored   ((t ,(list :foreground  automata-dark-magenta :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,automata-blue :weight bold))))
   `(ebrowse-progress   ((t (:background ,automata-blue             ))))

   ;; Egg
   `(egg-branch           ((t (:foreground  ,automata-red          ))))
   `(egg-branch-mono      ((t (:foreground  ,automata-red          ))))
   `(egg-diff-add         ((t (:foreground  ,automata-yellow       ))))
   `(egg-diff-del         ((t (:foreground  ,automata-light-magenta))))
   `(egg-diff-file-header ((t (:foreground  ,automata-teal         ))))
   `(egg-help-header-1    ((t (:foreground  ,automata-red          ))))
   `(egg-help-header-2    ((t (:foreground  ,automata-blue         ))))
   `(egg-log-HEAD-name    ((t (:box (:color ,automata-foreground   )))))
   `(egg-reflog-mono      ((t (:foreground  ,automata-light-dimm   ))))
   `(egg-section-title    ((t (:foreground  ,automata-red          ))))
   `(egg-text-base        ((t (:foreground  ,automata-foreground   ))))
   `(egg-term             ((t (:foreground  ,automata-red          ))))

   ;; ERC
   `(erc-notice-face            ((t (:foreground ,automata-green                          ))))
   `(erc-input-face             ((t (:foreground ,automata-foreground                     ))))
   `(erc-default-face           ((t (:inherit    'default                                 ))))
   `(erc-direct-msg-face        ((t (:foreground ,automata-dark-magenta                   ))))
   `(erc-error-face             ((t (:foreground ,automata-light-magenta                  ))))
   `(erc-header-line            ((t (:inherit    'header-line                             ))))
   `(erc-nick-msg-face          ((t (:foreground ,automata-dark-magenta                   ))))
   `(erc-nick-prefix-face       ((t (:inherit    'erc-nick-default-face                   ))))
   `(erc-my-nick-prefix-face    ((t (:inherit    'erc-my-nick-face                        ))))
   `(erc-timestamp-face         ((t (:foreground ,automata-blue       :bold t             ))))
   `(erc-my-nick-face           ((t (:foreground ,automata-red        :bold t             ))))
   `(erc-current-nick-face      ((t (:foreground ,automata-green      :bold t             ))))
   `(erc-prompt-face            ((t (:foreground ,automata-red        :bold t             ))))
   `(erc-action-face            ((t (                                 :bold t             ))))
   `(erc-command-indicator-face ((t (                                 :bold t             ))))
   `(erc-nick-default-face      ((t (                                 :bold t             ))))
   `(erc-button                 ((t (                                 :bold t :underline t))))

   ;; EShell
   `(eshell-ls-backup     ((t (:foreground ,automata-dark-magenta))))
   `(eshell-ls-directory  ((t (:foreground ,automata-blue        ))))
   `(eshell-ls-executable ((t (:foreground ,automata-yellow      ))))
   `(eshell-ls-symlink    ((t (:foreground ,automata-red         ))))

   ;; Font Lock
   `(font-lock-builtin-face           ((t (:foreground ,automata-red          ))))
   `(font-lock-comment-face           ((t (:foreground ,automata-dark-white   ))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,automata-dark-white   ))))
   `(font-lock-constant-face          ((t (:foreground ,automata-dark-magenta ))))
   `(font-lock-doc-face               ((t (:foreground ,automata-yellow       ))))
   `(font-lock-doc-string-face        ((t (:foreground ,automata-yellow       ))))
   `(font-lock-function-name-face     ((t (:foreground ,automata-blue         ))))
   `(font-lock-keyword-face           ((t (:foreground ,automata-red :bold t  ))))
   `(font-lock-preprocessor-face      ((t (:foreground ,automata-dark-magenta ))))
   `(font-lock-reference-face         ((t (:foreground ,automata-dark-magenta ))))
   `(font-lock-string-face            ((t (:foreground ,automata-yellow       ))))
   `(font-lock-type-face              ((t (:foreground ,automata-dark-magenta ))))
   `(font-lock-variable-name-face     ((t (:foreground ,automata-blue         ))))
   `(font-lock-warning-face           ((t (:foreground ,automata-light-magenta))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave                     )))
       (:underline (:style wave :color ,automata-light-magenta)
                   :foreground          unspecified
                   :background          unspecified
                   :inherit             unspecified           ))
      (t (         :foreground         ,automata-light-magenta
                   :weight bold :underline t                  ))))

   `(flymake-warnline
     ((((supports :underline (:style wave                      )))
       (:underline (:style wave :color ,automata-red           )
                   :foreground          unspecified
                   :background          unspecified
                   :inherit             unspecified            ))
       (t (        :foreground         ,automata-red
                   :weight bold :underline t                   ))))

   `(flymake-infoline
     ((((supports :underline (:style wave                      )))
       (:underline (:style wave :color ,automata-yellow        )
                   :foreground          unspecified
                   :background          unspecified
                   :inherit             unspecified            ))
       (t (        :foreground         ,automata-yellow 
                   :weight bold :underline t                   ))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave                          )))
       (:underline (:style wave :color      ,automata-light-magenta)
                    :inherit                 unspecified           ))
       (t (         :foreground             ,automata-light-magenta
                    :weight bold :underline t                      ))))

   `(flyspell-duplicate
     ((((supports :underline (:style wave                          )))
       (:underline (:style wave :color ,automata-red               )
                    :inherit            unspecified                ))
       (t (         :foreground        ,automata-red
                    :weight bold :underline t                      ))))

   ;; Helm
   `(helm-candidate-number   ((t ,(list :background  automata-dark-brown :foreground automata-red :bold t       ))))
   `(helm-ff-directory       ((t ,(list :foreground  automata-blue       :background automata-background :bold t))))
   `(helm-ff-executable      ((t  (     :foreground ,automata-yellow                                            ))))
   `(helm-ff-file            ((t  (     :foreground ,automata-foreground :inherit unspecified                   ))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground  automata-background :background  automata-light-magenta    ))))
   `(helm-ff-symlink         ((t  (     :foreground ,automata-red        :bold t                                ))))
   `(helm-selection-line     ((t  (     :background ,automata-dark-gray                                         ))))
   `(helm-selection          ((t  (     :background ,automata-dark-gray  :underline nil                         ))))
   `(helm-source-header      ((t ,(list :foreground  automata-red        :background automata-background
                             :box (list :line-width -1                   :style 'released-button                )))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,automata-red   :bold nil   ))))
   `(ido-only-match  ((t (:foreground ,automata-green :weight bold))))
   `(ido-subdir      ((t (:foreground ,automata-blue  :weight bold))))

   ;; Info
   `(info-xref    ((t (:foreground ,automata-blue))))
   `(info-visited ((t (:foreground ,automata-teal))))

   ;; Jabber
   `(jabber-chat-prompt-foreign    ((t ,(list :foreground  automata-dark-magenta :bold nil))))
   `(jabber-chat-prompt-local      ((t  (     :foreground ,automata-red                   ))))
   `(jabber-chat-prompt-system     ((t  (     :foreground ,automata-yellow                ))))
   `(jabber-rare-time-face         ((t  (     :foreground ,automata-yellow                ))))
   `(jabber-roster-user-online     ((t  (     :foreground ,automata-yellow                ))))
   `(jabber-activity-face          ((t  (     :foreground ,automata-light-magenta         ))))
   `(jabber-activity-personal-face ((t  (     :foreground ,automata-red          :bold t  ))))

   ;; Line Highlighting
   `(highlight                   ((t  (     :background ,automata-dark-gray :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background  automata-dark-gray :foreground nil))))

   ;; Line Numbers
   `(line-number              ((t (:inherit            default     :foreground    ,automata-light-gray
                                   :distant-foreground unspecified
                                   :weight             normal      :slant          unspecified
                                   :underline          unspecified :strike-through unspecified
                                   ))))

   `(line-number-current-line ((t (:inherit            line-number :foreground    ,automata-red
                                   :distant-foreground unspecified
                                   :weight             bold        :slant          unspecified
                                   :underline          unspecified :strike-through unspecified
                                   ))))

   ;; Linum
   `(linum ((t `(list :foreground automata-dark-magenta :background automata-background))))

   ;; Magit
   `(magit-branch                ((t  (     :foreground ,automata-blue                                      ))))
   `(magit-diff-hunk-header      ((t  (     :background ,automata-dark-brown                                ))))
   `(magit-diff-file-header      ((t  (     :background ,automata-light-gray                                ))))
   `(magit-log-sha1              ((t  (     :foreground ,automata-light-magenta                             ))))
   `(magit-log-author            ((t  (     :foreground ,automata-green                                     ))))
   `(magit-log-head-label-remote ((t ,(list :foreground  automata-yellow     :background automata-dark-gray ))))
   `(magit-log-head-label-local  ((t ,(list :foreground  automata-blue       :background automata-dark-gray ))))
   `(magit-log-head-label-tags   ((t ,(list :foreground  automata-red        :background automata-dark-gray ))))
   `(magit-log-head-label-head   ((t ,(list :foreground  automata-foreground :background automata-dark-gray ))))
   `(magit-item-highlight        ((t  (     :background ,automata-dark-gray                                 ))))
   `(magit-tag                   ((t ,(list :foreground  automata-red        :background automata-background))))
   `(magit-blame-heading         ((t ,(list :background  automata-dark-gray  :foreground automata-foreground))))

   ;; Message
   `(message-header-name ((t (:foreground ,automata-yellow))))

   ;; Mode Line
   `(mode-line           ((t ,(list :background automata-dark-gray :foreground automata-light-white))))
   `(mode-line-buffer-id ((t ,(list :background automata-dark-gray :foreground automata-light-white))))
   `(mode-line-inactive  ((t ,(list :background automata-dark-gray :foreground automata-dark-white ))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,automata-blue))))

   ;; Org Mode
   `(org-agenda-structure  ((t (:foreground ,automata-blue                                 ))))
   `(org-column            ((t (:background ,automata-light-black                          ))))
   `(org-column-title      ((t (:background ,automata-light-black :underline t :weight bold))))
   `(org-done              ((t (:foreground ,automata-yellow                               ))))
   `(org-todo              ((t (:foreground ,automata-dark-magenta                         ))))
   `(org-upcoming-deadline ((t (:foreground ,automata-red                                  ))))

   ;; Search
   `(isearch                     ((t ,(list :foreground automata-dark-black :background automata-light-white  ))))
   `(isearch-fail                ((t ,(list :foreground automata-dark-black :background automata-light-magenta))))
   `(isearch-lazy-highlight-face ((t ,(list :foreground automata-blue       :background automata-light-dimm   ))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,automata-light-magenta))))

   ;; Show Paren
   `(show-paren-match         ((t (:background ,automata-dark-white  ))))
   `(show-paren-match-face    ((t (:inherit    'show-paren-match     ))))
   `(show-paren-mismatch      ((t (:background ,automata-dark-magenta))))
   `(show-paren-mismatch-face ((t (:background ,automata-dark-magenta))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,automata-light-magenta))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,automata-red))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground automata-blue :weight 'bold))))
   `(speedbar-file-face      ((t  (     :foreground ,automata-foreground       ))))
   `(speedbar-highlight-face ((t  (     :background ,automata-dark-gray        ))))
   `(speedbar-selected-face  ((t  (     :foreground ,automata-light-magenta    ))))
   `(speedbar-tag-face       ((t  (     :foreground ,automata-red              ))))

   ;; Which Function
   `(which-func ((t (:foreground ,automata-teal))))

   ;; Whitespace
   `(whitespace-space            ((t ,(list :background automata-background    :foreground automata-dark-gray    ))))
   `(whitespace-tab              ((t ,(list :background automata-background    :foreground automata-dark-gray    ))))
   `(whitespace-hspace           ((t ,(list :background automata-background    :foreground automata-dark-brown   ))))
   `(whitespace-line             ((t ,(list :background automata-dark-brown    :foreground automata-light-magenta))))
   `(whitespace-newline          ((t ,(list :background automata-background    :foreground automata-dark-brown   ))))
   `(whitespace-trailing         ((t ,(list :background automata-dark-brown    :foreground automata-blue         ))))
   `(whitespace-empty            ((t ,(list :background automata-light-magenta :foreground automata-light-magenta))))
   `(whitespace-indentation      ((t ,(list :background automata-light-white   :foreground automata-red          ))))
   `(whitespace-space-after-tab  ((t ,(list :background automata-light-white   :foreground automata-blue         ))))
   `(whitespace-space-before-tab ((t ,(list :background automata-green         :foreground automata-green        ))))

   ;; Tab-bar
   `(tab-bar              ((t (:background ,automata-dark-gray :foreground ,automata-light-gray      ))))
   `(tab-bar-tab          ((t (:background  nil                :foreground ,automata-red :weight bold))))
   `(tab-bar-tab-inactive ((t (:background  nil                                                      ))))

   ;; Vterm / Ansi-term
   `(term-color-black   ((t (:foreground ,automata-light-brown  :background ,automata-light-gray  ))))
   `(term-color-red     ((t (:foreground ,automata-red          :background ,automata-dark-magenta))))
   `(term-color-green   ((t (:foreground ,automata-green        :background ,automata-yellow      ))))
   `(term-color-blue    ((t (:foreground ,automata-blue         :background ,automata-blue        ))))
   `(term-color-yellow  ((t (:foreground ,automata-yellow       :background ,automata-red         ))))
   `(term-color-magenta ((t (:foreground ,automata-teal         :background ,automata-teal        ))))
   `(term-color-cyan    ((t (:foreground ,automata-dark-magenta :background ,automata-dark-magenta))))
   `(term-color-white   ((t (:foreground ,automata-foreground   :background ,automata-light-white ))))

   ;; Company-mode
   `(company-tooltip                      ((t (:foreground ,automata-foreground :background ,automata-dark-gray  ))))
   `(company-tooltip-annotation           ((t (:foreground ,automata-green      :background ,automata-dark-gray  ))))
   `(company-tooltip-annotation-selection ((t (:foreground ,automata-green      :background ,automata-light-black))))
   `(company-tooltip-selection            ((t (:foreground ,automata-foreground :background ,automata-light-black))))
   `(company-tooltip-mouse                ((t (:background ,automata-light-black                                 ))))
   `(company-tooltip-common               ((t (:foreground ,automata-yellow                                      ))))
   `(company-tooltip-common-selection     ((t (:foreground ,automata-yellow                                      ))))
   `(company-scrollbar-fg                 ((t (:background ,automata-light-black                                 ))))
   `(company-scrollbar-bg                 ((t (:background ,automata-dark-brown                                  ))))
   `(company-preview                      ((t (:background ,automata-yellow                                      ))))
   `(company-preview-common               ((t (:foreground ,automata-yellow     :background ,automata-light-black))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,automata-dark-dimm))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,automata-red         ))))
   `(orderless-match-face-1 ((t (:foreground ,automata-yellow      ))))
   `(orderless-match-face-2 ((t (:foreground ,automata-green       ))))
   `(orderless-match-face-3 ((t (:foreground ,automata-dark-magenta))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'automata)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'colorful-mode) (colorful-mode +1))
;; End:
;;; automata-theme.el ends here.
