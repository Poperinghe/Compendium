
;; THEMEING
(setq doom-theme 'kaolin-dark)
(set-face-attribute 'default nil :font "Mononoki Nerd Font Mono" :height 180)
(setq display-line-numbers-type 'relative)
(setq fill-column 80)
(global-display-fill-column-indicator-mode)
(global-display-line-numbers-mode)

(when (bound-and-true-p evil-mode)
  (define-key evil-normal-state-map (kbd "/") 'swiper))

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be sekljt before org loads!
(setq org-directory "~/Compendium/")
(setq org-agenda-files '("~/Compendium/tasks.org"))
(map! :map evil-motion-state-map "C-w h" #'+evil/window-move-left)

(use-package ivy
  :diminish
  :bind (:map ivy-minibuffer-map
         ;; ("TAB" . ivy-alt-done)
         ;; ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line))
         ;; :map ivy-switch-buffer-map
         ;; ("C-k" . ivy-previous-line)
         ;; ("C-l" . ivy-done)
         ;; ("C-d" . ivy-switch-buffer-kill)
         ;; :map ivy-reverse-i-search-map
         ;; ("C-k" . ivy-previous-line)
         ;; ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))

(map! :leader "d" #'dired-jump)
(map! :leader "w h" #'split-window-below)


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
