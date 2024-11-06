```lisp
;       _                           _                      _                _
;      | |                         | |                    | |              | |
;   ___| | ___ _ __ ___   ___ _ __ | |_   _ __   ___   ___| |__   __ _ _ __| |
;  / __| |/ _ \ '_ ` _ \ / _ \ '_ \| __| | '_ \ / _ \ / __| '_ \ / _` | '__| __|
; | (__| |  __/ | | | | |  __/ | | | |_ _| |_) | (_) | (__| | | | (_| | |  | |
;  \___|_|\___|_| |_| |_|\___|_| |_|\__(_) .__/ \___/ \___|_| |_|\__,_|_|   \__|
;                                        | |
;                                        |_|
; ~/.emacs                                                   www.clementpoch.art
```

## Vanilla Tweaks

Modifications that work out of the box without any packages. While their functionality is limited these changes are guaranteed to work even when regenerating a config without internet access. Most of the functions and variables used here are built into Emacs. 

### Essential

Brings the look and feel of Vanilla Emacs closer to minimal editors like VIM.

```lisp
(setq initial-buffer-choice "~/.emacs")
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq visible-bell t)
(setq backup-directory-alist '((".*" . "~/Trash")))
```

| `lisp initial-buffer-choice`         | is the default buffer that will be opened on startup.                                                                                                           |
| ------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `display-line-numbers-type relative` | labels each line in the buffer with a number relative to its distance from the cursor rather than from the top of the file.                                     |
| `global-display-line-numbers-mode`   | line numbers will be displayed on all buffers by default.                                                                                                       |
| `menu-bar-mode -1`                   | disables the menu bar (File, Edit, Options, etc...).                                                                                                            |
| `tool-bar-mode -1`                   | disables the tool bar (Copy, Cut, Paste, etc...).                                                                                                               |
| `scroll-bar-mode -1`                 | disables the mouse operable tool bar for buffers longer than the available window height.                                                                       |
| `visible-bell t`                     | adds visual feedback when trying to execute an action that has no effect (like trying to move cursor down at the bottom of a buffer).                           |
| `backup-directory-alist`             | describes where Emacs should place the backup files that it automatically creates instead of placing them in the same directory as the original (ex: `~foo.c`). |
### EPITA Defaults

Pulled from the EPITA PIE default Emacs configuration. Adds a few extremely simple features oriented towards c programming with respect to the EPITA coding style.

```lisp
(setq debug-on-error t vc-follow-symlinks t)
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)
(setq c-basic-offset 4 c-default-style "bsd" fill-column 80)
(setq whitespace-style '(face tabs tab-mark lines-tail trailing))
(global-whitespace-mode)
```
### Vanity
```lisp
(set-face-attribute 'default nil :font "Mononoki Nerd Font Mono" :height 110)
```

| `:font`   | sets the font from the list of system fonts (located in `~/.local/share/fonts/*.tty`). |
| --------- | -------------------------------------------------------------------------------------- |
| `:height` | sets the font size.                                                                    |

## Packages
### Initialization
```lisp
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(package-initialize)
(unless package-archive-contents (package-refresh-contents))
(unless (package-installed-p 'use-package) (pacakge-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)
```

### EVIL Mode
```lisp
(use-package evil
  :init (setq evil-want-keybinding nil)
  :config (evil-mode 1))

(use-package evil-collection
  :after evil
  :config (evil-collection-init))
```

### Themeing
```lisp
(use-package doom-themes
  :config
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-moonlight t)
  (doom-themes-visual-bell-config)) ;; Enable flashing mode-line on errors

(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :config (setq doom-modeline-buffer-file-name-style 'file-name))
```

### IDE

These packages contribute to the overall feeling of an Integrated Development Environment when programming in Emacs. This includes auto-completion of code structures like loops, auto-completion of variables from a language server's symbol table, and various UI additions.
For now these packages were added and configured with the c language in mind and will only work in c projects.

#### LSP Configuration
```lisp
(use-package lsp-mode
  :init (setq lsp-keymap-prefix "C-c l")
  :hook (c-mode . lsp)
  :commands lsp
  :config (setq lsp-completion-enable t))

(use-package lsp-ui
  :commands lsp-ui-mode)

(use-package lsp-ivy
  :commands lsp-ivy-workspace-symbol)
```

#### Better Auto-completion UI
```lisp
(use-package company
  :after lsp-mode
  :hook (lsp-mode . company-mode)
  :bind (:map company-active-map ("<tab>" . company-complete-selection))
  :custom (company-minimum-prefix-length 1) (company-idle-delay 0.0))

(use-package company-box
  :hook (company-mode . company-box-mode))
```

#### Code Snippets
```lisp
(use-package yasnippet
  :config (yas-global-mode 1))

(use-package yasnippet-snippets
  :after yasnippet
  :config (yas-reload-all))
```

### Spellmacs

Remnants of the old times...

```lisp
(defvar-keymap spells
  :doc "frequently used actions"
  "j" #'dired-jump
  "n" #'other-frame
  "d" #'avy-goto-word-1
  "s" #'yas-expand)

(defvar-keymap spells-frames
  :doc "subcategory of spells acting on frames"
  "a" #'make-frame
  "d" #'delete-frame)

(defvar-keymap spells-windows
  :doc "subcategory of spells acting on windows"
  "h" #'split-window-vertically
  "v" #'split-window-horizontally
  "d" #'delete-window)

(keymap-set evil-normal-state-map "SPC" spells)
(keymap-set spells "f" spells-frames)
(keymap-set spells "w" spells-windows)
(keymap-set spells "k" projectile-command-map)

(with-eval-after-load 'dired
  (evil-define-key 'normal dired-mode-map
    "h" 'dired-up-directory
    "l" 'dired-find-file))
```









