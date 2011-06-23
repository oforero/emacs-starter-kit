(add-to-list 'load-path (concat dotfiles-dir "/color-theme/"))

;; Set the prefered color theme
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-clarity)))
 
(provide 'starter-kit-color-theme)
