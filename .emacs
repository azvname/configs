; (string-equal system-type "windows-nt"))
; Unix path-variable
; (when (system-is-linux)


(setq-default truncate-lines 1)
(tooltip-mode      -1)
(menu-bar-mode     -1) ;; отключаем графическое меню
(tool-bar-mode     -1) ;; отключаем tool-bar
(scroll-bar-mode   -1) ;; отключаем полосу прокрутки
(setq use-dialog-box     nil) ;; никаких графических диалогов и окон - все через минибуфер
(setq redisplay-dont-pause t)  ;; лучшая отрисовка буфера
(setq ring-bell-function 'ignore) ;; отключить звуковой сигнал
(setq initial-scratch-message ";; Hello, Emacs world!")
(setq frame-title-format "GNU Emacs: %b")
(set-face-italic-p 'italic nil)
(set-face-italic 'font-lock-comment-face nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(delete-selection-mode t)
 '(helm-sources-using-help-echo-popup nil)
 '(ivy-mode t)
 '(package-selected-packages
   '(helm vue-html-mode fish-mode vue-mode helm-projectile ac-html emmet-mode ido-vertical-mode go-mode go-autocomplete go vimrc-mode jedi company-irony irony evil auto-complete-clang-async git-auto-commit-mode tern-auto-complete zzz-to-char ivy company))
 '(selection-coding-system 'utf-8))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :foreground "gainsboro" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(ac-gtags-selection-face ((t (:inherit ac-selection-face :background "dark gray"))))
 '(font-lock-builtin-face ((t (:foreground "cyan"))))
 '(font-lock-comment-face ((t (:foreground "dim gray" :slant normal))))
 '(font-lock-keyword-face ((t (:foreground "coral"))))
 '(font-lock-string-face ((t (:foreground "brightgreen"))))
 '(font-lock-type-face ((t (:foreground "deep sky blue"))))
 '(font-lock-variable-name-face ((t (:foreground "chartreuse"))))
 '(fringe ((t nil)))
 '(helm-buffer-modified ((t nil)))
 '(helm-candidate-number ((t (:extend t :background "dark violet" :foreground "black"))))
 '(helm-ff-backup-file ((t (:extend t :foreground "red"))))
 '(helm-ff-dotted-directory ((t (:extend t :background "DimGray" :foreground "orange"))))
 '(helm-ff-prefix ((t (:extend t :background "dark violet" :foreground "black"))))
 '(helm-header ((t (:inherit nil :extend t))))
 '(helm-header-line-left-margin ((t (:extend t :background "dark red" :foreground "black"))))
 '(helm-selection ((t (:extend t :background "deep sky blue" :distant-foreground "black"))))
 '(helm-source-header ((t nil)))
 '(info-index-match ((t (:foreground "black"))))
 '(ivy-current-match ((t (:extend t :foreground "spring green" :underline (:color "deep sky blue" :style wave)))))
 '(ivy-minibuffer-match-face-2 ((t (:foreground "deep sky blue" :weight bold))))
 '(ivy-minibuffer-match-face-3 ((t (:foreground "coral" :weight bold))))
 '(mode-line ((t (:background "black" :foreground "deep sky blue"))))
 '(mode-line-inactive ((t (:inherit mode-line :background "black" :foreground "dim gray"))))
 '(popup-menu-selection-face ((t (:inherit default :background "steelblue" :foreground "lawn green"))))
 '(region ((t (:extend t :background "dim gray"))))
 '(show-paren-match ((t (:background "steelblue3" :foreground "black"))))
 '(vertical-border ((t (:foreground "deep sky blue" :width normal)))))

; Electric-modes settings
(electric-pair-mode    1) ;; автозакрытие {},[],() с переводом курсора внутрь скобок
(electric-indent-mode -1) ;; отключить индентацию  electric-indent-mod'ом (default in Emacs-24.4)
; Delete selection
(delete-selection-mode t)

;(add-to-list 'default-frame-alist '(foreground-color . "#c5c8c6"))
;(add-to-list 'default-frame-alist '(background-color . "#212121"))

; (set-face-attribute 'default nil :height 100)
; (set-face-foreground 'font-lock-string-face "green")
; (set-face-foreground 'font-lock-comment-face "#116111")
; (set-face-attribute 'region nil :background "#a35588")


(setq python-indent-guess-indent-offset t)
(setq python-indent-guess-indent-offset-verbose nil)

;(set-face-attribute 'lazy-highlight nil :background "green")
;(set-face-attribute 'lazy-highlight nil :foreground "black")
;(set-face-attribute 'lazy-highlight nil :foreground "black" :background "green")
; (set-face-attribute 'ivy-posframe nil :foreground "white" :background "DarkSlateBlue")
; (add-hook 'emacs-lisp-mode-hook
;          (lambda ()
;            (face-remap-add-relative
;             'mode-line '((:foreground "#f1f1f1" :background "#414141") mode-line))))
; (set-face-background 'modeline "#4477aa")
; Disable GUI components

;(blink-cursor-mode -1) ;; курсор не мигает


(setq unix-sbcl-bin          "/usr/bin/sbcl")
(setq unix-init-path         "~/.emacs.d/lisp")
;(setq unix-init-ct-path      "~/.emacs.d/lisp/plugins/color-theme")
;(setq unix-init-ac-path      "~/.emacs.d/lisp/plugins/auto-complete")
(setq unix-init-slime-path   "/usr/share/common-lisp/source/slime/")
; (setq unix-init-ac-dict-path "~/.emacs.d/lisp/plugins/auto-complete/dict")

(setq user-full-name   "Zakhar")
(setq user-mail-adress "aramilevz@gmail.com")


(require 'dired) ; непустые директории удалять


; (require 'load-theme)
; (load-theme t)
; Imenu
;(require 'imenu)
;(setq imenu-auto-rescan      t) ;; автоматически обновлять список функций в буфере
;(setq imenu-use-popup-menu nil) ;; диалоги Imenu только в минибуфере
; (global-set-key (kbd "<f6>") 'imenu) ;; вызов Imenu на F6
; Display the name of the current buffer in the title bar

; Load path for plugins
; (if (system-is-windows)
;  (add-to-list 'load-path win-init-path)
(add-to-list 'load-path "~/.emacs.d/lisp")
(let ((default-directory "~/.emacs.d/lisp"))
	(normal-top-level-add-subdirs-to-load-path))


(require 'org) ;; Вызвать org-mode

;; мои hot-key-u
(global-set-key "\C-ca" 'org-agenda) ;; поределение клавиатурных комбинаций для внутренних
(global-set-key "\C-cb" 'org-iswitchb) ;; подрежимов org-mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key (kbd "C-c C-u") 'auto-complete-mode) ;; 
(global-set-key (kbd "C-c C-j") 'hexl-mode) ;; конвертирование в hex
;(global-set-key (kbd "C-c C-o") 'hexl-mode-exit)
(global-set-key (kbd "C-c C-v") 'rectangle-mark-mode) ;; Вертикальное выделение
(global-set-key (kbd "C-c C-o") 'read-only-mode)
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

(desktop-save-mode 1) ; сохраняет предыдущую сессюи
;(global-auto-complete-mode t)
(show-paren-mode t) ;; включить выделение выражений между {},[],()
(setq show-paren-style 'expression) ;; выделить цветом выражения между {},[],()

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



(ivy-mode)
(global-set-key (kbd "C-x C-b") #'ivy-switch-buffer)
;(require 'ido-vertical-mode)
;(ido-mode 1)
;(ido-vertical-mode 1)
;(setq ido-vertical-define-keys 'C-n-and-C-p-only)
;(setq ido-vertical-show-count t)



;; Включение режима "только для чтения"
(defun enable-read-only-mode ()
      "Включить режим 'только для чтения'."
        (interactive)
          (read-only-mode 1)
            (message "Режим 'только для чтения' включен."))

;; Отключение режима "только для чтения"
(defun disable-read-only-mode ()
      "Отключить режим 'только для чтения'."
        (interactive)
          (read-only-mode 0)
            (message "Режим 'только для чтения' отключен."))

;; Привязка команд к сочетаниям клавиш
(global-set-key (kbd "C-c C-e") 'enable-read-only-mode)    ;; Например, используйте C-c C-e для включения
(global-set-key (kbd "C-c C-d") 'disable-read-only-mode)   ;; и C-c C-d для отключения


;(global-set-key (kbd "C-x C-b") #'helm-buffers-list)


;(require 'bs)
;(require 'ibuffer)
;(defalias 'list-buffers 'ibuffer) ;; отдельный список буферов при нажатии C-x C-b
; (defalias 'ibuffer) ;; отдельный список буферов при нажатии C-x C-b
; (defalias 'bs-show) ;; отдельный список буферов при нажатии C-x C-b
; (global-set-key (kbd "<f2>") 'bs-show) ;; запуск buffer selection кнопкой F2
(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

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
;;(defalias 'yes-or-no-p 'y-or-n-p) ;; недавно изменил, если что то не так то раскомментируй

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
;(add-hook 'text-mode-hook 'display-line-numbers-mode)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))


(setq completion-show-help nil)
(define-advice display-completion-list (:after (&rest r) "remove-msg")
  (with-current-buffer standard-output
    (goto-char (point-min))
    (when (looking-at-p "Possible completions.*")
      (delete-region (line-beginning-position) (line-beginning-position 2)))))
;
;(global-set-key (kbd "<f5>") 'compile)
;(setq compile-command "")


;;; Shut up compile saves
(setq compilation-ask-about-save nil)
;;; Don't save *anything*
(setq compilation-save-buffers-predicate '(lambda () nil))

;;(add-hook 'shell-mode-hook 'compilation-shell-minor-mode)
;;(require 'color-theme-sanityinc-tomorrow)
;;(add-hook 'evil-mode)
;;(setq evil-want-C-u-scroll t)
;;(require 'evil)

(define-generic-mode 'vimrc-generic-mode
    '()
    '()
    '(("^[\t ]*:?\\(!\\|ab\\|map\\|unmap\\)[^\r\n\"]*\"[^\r\n\"]*\\(\"[^\r\n\"]*\"[^\r\n\"]*\\)*$"
       (0 font-lock-warning-face))
      ("\\(^\\|[\t ]\\)\\(\".*\\)$"
      (2 font-lock-comment-face))
      ("\"\\([^\n\r\"\\]\\|\\.\\)*\""
       (0 font-lock-string-face)))
    '("/vimrc\\'" "\\.vim\\(rc\\)?\\'")
    '((lambda ()
        (modify-syntax-entry ?\" ".")))
    "Generic mode for Vim configuration files.")

;(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;(require 'auto-complete-config)
;(ac-config-default)
;
;(require 'auto-complete-config)
;(ac-config-default)
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")

;(require 'helm-projectile)
;(helm-projectile-on)



;; Enable switching to the ``special'' buffers
;(setq ivy-use-virtual-buffers t)

;; Create and delete a view
;(global-set-key (kbd "C-c v") 'ivy-push-view)
;(global-set-key (kbd "C-c V") 'ivy-pop-view)
;(setq ivy-virtual-abbreviate 'full)
;(setq ivy-display-style 'fancy)
;(setq ivy-use-virtual-buffers t)
;(setq ivy-virtual-abbreviate 'full)




;(add-hook 'sh-mode-hook
;  (lambda ()
;    (local-set-key (kbd "C-c C-d") 'disable-read-only-mode)))


(setq auto-mode-alist (cons '("\\.\\(pde\\|ino\\)$" . arduino-mode) auto-mode-alist))
(autoload 'arduino-mode "arduino-mode" "Arduino editing mode." t)
