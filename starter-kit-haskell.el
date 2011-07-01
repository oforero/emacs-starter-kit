;; Haskell configuration

;; Haskell mode
(add-to-list 'load-path (concat dotfiles-dir "haskell-mode"))
(load "haskell-site-file")

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

;; Show pretty math symbols
(add-hook 'haskell-mode-hook
  (lambda ()
    (set 'haskell-font-lock-symbols t))) 

;; Show line numbers in Haskell
(add-hook 'haskell-mode-hook
  (lambda ()
    (linum-mode))) 

;; Provides scala starter kit
(provide 'starter-kit-haskell)

