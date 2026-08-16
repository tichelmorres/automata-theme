;;; automata-theme.el --- An extra refined color theme for Emacs, based on NieR:Automata. -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Michel T. Soares a.k.a. tichelmorres

;; Author: Michel T. Soares <qualquercoisahhhh@gmail.com>
;; URL: http://github.com/tichelmorres/automata-theme
;; Version: 0.4

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
   '(frame-brackground-mode (quote light)))

  (custom-theme-set-faces
   'automata

   ;; Basic Coloring
   `(border              ((t (:background ,automata-light-black   :foreground ,automata-dark-brown           ))))
   `(cursor              ((t (:background ,automata-red                                                      ))))
   `(default             ((t (:foreground ,automata-foreground    :background ,automata-background           ))))
   `(fringe              ((t (:background  unspecified            :foreground ,automata-dark-brown           ))))
   `(vertical-border     ((t (:foreground ,automata-dark-brown                                               ))))
   `(link                ((t (:foreground ,automata-blue          :underline   t                             ))))
   `(link-visited        ((t (:foreground ,automata-teal          :underline   t                             ))))
   `(match               ((t (:background ,automata-light-gray                                               ))))
   `(shadow              ((t (:foreground ,automata-light-gray                                               ))))
   `(minibuffer-prompt   ((t (:foreground ,automata-blue                                                     ))))
   `(region              ((t (:background ,automata-light-brown   :foreground  unspecified                   ))))
   `(secondary-selection ((t (:background ,automata-light-brown   :foreground  unspecified                   ))))
   `(trailing-whitespace ((t (:foreground ,automata-dark-black    :background ,automata-light-magenta        ))))
   `(tooltip             ((t (:background ,automata-light-gray    :foreground ,automata-light-white          ))))
   `(warning             ((t (:foreground ,automata-light-magenta :weight      bold                          ))))
   `(header-line         ((t (:background ,automata-dark-gray     :foreground ,automata-light-white :box nil ))))

   ;; Compilation
   `(compilation-info           ((t (:foreground ,automata-yellow                     :inherit unspecified ))))
   `(compilation-warning        ((t (:foreground ,automata-green         :bold   t    :inherit unspecified ))))
   `(compilation-error          ((t (:foreground ,automata-light-magenta                                   ))))
   `(compilation-mode-line-fail ((t (:foreground ,automata-light-magenta :weight bold :inherit unspecified ))))
   `(compilation-mode-line-exit ((t (:foreground ,automata-yellow        :weight bold :inherit unspecified ))))

   ;; Diff
   `(diff-removed ((t (:foreground ,automata-light-magenta :background unspecified ))))
   `(diff-added   ((t (:foreground ,automata-yellow        :background unspecified ))))

   ;; Dired
   `(dired-directory      ((t (:foreground ,automata-blue         :weight      bold                      ))))
   `(dired-ignored        ((t (:foreground ,automata-dark-magenta :inherit     unspecified               ))))
   `(dired-broken-symlink ((t (:foreground ,automata-foreground   :background ,automata-red :weight bold ))))

   ;; EWW
   `(eww-valid-certificate ((t (:foreground ,automata-foreground :background ,automata-dark-gray :bold t ))))

   ;; ERC
   `(erc-notice-face            ((t (:foreground ,automata-green                ))))
   `(erc-input-face             ((t (:foreground ,automata-foreground           ))))
   `(erc-default-face           ((t (:inherit     default                       ))))
   `(erc-direct-msg-face        ((t (:foreground ,automata-dark-magenta         ))))
   `(erc-error-face             ((t (:foreground ,automata-light-magenta        ))))
   `(erc-header-line            ((t (:inherit     header-line                   ))))
   `(erc-nick-msg-face          ((t (:foreground ,automata-dark-magenta         ))))
   `(erc-nick-prefix-face       ((t (:inherit     erc-nick-default-face         ))))
   `(erc-my-nick-prefix-face    ((t (:inherit     erc-my-nick-face              ))))
   `(erc-timestamp-face         ((t (:foreground ,automata-blue         :bold t ))))
   `(erc-my-nick-face           ((t (:foreground ,automata-red          :bold t ))))
   `(erc-current-nick-face      ((t (:foreground ,automata-green        :bold t ))))
   `(erc-prompt-face            ((t (:foreground ,automata-red          :bold t ))))

   `(erc-action-face            ((t (:bold t              ))))
   `(erc-command-indicator-face ((t (:bold t              ))))
   `(erc-button                 ((t (:bold t :underline t ))))

   ;; EShell
   `(eshell-ls-backup     ((t (:foreground ,automata-dark-magenta ))))
   `(eshell-ls-directory  ((t (:foreground ,automata-blue         ))))
   `(eshell-ls-executable ((t (:foreground ,automata-yellow       ))))
   `(eshell-ls-symlink    ((t (:foreground ,automata-red          ))))

   ;; Font Lock
   `(font-lock-builtin-face           ((t (:foreground ,automata-red                  ))))
   `(font-lock-comment-face           ((t (:foreground ,automata-dark-white           ))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,automata-dark-white           ))))
   `(font-lock-constant-face          ((t (:foreground ,automata-dark-magenta         ))))
   `(font-lock-doc-face               ((t (:foreground ,automata-yellow               ))))
   `(font-lock-doc-string-face        ((t (:foreground ,automata-yellow               ))))
   `(font-lock-function-name-face     ((t (:foreground ,automata-blue                 ))))
   `(font-lock-keyword-face           ((t (:foreground ,automata-red          :bold t ))))
   `(font-lock-preprocessor-face      ((t (:foreground ,automata-dark-magenta         ))))
   `(font-lock-reference-face         ((t (:foreground ,automata-dark-magenta         ))))
   `(font-lock-string-face            ((t (:foreground ,automata-yellow               ))))
   `(font-lock-type-face              ((t (:foreground ,automata-dark-magenta         ))))
   `(font-lock-variable-name-face     ((t (:foreground ,automata-blue                 ))))
   `(font-lock-warning-face           ((t (:foreground ,automata-light-magenta        ))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,automata-red   :bold   nil  ))))
   `(ido-only-match  ((t (:foreground ,automata-green :weight bold ))))
   `(ido-subdir      ((t (:foreground ,automata-blue  :weight bold ))))

   ;; Info
   `(info-xref    ((t (:foreground ,automata-blue ))))
   `(info-visited ((t (:foreground ,automata-teal ))))

   ;; Line Highlighting
   `(highlight                   ((t (:background ,automata-red       :foreground ,automata-background ))))
   `(highlight-current-line-face ((t (:background ,automata-dark-gray :foreground  nil                 ))))

   ;; Line Numbers
   `(line-number              ((t (:inherit            default     :foreground     ,automata-light-gray
                                   :distant-foreground unspecified
                                   :weight             normal      :slant           unspecified
                                   :underline          unspecified :strike-through  unspecified
                                   ))))

   `(line-number-current-line ((t (:inherit            line-number :foreground     ,automata-red
                                   :distant-foreground unspecified
                                   :weight             bold        :slant           unspecified
                                   :underline          unspecified :strike-through  unspecified
                                   ))))

   ;; Message
   `(message-header-name ((t (:foreground ,automata-yellow ))))

   ;; Mode Line
   `(mode-line           ((t (:background ,automata-dark-gray :foreground ,automata-light-white ))))
   `(mode-line-buffer-id ((t (:background ,automata-dark-gray :foreground ,automata-light-white ))))
   `(mode-line-inactive  ((t (:background ,automata-dark-gray :foreground ,automata-dark-white  ))))

   ;; Org Mode
   `(org-agenda-structure  ((t (:foreground ,automata-blue                                  ))))
   `(org-column-title      ((t (:background ,automata-light-black :underline t :weight bold ))))
   `(org-column            ((t (:background ,automata-light-black                           ))))
   `(org-done              ((t (:foreground ,automata-yellow                                ))))
   `(org-todo              ((t (:foreground ,automata-dark-magenta                          ))))
   `(org-upcoming-deadline ((t (:foreground ,automata-red                                   ))))

   ;; Search
   `(isearch        ((t (:foreground ,automata-dark-black  :background ,automata-light-white   ))))
   `(isearch-fail   ((t (:foreground ,automata-dark-black  :background ,automata-light-magenta ))))
   `(lazy-highlight ((t (:foreground ,automata-light-white :background ,automata-dark-brown    ))))

   ;; Show Paren
   `(show-paren-match         ((t (:background ,automata-dark-white   ))))
   `(show-paren-match-face    ((t (:inherit     show-paren-match      ))))
   `(show-paren-mismatch      ((t (:background ,automata-dark-magenta ))))
   `(show-paren-mismatch-face ((t (:inherit     show-paren-mismatch   ))))

   ;; Whitespace
   `(whitespace-space            ((t (:background ,automata-background    :foreground ,automata-dark-gray     ))))
   `(whitespace-tab              ((t (:background ,automata-background    :foreground ,automata-dark-gray     ))))
   `(whitespace-hspace           ((t (:background ,automata-background    :foreground ,automata-dark-brown    ))))
   `(whitespace-line             ((t (:background ,automata-dark-brown    :foreground ,automata-light-magenta ))))
   `(whitespace-newline          ((t (:background ,automata-background    :foreground ,automata-dark-brown    ))))
   `(whitespace-trailing         ((t (:background ,automata-dark-brown    :foreground ,automata-blue          ))))
   `(whitespace-empty            ((t (:background ,automata-light-magenta :foreground ,automata-light-magenta ))))
   `(whitespace-indentation      ((t (:background ,automata-light-white   :foreground ,automata-red           ))))
   `(whitespace-space-after-tab  ((t (:background ,automata-light-white   :foreground ,automata-blue          ))))
   `(whitespace-space-before-tab ((t (:background ,automata-green         :foreground ,automata-green         ))))

   ;; Term / Ansi-term
   `(term-color-black   ((t (:foreground ,automata-light-brown  ))))
   `(term-color-red     ((t (:foreground ,automata-red          ))))
   `(term-color-green   ((t (:foreground ,automata-green        ))))
   `(term-color-blue    ((t (:foreground ,automata-blue         ))))
   `(term-color-yellow  ((t (:foreground ,automata-yellow       ))))
   `(term-color-magenta ((t (:foreground ,automata-teal         ))))
   `(term-color-cyan    ((t (:foreground ,automata-dark-magenta ))))
   `(term-color-white   ((t (:foreground ,automata-foreground   ))))

   ;; Vterm
   `(vterm-color-black   ((t (:foreground ,automata-light-brown  ))))
   `(vterm-color-red     ((t (:foreground ,automata-red          ))))
   `(vterm-color-green   ((t (:foreground ,automata-green        ))))
   `(vterm-color-blue    ((t (:foreground ,automata-blue         ))))
   `(vterm-color-yellow  ((t (:foreground ,automata-yellow       ))))
   `(vterm-color-magenta ((t (:foreground ,automata-teal         ))))
   `(vterm-color-cyan    ((t (:foreground ,automata-dark-magenta ))))
   `(vterm-color-white   ((t (:foreground ,automata-foreground   ))))
   ))

;; EWW header line: bold the title + ": " prefix
(unless (advice-member-p 'konosuba--eww-bold-title 'eww-update-header-line-format)
  (advice-add 'eww-update-header-line-format :after
              (defun konosuba--eww-bold-title ()
                (when (stringp header-line-format)
                  (let* ((url (or (plist-get eww-data :url) ""))
                         (len (length header-line-format))
                         (cut (- len (length url))))
                    (when (and (> cut 0)
                               (string= (substring header-line-format cut) url))
                      (add-face-text-property 0 cut bold t header-line-format)))))))

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
