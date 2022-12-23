
;; (string-equal system-type "windows-nt"))
;; Unix path-variable
;; (when (system-is-linux)



(setq unix-sbcl-bin          "/usr/bin/sbcl")
(setq unix-init-path         "~/.emacs.d/lisp")
(setq unix-init-ct-path      "~/.emacs.d/lisp/plugins/color-theme")
(setq unix-init-ac-path      "~/.emacs.d/lisp/plugins/auto-complete")
(setq unix-init-slime-path   "/usr/share/common-lisp/source/slime/")
(setq unix-init-ac-dict-path "~/.emacs.d/lisp/plugins/auto-complete/dict")



(setq user-full-name   "Zakhar")
(setq user-mail-adress "aramilevz@gmail.com")
(setq initial-scratch-message "Hello, Emacs world!")

(require 'dired)
(setq dired-recursive-deletes 'top) ;; чтобы можно было непустые директории удалять...
;;
;; Imenu
(require 'imenu)
(setq imenu-auto-rescan      t) ;; автоматически обновлять список функций в буфере
(setq imenu-use-popup-menu nil) ;; диалоги Imenu только в минибуфере
(global-set-key (kbd "<f6>") 'imenu) ;; вызов Imenu на F6
;;
;; Display the name of the current buffer in the title bar
(setq frame-title-format "GNU Emacs: %b")

;; Load path for plugins
;; (if (system-is-windows)
;;  (add-to-list 'load-path win-init-path)
(add-to-list 'load-path "~/.emacs.d/lisp")

(let ((default-directory "~/.emacs.d/lisp"))
	(normal-top-level-add-subdirs-to-load-path))
;;
(require 'org) ;; Вызвать org-mode
(global-set-key "\C-ca" 'org-agenda) ;; поределение клавиатурных комбинаций для внутренних
(global-set-key "\C-cb" 'org-iswitchb) ;; подрежимов org-mode
(global-set-key "\C-cl" 'org-store-link)
(add-to-list 'auto-mode-alist '("\\.org$" . Org-mode)) ;; ассоциируем *.org файлы с org-mode
;;
;; Inhibit startup/splash screen
(setq inhibit-splash-screen   t)
(setq ingibit-startup-message t) ;; экран приветствия можно вызвать комбинацией C-h C-a
;;
;; Show-paren-mode settings
(show-paren-mode t) ;; включить выделение выражений между {},[],()
(setq show-paren-style 'expression) ;; выделить цветом выражения между {},[],()
;;
;;;; Electric-modes settings
(electric-pair-mode    1) ;; автозакрытие {},[],() с переводом курсора внутрь скобок
(electric-indent-mode -1) ;; отключить индентацию  electric-indent-mod'ом (default in Emacs-24.4)
;;
;;;; Delete selection
(delete-selection-mode t)
;;
;; Disable GUI components
(tooltip-mode      -1)
(menu-bar-mode     -1) ;; отключаем графическое меню
(tool-bar-mode     -1) ;; отключаем tool-bar
(scroll-bar-mode   -1) ;; отключаем полосу прокрутки
(blink-cursor-mode -1) ;; курсор не мигает
(setq use-dialog-box     nil) ;; никаких графических диалогов и окон - все через минибуфер
;; (setq redisplay-dont-pause t)  ;; лучшая отрисовка буфера
(setq ring-bell-function 'ignore) ;; отключить звуковой сигнал
;;
;; Coding-system settings
(set-language-environment 'UTF-8)
;;(if (system-is-linux) ;; для GNU/Linux кодировка utf-8, дляMS Windows - windows-1251
;;	(progn
(setq default-buffer-file-coding-system 'utf-8)
(setq default-coding-system-for-read    'utf-8)
(setq file-name-coding-system           'utf-8)
(set-selection-coding-system            'utf-8)
(set-keyboard-coding-system							'utf-8-unix)
(set-terminal-coding-system             'utf-8)
(prefer-coding-system                   'utf-8)
;;	(progn
;;		(prefer-coding-system                   'windows-1251)
;;		(set-terminal-coding-system             'windows-1251)
;;		(set-keyboard-coding-system        'windows-1251-unix)
;;		(set-selection-coding-system            'windows-1251)
;;		(setq file-name-coding-system           'windows-1251)
;;		(setq-default coding-system-for-read    'windows-1251)
;;		(setq default-buffer-file-coding-system 'windows-1251)))
;;
;; Fringe settings
(fringe-mode '(8 . 0)) ;; органичиталь текста только слева
;;(setq-default indicate-empty-lines t) ;; отсутствие строки выделить глифами рядом с полосой с номером строки
(setq-default indicate-buffer-boundaries 'left) ;; индикация только слева

;; Display file size/time in mode-line
(setq display-time-24hr-format t) ;; 24-часовой временной формат в mode-line
(display-time-mode             t) ;; показывать часы в mode-line
(size-indication-mode          t) ;; размер файла в %-ах

;; IDO plugin
(require 'ido)
(ido-mode                      t)
(icomplete-mode                t)
(ido-everywhere                t)
(setq ido-vitrual-buffers      t)
(setq ido-enable-flex-matching t)

;; (setq ido-enable-flex-matching t)
;; (setq ido-everywhere t)
;; (ido-mode 2)
;; (setq ido-use-filename-at-point 'guess)
;; (setq ido-create-new-buffer 'always)
;; (setq ido-file-extensions-order '(".org" ".txt" ".py" ".emacs" ".xml" ".el" ".ini" ".cfg" ".cnf"))





;; Buffer Selection and ibuffer settings
(require 'bs)
(require 'ibuffer)
(defalias 'list-buffers 'ibuffer) ;; отдельный список буферов при нажатии C-x C-b

;;(defalias 'ibuffer) ;; отдельный список буферов при нажатии C-x C-b
;;(defalias 'bs-show) ;; отдельный список буферов при нажатии C-x C-b
;;(global-set-key (kbd "<f2>") 'bs-show) ;; запуск buffer selection кнопкой F2

(require 'package)
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;;
;;(when (< emacs-major-version 24)
;;      ;; For important compatibility libraries like cl-lib
;;      (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)




(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)                 ; optional

;; Indent settings
(setq-default indent-tabs-mode nil) ;; отключить возможность ставить отступы TAB'ом
(setq-default tab-width          4) ;; ширина табуляции - 4 пробельных символа
(setq-default c-basic-offset     4)
(setq-default standart-indent    4) ;; стандартная ширина отступа - 4 пробельных символа
(setq-default lisp-body-indent   4) ;; сдвигать Lisp-выражения на 4 пробельных символа
(global-set-key (kbd "RET") 'newline-and-indent) ;; при нажатии Enter перевести каретку и сделать отступ
(setq lisp-indent-function  'common-lisp-indent-function)

;; Scrolling settings
(setq scroll-step               1) ;; вверх-вниз по 1 строке
;;(setq scroll-margin            10) ;; сдвигать буфер верх/вниз когда курсор в 10 шагах от верхней/нижней границы  
(setq scroll-conservatively 10000)

;; Short messages
(defalias 'yes-or-no-p 'y-or-n-p)

;; Clipboard settings
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; End of file newlines
(setq require-final-newline    t) ;; добавить новую пустую строку в конец файла при сохранении
(setq next-line-add-newlines nil) ;; не добавлять новую строку в конец при смещении 
						            ;; курсора  стрелками

;; Highlight search resaults
(setq search-highlight        t)
(setq query-replace-highlight t)

;; Easy transition between buffers: M-arrow-keys
(if (equal nil (equal major-mode 'org-mode))
    (windmove-default-keybindings 'meta))

;; Delete trailing whitespaces, format buffer and untabify when save buffer
(defun format-current-buffer()
    (indent-region (point-min) (point-max)))
(defun untabify-current-buffer()
    (if (not indent-tabs-mode)
        (untabify (point-min) (point-max)))
    nil)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Color-theme definition <http://www.emacswiki.org/emacs/ColorTheme>
(add-to-list 'load-path "~/.emacs.d/lisp/plugins/color-theme/themes")
(require 'color-theme)
(eval-after-load "color-theme"
      '(progn
             (color-theme-initialize)
             (color-theme-arjen)))
;;(add-to-list 'load-path "~/.emacs.d/lisp/plugins/icicles-install/icicles-install")
(setq make-backup-files					nil)
(setq auto-save-default					nil)
(setq auto-save-list-file-name	        nil)
(setq split-width-threshold             nil)
(setq split-height-threshold              0)
(put 'upcase-region 'disabled           nil)
;;(require 'display-line-numbers)
;;(require 'auto-complete)
;;(defcustom display-line-numbers-exempt-modes
;;  '(vterm-mode eshell-mode shell-mode term-mode ansi-term-mode)
;;  "Major modes on which to disable line numbers."
;;  :group 'display-line-numbers
;;  :type 'list
;;  :version "green")
;;(defun display-line-numbers--turn-on ()
;;  "Turn on line numbers except for certain major modes.  Exempt major modes are defined in `display-line-numbers-exempt-modes'."
;;  (unless (or (minibufferp)
;;              (member major-mode display-line-numbers-exempt-modes))
;;    (display-line-numbers-mode)))
;;line of numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)    
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes
   '("ff6a8955945028387ed1a2b0338580274609fbb0d40cd011b98ca06bd00d9233" "db510eb70cf96e3dbd48f5d24de12b03db30674ea0853f06074d4ccf7403d7d3" "9f9b7974d356d2f06819e2352e3bc1e1dbe8de27b3fc76f67ff590bf152df1a9" "76935a29af65f8c915b1b3b4f6326e2e8d514ca098bd7db65b0caa533979fc01" "9a3c51c59edfefd53e5de64c9da248c24b628d4e78cc808611abd15b3e58858f" "57d7e8b7b7e0a22dc07357f0c30d18b33ffcbb7bcd9013ab2c9f70748cfa4838" "6b4f7bde1ce64ea4604819fe56ff12cda2a8c803703b677fdfdb603e8b1f8bcb" "a11043406c7c4233bfd66498e83600f4109c83420714a2bd0cd131f81cbbacea" "9d9b2cf2ced850aad6eda58e247cf66da2912e0722302aaa4894274e0ea9f894" default))
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(jedi color-theme-modern package+ auto-complete-chunk auto-complete-distel auto-complete-c-headers auto-complete-clang ## irony virtualenv jedi-direx evil)))
;;(custom-set-faces
;; custom-set-faces was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
;; '(border ((t (:background "medium blue")))))
(setq completion-show-help nil)
(define-advice display-completion-list (:after (&rest r) "remove-msg")
  (with-current-buffer standard-output
    (goto-char (point-min))
    (when (looking-at-p "Possible completions.*")
      (delete-region (line-beginning-position) (line-beginning-position 2)))))
;;(add-to-list 'load-path "~/icicles")
;;(require 'icicles)
;;(icy-mode 1)
(global-set-key (kbd "<f5>") 'compile)
(setq compile-command "")
;;(setenv "SHELL" "/usr/bin/bash")
;;(setq auto-complete-mode t)
(put 'downcase-region 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
