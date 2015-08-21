(require 'cl);; compatability for when libs don't use cl-lib like they should.

(require 'package) 
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib 
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))) 
(package-initialize)

(require 'eclim)
(global-eclim-mode)
(require 'eclimd)
(custom-set-variables
 '(eclim-eclipse-dirs '("/Applications/Eclipse.app/Contents/Eclipse/"))
   '(eclim-executable "/Applications/Eclipse.app/Contents/Eclipse/eclim"))

;; display compilation error messages in the echo area via emacs help
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)

;; regular auto-complete initialization
(require 'auto-complete-config)
(ac-config-default)

;; add the emacs-eclim source
(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)

;; auto-complete dialogs from eclim
(require 'company)
(require 'company-emacs-eclim)
(company-emacs-eclim-setup)
(global-company-mode t)
;;(company-emacs-eclim-ignore-case t)

;; ido
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(setq ido-use-filename-at-point 'guess)

