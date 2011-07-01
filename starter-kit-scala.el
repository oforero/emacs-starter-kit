;; Scala configuration

;; Yasnippet
(add-to-list 'load-path (concat dotfiles-dir "/plugins"))
(require 'yasnippet-bundle)

;; Yasnippet
;; (add-to-list 'load-path (concat dotfiles-dir "yasnippet"))
;; (require 'yasnippet)
;; (yas/initialize)

;; (setq yas/scala-directory (concat dotfiles-dir  "yasnippet/snippets/text-mode/scala-mode/"))
;; (yas/load-directory yas/scala-directory)

;; Scala-mode
(add-to-list 'load-path (concat dotfiles-dir "scala-mode"))
(require 'scala-mode-auto)

(add-hook 'scala-mode-hook
          '(lambda ()
             (yas/minor-mode-on)))

;; Load the ensime lisp code...
(add-to-list 'load-path (concat dotfiles-dir "ensime/elisp"))
(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; Show numbers in scala mode
(add-hook 'scala-mode-hook
  (lambda ()
    (linum-mode))) 

;; Provides scala starter kit
(provide 'starter-kit-scala)

;; MINI HOWTO:
;; Open .scala file. M-x ensime (once per project)
