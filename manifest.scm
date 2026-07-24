;; General system packages
(define general-packages
  '("pkg-config"
    "wl-clipboard"
    "cliphist"
    "curl"
    "ripgrep"
    "bluez"
    "fuzzel"
    "flatpak"
    "bubblewrap"
    "sed"
    "rlwrap"
    "bzip2"
    "cmake"
    "git"
    "make"
    "openssh"
    "patch"
    "unzip"
    "gawk"
    "nss-certs"
    "glibc-locales"
    "gmp"
    "ta-lib"
    "openssl"
    "libev"
    "gcc-toolchain"
    "glibc"
    "libgccjit"
    "python"
    "direnv"
    "esbuild"
    "node"
    "guile"
    "tmux"
    "htop"
    "vlc"
    "steam"           ; nonguix — runs in FHS container wrapper
    "bison"
    "solaar"
    "feh"
    "cabextract"
    "neofetch"
    "bash"
    "which"
    "lesspipe"
    "coreutils"
    "less"
    "grep"
    "python-dateutil"
    "waybar"
    "swaybg"
    "libxml2"
    "autoconf"
    "alsa-utils"
    "whisper-cpp"

    ;; Desktop apps
    "firefox"
    "qutebrowser"
    "qtwayland"       ; native Wayland platform plugin (fixes blurry Qt on niri)
    "thunar"

    ;; Niri compositor + desktop integration.  Previously pulled in by
    ;; home-niri-service-type; declared here directly since that service is no
    ;; longer used (it also registered a shepherd launcher that raced the
    ;; `exec niri' in ~/.bash_profile and broke the first login).
    "niri"
    "xwayland-satellite"   ; run X11 clients under niri
    "xdg-desktop-portal"   ; portals: file pickers, screenshare, etc.
    "xdg-desktop-portal-gtk"
    "xdg-desktop-portal-gnome"
    "pavucontrol"
    "pulsemixer"
    "blueman"
    "piper"
    "brightnessctl"
    "btop"
    "wlclock"
    "wev"
    "cbonsai"

    ;; Fonts — broad script coverage so browsers render foreign text (CJK, etc.)
    "font-google-noto"           ; most world scripts (Arabic, Thai, Cyrillic, ...)
    "font-google-noto-sans-cjk"  ; Chinese / Japanese / Korean

    ;; CLI tools
    "jq"
    "jless"
    "rbw"
    "keyd"
    "claude-code"
    "ncdu"
    "rclone"
    "rsync"
    "mosh"
    "cmatrix"
    "nsxiv"
    "perf"            ; performance profiling / tracing
    "crush"           ; AI coding CLI
    "graphviz"        ; dot graph rendering
    "mailutils"       ; mail CLI

    ;; PDF / document viewers
    "zathura"
    "zathura-pdf-mupdf"
    "mupdf"

    ;; Virtualization
    "qemu"

    ;; TeX — minimal set for basic math papers (pdflatex + AMS math).
    ;; Was texlive-scheme-full (~5GB); this is a few hundred MB and avoids
    ;; re-downloading the whole distribution on every reconfigure.
    "texlive-scheme-basic"              ; latex, pdftex core
    "texlive-collection-latexrecommended" ; geometry, hyperref, graphics, etc.
    "texlive-collection-mathscience"    ; amsmath, amsfonts, amscls, mathtools
    "texlive-collection-fontsrecommended" ; Latin Modern / CM fonts for clean PDFs

))

(specifications->manifest general-packages)
