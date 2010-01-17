;; mode:-*-emacs-lisp-*-
;; wanderlust 
(setq 
  wl-stay-folder-window t                       ;; show the folder pane (left)
  wl-folder-window-width 25                     ;; toggle on/off with 'i'
  
  wl-from "sdrreynolds@gmail.com <sdrreynolds@gmail.com>"                  ;; my From:

  
  ;; hide many fields from message buffers
  wl-message-ignored-field-list '("^.*:")
  wl-message-visible-field-list
  '("^\\(To\\|Cc\\):"

    "^Subject:"
    "^\\(From\\|Reply-To\\):"
    "^Organization:"
    "^Message-Id:"
    "^\\(Posted\\|Date\\):"
    )
  wl-message-sort-field-list
  '("^From"

    "^Organization:"
    "^X-Attribution:"
     "^Subject"
     "^Date"
     "^To"
     "^Cc"))

;; browse url key
(add-hook 'mime-view-mode-hook
	  (lambda ()
	    (local-set-key "f" 'browse-url)))

(require 'bbdb-wl)
(bbdb-wl-setup) 


(define-key wl-draft-mode-map (kbd "<C-tab>") 'bbdb-complete-name)
