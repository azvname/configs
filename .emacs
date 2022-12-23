; (string-equal system-type "windows-nt"))
; Unix path-variable
; (when (system-is-linux)

(setq-default truncate-lines 1)
(add-to-list 'default-frame-alist '(foreground-color . "#c5c8c6"))
(add-to-list 'default-frame-alist '(background-color . "#1d1f21"))

; (set-face-attribute 'default nil :height 100)
; (set-face-foreground 'font-lock-string-face "green")
; (set-face-foreground 'font-lock-comment-face "#116111")
; (set-face-attribute 'region nil :background "#a35588")

(set-face-attribute 'lazy-highlight nil :background "green")
(set-face-attribute 'lazy-highlight nil :foreground "black")
(set-face-attribute 'lazy-highlight nil :foreground "black" :background "green")
; (set-face-attribute 'ivy-posframe nil :foreground "white" :background "DarkSlateBlue")
; (add-hook 'emacs-lisp-mode-hook
;          (lambda ()
;            (face-remap-add-relative
;             'mode-line '((:foreground "#f1f1f1" :background "#414141") mode-line))))
; (set-face-background 'modeline "#4477aa")
; Disable GUI components

(tooltip-mode      -1)
(menu-bar-mode     -1) ;; отключаем графическое меню
(tool-bar-mode     -1) ;; отключаем tool-bar
(scroll-bar-mode   -1) ;; отключаем полосу прокрутки
(blink-cursor-mode -1) ;; курсор не мигает

(setq use-dialog-box     nil) ;; никаких графических диалогов и окон - все через минибуфер
(setq redisplay-dont-pause t)  ;; лучшая отрисовка буфера
(setq ring-bell-function 'ignore) ;; отключить звуковой сигнал

(setq unix-sbcl-bin          "/usr/bin/sbcl")
(setq unix-init-path         "~/.emacs.d/lisp")
;(setq unix-init-ct-path      "~/.emacs.d/lisp/plugins/color-theme")
(setq unix-init-ac-path      "~/.emacs.d/lisp/plugins/auto-complete")
(setq unix-init-slime-path   "/usr/share/common-lisp/source/slime/")
; (setq unix-init-ac-dict-path "~/.emacs.d/lisp/plugins/auto-complete/dict")

(setq user-full-name   "Zakhar")
(setq user-mail-adress "aramilevz@gmail.com")
(setq initial-scratch-message ";; Hello, Emacs world!")

(require 'dired)
(setq dired-recursive-deletes 'top) ;; чтобы можно было непустые директории удалять...

; (require 'load-theme)
; (load-theme t)
; Imenu
(require 'imenu)
(setq imenu-auto-rescan      t) ;; автоматически обновлять список функций в буфере
(setq imenu-use-popup-menu nil) ;; диалоги Imenu только в минибуфере
; (global-set-key (kbd "<f6>") 'imenu) ;; вызов Imenu на F6
; Display the name of the current buffer in the title bar
(setq frame-title-format "GNU Emacs: %b")
; Load path for plugins
; (if (system-is-windows)
;  (add-to-list 'load-path win-init-path)
(add-to-list 'load-path "~/.emacs.d/lisp")


(let ((default-directory "~/.emacs.d/lisp"))
	(normal-top-level-add-subdirs-to-load-path))

(require 'org) ;; Вызвать org-mode
(global-set-key "\C-ca" 'org-agenda) ;; поределение клавиатурных комбинаций для внутренних
(global-set-key "\C-cb" 'org-iswitchb) ;; подрежимов org-mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key (kbd "C-c C-u") 'auto-complete-mode)
(global-set-key (kbd "C-c C-j") 'hexl-mode)
(global-set-key (kbd "C-c C-o") 'hexl-mode-exit)


(add-to-list 'auto-mode-alist '("\\.org$" . Org-mode)) ;; ассоциируем *.org файлы с org-mode

; Inhibit startup/splash screen
(setq inhibit-splash-screen   t)
(setq ingibit-startup-message t) ;; экран приветствия можно вызвать комбинацией C-h C-a
;
; Show-paren-mode settings
(setq-default buffer-file-coding-system 'utf-8-unix)
(setq-default default-buffer-file-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(prefer-coding-system 'utf-8-unix)






;(set-face-attribute 'default nil :height 100)
;(iswitchb-mode 1)
(desktop-save-mode 1) ; сохраняет предыдущую сессию
(global-auto-complete-mode t)
(show-paren-mode t) ;; включить выделение выражений между {},[],()
(setq show-paren-style 'expression) ;; выделить цветом выражения между {},[],()

; Electric-modes settings
(electric-pair-mode    1) ;; автозакрытие {},[],() с переводом курсора внутрь скобок
(electric-indent-mode -1) ;; отключить индентацию  electric-indent-mod'ом (default in Emacs-24.4)
; Delete selection
(delete-selection-mode t)
; (evil-mode t)
;  Coding-system settings
;  Coding-system settings
;(set-language-environment 'UTF-8)
;(if (system-is-linux) ;; для GNU/Linux кодировка utf-8, для MS Windows - windows-1251
;    (progn
(setq default-buffer-file-coding-system 'utf-8)
(setq default-coding-system-for-read    'utf-8)
(setq file-name-coding-system           'utf-8)
(set-selection-coding-system            'utf-8)
(set-keyboard-coding-system        'utf-8-unix)
(set-terminal-coding-system             'utf-8)
(prefer-coding-system                   'utf-8)
;    (progn
;        (prefer-coding-system                   'windows-1251)
;        (set-terminal-coding-system             'windows-1251)
;        (set-keyboard-coding-system        'windows-1251-unix)
;        (set-selection-coding-system            'windows-1251)
;        (setq file-name-coding-system           'windows-1251)
;        (setq default-coding-system-for-read    'windows-1251)
;        (setq default-buffer-file-coding-system 'windows-1251)))
; Fringe settings
(fringe-mode '(8 . 0)) ;; органичиталь текста только слева
; (setq-default indicate-empty-lines t) ;; отсутствие строки выделить глифами рядом с полосой с номером строки
(setq-default indicate-buffer-boundaries 'left) ;; индикация только слева

; Display file size/time in mode-line
(setq display-time-24hr-format t) ;; 24-часовой временной формат в mode-line
(display-time-mode             t) ;; показывать часы в mode-line
(size-indication-mode          t) ;; размер файла в %-ах





; IDO plugin
;(require 'ido)
;(ido-mode 1)

;(icomplete-mode                t)
;(ido-everywhere                t)
;(setq ido-vitrual-buffers      t)
;(setq ido-enable-flex-matching t)
;(setq ido-enable-flex-matching t)
;(setq ido-everywhere t)


;; (defun ido-disable-line-truncation () (set (make-local-variable 'truncate-lines) nil))
;; (add-hook 'ido-minibuffer-setup-hook 'ido-disable-line-truncation)
;; (defun ido-define-keys () ;; C-n/p is more intuitive in vertical layout
;;     (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
;;     (define-key ido-completion-map (kbd "C-p") 'ido-prev-match))
;; (add-hook 'ido-setup-hook 'ido-define-keys)

(ivy-mode)
;(require 'ido-vertical-mode)
;(ido-everewhere 1)
;(ido-mode                      t)
;(require 'icomplete-vertical-mode)
;(icomplete-vertical-mode "\n")
;(icomplete-vertical-mode)
;(setq icomplete-separator "\n")
;(setq icomplete-define-keys 'C-n-and-C-p-only)
;(ido-vertical-mode t)
;(setq ido-vitrual-buffers      t)
;(setq ido-vertical-define-keys 'C-n-and-C-p-only)
;(setq ido-vertical-show-count t)

; (ido-mode 2)
; (setq ido-use-filename-at-point 'guess)
; (setq ido-create-new-buffer 'always)
; (setq ido-file-extensions-order '(".org" ".txt" ".py" ".emacs" ".xml" ".el" ".ini" ".cfg" ".cnf"))
;(ivy-mode t)
; Buffer Selection and ibuffer settings


;(add-hook 'c++-mode-hook 'irony-mode)
;(add-hook 'c-mode-hook 'irony-mode)
;(add-hook 'objc-mode-hook 'irony-mode)

;(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)



(require 'bs)
(require 'ibuffer)
(defalias 'list-buffers 'ibuffer) ;; отдельный список буферов при нажатии C-x C-b
; (defalias 'ibuffer) ;; отдельный список буферов при нажатии C-x C-b
; (defalias 'bs-show) ;; отдельный список буферов при нажатии C-x C-b
; (global-set-key (kbd "<f2>") 'bs-show) ;; запуск buffer selection кнопкой F2
(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
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
;; (setq scroll-step               1) ;; вверх-вниз по 1 строке
;; (setq scroll-margin            10) ;; сдвигать буфер верх/вниз когда курсор в 10 шагах от верхней/нижней границы  
;; (setq scroll-conservatively 10000)
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

(setq make-backup-files					nil)
(setq auto-save-default					nil)
(setq auto-save-list-file-name	        nil)
;(setq split-width-threshold             nil)
;(setq split-height-threshold              0)
(put 'upcase-region 'disabled           nil)

;;line of numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
;
(setq completion-show-help nil)
(define-advice display-completion-list (:after (&rest r) "remove-msg")
  (with-current-buffer standard-output
    (goto-char (point-min))
    (when (looking-at-p "Possible completions.*")
      (delete-region (line-beginning-position) (line-beginning-position 2)))))
;
(global-set-key (kbd "<f5>") 'compile)
(setq compile-command "")


;;; Shut up compile saves
(setq compilation-ask-about-save nil)
;;; Don't save *anything*
(setq compilation-save-buffers-predicate '(lambda () nil))

;;(add-hook 'shell-mode-hook 'compilation-shell-minor-mode)
;;(require 'color-theme-sanityinc-tomorrow)
(set-face-italic-p 'italic nil)
(set-face-italic 'font-lock-comment-face nil)
;;(add-hook 'evil-mode)
;;(setq evil-want-C-u-scroll t)
;;(require 'evil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(package-selected-packages
   '(icomplete-vertical auto-complete ido-vertical-mode popup jedi ivy haskell-mode gnu-elpa-keyring-update ctable)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(completions-annotations ((t (:inherit italic :background "black"))))
 '(completions-common-part ((t (:foreground "dark magenta"))))
 '(font-lock-comment-face ((t (:foreground "gray28" :slant normal))))
 '(fringe ((t (:foreground "dark gray"))))
 '(ido-subdir ((t (:foreground "pale green"))))
 '(isearch ((t (:background "aquamarine" :foreground "black"))))
 '(ivy-current-match ((t (:extend t :foreground "spring green" :underline t))))
 '(ivy-minibuffer-match-face-1 ((t (:background "gold"))))
 '(ivy-minibuffer-match-face-2 ((t (:foreground "spring green" :weight bold))))
 '(ivy-minibuffer-match-face-3 ((t (:background "cyan" :foreground "black" :weight normal))))
 '(ivy-minibuffer-match-highlight ((t (:background "cyan"))))
 '(ivy-prompt-match ((t (:inherit ivy-current-match))))
 '(lazy-highlight ((t (:background "light gray" :foreground "black"))))
 '(minibuffer-prompt ((t (:foreground "spring green"))))
 '(mode-line ((t (:background "gray19" :foreground "spring green" :box nil))))
 '(mode-line-highlight ((t (:foreground "magenta" :box nil))))
 '(org-agenda-filter-category ((t (:inherit nil))))
 '(popup-face ((t (:inherit default :background "gray21" :foreground "white smoke"))))
 '(popup-menu-selection-face ((t (:inherit default :background "spring green" :foreground "black"))))
 '(popup-menu-summary-face ((t (:inherit popup-summary-face :background "black"))))
 '(popup-scroll-bar-background-face ((t (:background "cyan"))))
 '(popup-summary-face ((t (:inherit popup-face :foreground "dimgray"))))
 '(popup-tip-face ((t (:background "gray21" :foreground "light gray"))))
 '(region ((t (:extend t :background "DodgerBlue1"))))
 '(secondary-selection ((t (:extend t :background "magenta" :foreground "black")))))

(set-face-attribute 'default nil :font "monospace" :height 160)







