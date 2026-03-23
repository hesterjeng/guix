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

    ;; Evil mode
    "emacs-evil"
    "emacs-evil-collection"
    "emacs-undo-fu"
    "emacs-general"

    ;; Completion and LSP
    "emacs-company"
    "emacs-lsp-mode"
    "emacs-lsp-ui"
    "emacs-yasnippet"
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

    ;; Utilities
    "emacs-envrc"
    "emacs-magit"
    "emacs-magit-popup"
    "emacs-projectile"
    "emacs-dumb-jump"
    "emacs-guix"
    "emacs-gptel"

    ;; OCaml
    "emacs-tuareg"
    "ocaml-merlin"

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