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
    "qutebrowser"
    "thunar"
    "pavucontrol"
    "pulsemixer"
    "blueman"
    "piper"
    "brightnessctl"
    "btop"
    "wlclock"
    "wev"
    "cbonsai"

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
