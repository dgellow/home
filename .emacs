(require 'cl)

;; Custom functions
(add-to-list 'load-path "~/.emacs.d/functions")

;; Packages repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(setq package-enable-at-startup nil)
(package-initialize)

;;--------------------------------------------------------------------
;; Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(setq cursor-type '(bar . 1))

;;--------------------------------------------------------------------
;; Save minibuffer history
(savehist-mode 1)

;;--------------------------------------------------------------------
;; Gmail configuration
(setq smtpmail-stream-type 'ssl)
(setq smtpmail-smtp-server "smtp.gmail.com")
(setq smtpmail-smtp-service 465)

;;--------------------------------------------------------------------
;; Ruby

;; automatic indentation
(add-hook 'ruby-mode-hook (lambda () (local-set-key "\r" 'newline-and-indent)))

;; ruby completion, navigation and documentation lookup
(add-hook 'ruby-mode-hook 'robe-mode)

;; ruby repl in an emacs buffer
(require 'inf-ruby)

;; to insert text automatically after:
;; - a correctly indented "end" when you write "class" or "def".
;; - the right parenthesis when you write a left parenthesis.
;; - an end-quote when you enter a quote.
(require 'ruby-electric)
(add-hook 'ruby-mode-hook (lambda () (ruby-electric-mode t)))

;;--------------------------------------------------------------------
;; Auto-complete
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20130724.1750") 
(require 'auto-complete-config)
(ac-config-default)

;;--------------------------------------------------------------------
;; Emacs Multimedia System
(add-to-list 'load-path "~/.emacs.d/emms/lisp")
(require 'emms-setup)
(emms-standard)
(emms-default-players)

;;--------------------------------------------------------------------
;; Powerline
;;(add-to-list 'load-path "~/.emacs.d/vendor/emacs-powerline")
(require 'powerline)
(powerline-default-theme)
;; (setq powerline-arriow-shape 'arrow)   ;; default
;; (setq powerline-arrow-shape 'curve)   ;; give your mode-line curves
;; (setq powerline-arrow-shape 'arrow14) ;; best for small fonts

;;--------------------------------------------------------------------
;; sr-speedbar (speedbar into a buffer)
(add-to-list 'load-path "~/.emacs.d/vendor/sr-speedbar")
(require 'sr-speedbar)

;;--------------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/elpa")
(require 'rainbow-delimiters)


;;--------------------------------------------------------------------
;; Lines enabling gnuplot-mode

;; move the files gnuplot.el to someplace in your lisp load-path or
;; use a line like
;;  (setq load-path (append (list "/path/to/gnuplot") load-path))

;; these lines enable the use of gnuplot mode
  (autoload 'gnuplot-mode "gnuplot" "gnuplot major mode" t)
  (autoload 'gnuplot-make-buffer "gnuplot" "open a buffer in gnuplot mode" t)

;; this line automatically causes all files with the .gp extension to
;; be loaded into gnuplot mode
  (setq auto-mode-alist (append '(("\\.gp$" . gnuplot-mode)) auto-mode-alist))

;; This line binds the function-9 key so that it opens a buffer into
;; gnuplot mode 
  (global-set-key [(f9)] 'gnuplot-make-buffer)

;; end of line for gnuplot-mode
;;--------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (faceless)))
 '(custom-safe-themes (quote ("00634b398f36147c9b908ef0612e62a14cec021790f7a7d755e7aeff5435ec5f" "078766705446db0045d5fd080d0b56a9419792544b8d2343ebaca7e0146985d9" "1d928fab880d758dce81e6ff8e1176ef7cfdf238e5933dcd565832e10371c9e9" default)))
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(global-rainbow-delimiters-mode t)
 '(linum-format " %7i ")
 '(send-mail-function (quote smtpmail-send-it))
 '(speedbar-show-unknown-files t)
 '(sr-speedbar-right-side nil)
 '(tool-bar-mode nil))

;; 
;; My custom configuration is now is the faceless theme.
;;
;; (custom-set-faces
;;  custom-set-faces was added by Custom.
;;  If you edit it by hand, you could mess it up, so be careful.
;;  Your init file should contain only one such instance.
;;  If there is more than one, they won't work right.
;;  '(default ((t (:inherit nil :stipple nil :background "#202020" :foreground "#cacaca" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "unknown" :family "Droid Sans Mono"))))

;;  '(mode-line ((t (:background "yellow green" :foreground "black"))))
;;  '(mode-line-buffer-id ((t nil)))
;;  '(mode-line-emphasis ((t (:underline t))))

;;  '(powerline-active1 ((t (:inherit mode-line :background "gray21" :foreground "white"))))
;;  '(powerline-active2 ((t (:inherit mode-line :background "gray46"))))
;;  '(powerline-inactive1 ((t (:inherit mode-line-inactive :background "gray20" :foreground "white smoke"))))
;;  '(powerline-inactive2 ((t (:inherit mode-line-inactive :background "gray46"))))

;;  '(rainbow-delimiters-depth-2-face ((t (:foreground "green"))))
;;  '(rainbow-delimiters-depth-3-face ((t (:foreground "cyan"))))
;;  '(rainbow-delimiters-depth-4-face ((t (:foreground "deep sky blue"))))
;;  '(rainbow-delimiters-depth-5-face ((t (:foreground "blue"))))
;;  '(rainbow-delimiters-depth-6-face ((t (:foreground "magenta"))))
;;  '(rainbow-delimiters-depth-7-face ((t (:foreground "dark violet"))))
;;  '(rainbow-delimiters-depth-8-face ((t (:foreground "cyan"))))
;;  '(rainbow-delimiters-depth-9-face ((t (:foreground "blue violet"))))
;;  '(rainbow-delimiters-unmatched-face ((t (:foreground "orange red")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#202020" :foreground "#cacaca" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "unknown" :family "Droid Sans Mono")))))
