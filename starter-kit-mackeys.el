(add-to-list 'load-path (concat dotfiles-dir "/mac/"))

(require 'emulate-mac-keyboard-mode)
;; (require 'mac-key-mode)
:: (pc-selection-mode 1)
;; (mac-key-mode 1)

;; (defun toggle-alt-is-meta ()
;;    "Toggle setting tab widths between 4 and 8"
;;    (setq mac-option-modifier (if mac-option-modifier nil 'meta))
;;    (if mac-option-modifier (print "Alt key is meta") (print "Alt key is not meta)))

;; Obviously substitute your preferred key for <f8>
(global-set-key [(control ?;)] 'toggle-mac-option-modifier)

(when (require 'mac-print-mode nil t)
  (mac-print-mode 1)
  (global-set-key (kbd "M-p") 'mac-print-buffer))

;; Activate window navigation
;; <S-arrow>, S- is mapped to the CMD key
(windmove-default-keybindings 'super)

(provide 'starter-kit-mackeys)
