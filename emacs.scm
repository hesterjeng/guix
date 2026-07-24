;; Emacs and Emacs packages
(define emacs-packages
  '("emacs-pgtk"
    "emacs-use-package"

    ;; UI
    "emacs-dashboard"
    "emacs-smart-mode-line"
    "emacs-which-key"
    "emacs-helm"
    "emacs-helm-projectile"
    "emacs-helm-lsp"          ; helm interface to LSP workspace symbols
    "emacs-helm-ag"           ; fast ripgrep/ag search via helm
    "emacs-rainbow-delimiters" ; depth-colored parens (lisp/scheme/ocaml)
    "emacs-hl-todo"           ; highlight TODO/FIXME/HACK keywords

    ;; Evil mode
    "emacs-evil"
    "emacs-evil-collection"
    "emacs-undo-fu"
    "emacs-general"
    "emacs-evil-surround"      ; change/add surrounding quotes & brackets
    "emacs-evil-nerd-commenter" ; gc/gcc commenting in evil

    ;; Completion and LSP
    "emacs-company"
    "emacs-lsp-mode"
    "emacs-lsp-ui"
    "emacs-yasnippet"
    "emacs-yasnippet-snippets" ; community snippet library for yasnippet
    "emacs-flycheck"

    ;; AI (Agent Shell)
    ;; Backend `claude-code` is in the Longleaf channel (standalone CLI)
    ;; Also requires: npm install -g @zed-industries/claude-agent-acp (ACP bridge for agent-shell)
    "emacs-agent-shell"
    "emacs-shell-maker"
    ;; Fallback AI integration (uses vterm + MCP)
    "emacs-claude-code-ide"
    "emacs-vterm"

    ;; Editing
    "emacs-markdown-mode"
    "emacs-olivetti"          ; centered, fixed-width reading column
    "emacs-adaptive-wrap"     ; hanging indent for wrapped list/quote lines

    ;; Utilities
    "emacs-envrc"
    "emacs-editorconfig"      ; honor per-repo .editorconfig settings
    "emacs-ws-butler"         ; trim trailing whitespace only on edited lines
    "emacs-diff-hl"           ; git change indicators in the fringe (magit-aware)
    "emacs-magit"
    "emacs-magit-popup"
    "emacs-projectile"
    "emacs-dumb-jump"
    "emacs-guix"
    "emacs-gptel"

    ;; OCaml
    "emacs-tuareg"
    "ocaml-merlin"
    "ocaml-lsp-server"  ; provides the `ocamllsp` binary used by lsp-mode

    ;; TypeScript / JavaScript
    "emacs-typescript-mode"
    "emacs-js2-mode"
    "emacs-rjsx-mode"
    "emacs-prettier"

    ;; Python
    "emacs-pyvenv"

    ;; Scheme
    "emacs-geiser"
    "emacs-geiser-guile"))