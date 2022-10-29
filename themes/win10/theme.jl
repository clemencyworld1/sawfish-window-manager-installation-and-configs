;; Name    : win10. Based on metacity candido theme.
;; Author  : Sergey Sharybin <sharybin@nm.ru>
;; License : GPL-2

(let*
  (
    (iclose  (list (make-image "close.png")       nil (make-image "close_active.png") nil))
    (imax    (list (make-image "max.png")         nil (make-image "max_active.png")   nil))
    (imin    (list (make-image "min.png")         nil (make-image "min_active.png")   nil))
    (ititle  (list (make-image "title.png")       nil nil nil))
    (imenu   (list (make-image "menu.png")        nil (make-image "menu_active.png")  nil))
    (iright  (list (make-image "right.png")       nil nil nil))
    (ileft   (list (make-image "left.png")        nil nil nil))
    (ibottom (list (make-image "bottom.png")      nil nil nil))

    (default-frame
     `(
        ((background . ,ititle)  (right-edge . 106) (left-edge . 36)              (height . 40) (top-edge . -40) 
         (foreground . ("grey" "black"))  (text . ,window-name) (x-justify . center) (y-justify . center) (class . title))

        ((background . ,iclose)  (right-edge . -4)        (height . 40)           (width . 40)               (top-edge . -40)                    (class . close-button))
        ((background . ,imax)    (right-edge . 31)       (height . 40)           (width . 40)               (top-edge . -40)                    (class . maximize-button))
        ((background . ,imin)    (right-edge . 66)         (height . 40)         (width . 40)               (top-edge . -40)                    (class . iconify-button))
        ((background . ,imenu)                     (left-edge . -4)  (width . 40)    (height . 40)           (top-edge . -40)                    (class . menu-button))
        ((background . ,iright)  (right-edge . -4)                  (width . 4)                (top-edge . 0)   (bottom-edge . 0)  (class . right-border))
        ((background . ,ileft)                     (left-edge . -4) (width . 4)                (top-edge . 0)   (bottom-edge . 0)  (class . left-border))
        ((background . ,ibottom) (right-edge . -4)  (left-edge . -4)  (height . 4)               (bottom-edge . -4) (class . bottom-border))

      )
    )

    (shaded-frame
     `(
        ((background . ,ititle)  (right-edge . 106) (left-edge . 36)              (height . 40) (top-edge . -40) 
         (foreground . ("grey" "black"))  (text . ,window-name) (x-justify . center) (y-justify . center) (class . title))

        ((background . ,iclose)  (right-edge . -4)        (height . 40)           (width . 40)               (top-edge . -40)                    (class . close-button))
        ((background . ,imax)    (right-edge . 31)       (height . 40)           (width . 40)               (top-edge . -40)                    (class . maximize-button))
        ((background . ,imin)    (right-edge . 66)         (height . 40)         (width . 40)               (top-edge . -40)                    (class . iconify-button))
        ((background . ,imenu)                     (left-edge . 0)  (width . 40)    (height . 40)           (top-edge . -40)                    (class . menu-button))
        ((background . ,ibottom) (right-edge . -4)  (left-edge . 0)  (height . 4)               (top-edge . 0) (class . bottom-border))
      )
    )

    (transident-frame
     `(
        ((background . ,ititle)  (right-edge . 106) (left-edge . 36)              (height . 40) (top-edge . -40) 
         (foreground . ("grey" "black"))  (text . ,window-name) (x-justify . center) (y-justify . center) (class . title))

        ((background . ,iclose)  (right-edge . -4)        (height . 40)           (width . 40)               (top-edge . -40)                    (class . close-button))
        ((background . ,imax)    (right-edge . 31)       (height . 40)           (width . 40)               (top-edge . -40)                    (class . maximize-button))
        ((background . ,imin)    (right-edge . 66)         (height . 40)         (width . 40)               (top-edge . -40)                    (class . iconify-button))
        ((background . ,imenu)                     (left-edge . -4)  (width . 40)    (height . 40)           (top-edge . -40)                    (class . menu-button))
        ((background . ,iright)  (right-edge . -4)                  (width . 4)                (top-edge . 0)   (bottom-edge . 0)  (class . right-border))
        ((background . ,ileft)                     (left-edge . -4) (width . 4)                (top-edge . 0)   (bottom-edge . 0)  (class . left-border))
        ((background . ,ibottom) (right-edge . -4)  (left-edge . -4)  (height . 4)               (bottom-edge . -4) (class . bottom-border))
      )
    )

    (shaded-transident-frame
     `(
        ((background . ,ititle)  (right-edge . 106) (left-edge . 36)              (height . 40) (top-edge . -40) 
         (foreground . ("grey" "black"))  (text . ,window-name) (x-justify . center) (y-justify . center) (class . title))

        ((background . ,iclose)  (right-edge . -4)        (height . 40)           (width . 40)               (top-edge . -40)                    (class . close-button))
        ((background . ,imax)    (right-edge . 31)       (height . 40)           (width . 40)               (top-edge . -40)                    (class . maximize-button))
        ((background . ,imin)    (right-edge . 66)         (height . 40)         (width . 40)               (top-edge . -40)                    (class . iconify-button))
        ((background . ,imenu)                     (left-edge . 0)  (width . 40)    (height . 40)           (top-edge . -40)                    (class . menu-button))
        ((background . ,ibottom) (right-edge . -4)  (left-edge . 0)  (height . 4)               (top-edge . 0) (class . bottom-border))

      )
    )
  )

  (add-frame-style 'win10 
    (lambda (w type) 
      (case type 
        ((default) default-frame)
        ((transient) transident-frame)
        ((shaped) shaded-frame)
        ((shaped-transient) shaded-transident-frame)
      )
    )
  )
)
