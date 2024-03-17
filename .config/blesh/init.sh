# vi mode by default: https://github.com/akinomyoga/ble.sh/wiki/Vi-%28Vim%29-editing-mode#with-blesh-setting-in-blerc
bleopt default_keymap=vi

# vi mode esc timeout: https://github.com/akinomyoga/ble.sh/wiki/Vi-%28Vim%29-editing-mode#timeout-of-bash-43
bind 'set keyseq-timeout 1'

# preferences: https://github.com/akinomyoga/ble.sh/wiki/Vi-%28Vim%29-editing-mode#3-possible-preferences
function blerc/vim-mode-hook {
    ble-bind -m vi_cmap --cursor 0
    ble-bind -m vi_imap --cursor 5
    ble-bind -m vi_nmap --cursor 2
    ble-bind -m vi_omap --cursor 4
    ble-bind -m vi_smap --cursor 2
    ble-bind -m vi_xmap --cursor 2

    ble-bind -m vi_imap -f "C-h" "vi_imap/delete-backward-word"
}

blehook/eval-after-load keymap_vi blerc/vim-mode-hook
