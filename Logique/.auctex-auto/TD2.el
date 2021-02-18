(TeX-add-style-hook
 "TD2"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("babel" "french") ("algorithm2e" "vlined" "lined" "linesnumbered" "boxed" "french") ("geometry" "left=2cm" "right=2cm" "top=2cm" "bottom=2cm")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "inputenc"
    "babel"
    "graphicx"
    "amsmath"
    "amssymb"
    "algorithm2e"
    "geometry"
    "url"
    "setspace")
   (LaTeX-add-environments
    "defi"))
 :latex)

