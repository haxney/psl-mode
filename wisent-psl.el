;;; wisent-psl.el --- ParselTongue parser support

;; Copyright (C) 2012 Daniel Hackney

;; Author: Daniel Hackney <dhackney@cs.brown.edu>
;; Keywords: syntax

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2, or (at
;; your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; Parser support for ParselTongue language.

;;;###autoload
(defun wisent-psl-setup-parser ()
  "Setup buffer for parse."
  (wisent-psl-wy--install-parser)
  (setq
   ;; Lexical Analysis
   semantic-lex-analyzer 'psl-lexer
   ;; semantic-lex-depth nil ;; Full lexical analysis
   ;; Environment
   semantic-imenu-summary-function 'semantic-format-tag-name
   imenu-create-index-function 'semantic-create-imenu-index
   semantic-command-separation-character ";"))

;;;###autoload
(add-hook 'psl-mode-hook 'wisent-psl-setup-parser)
