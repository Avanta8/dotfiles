set -o vi
ble-bind -m vi_cmap --cursor 0
ble-bind -m vi_imap --cursor 5
ble-bind -m vi_nmap --cursor 2
ble-bind -m vi_omap --cursor 4
ble-bind -m vi_smap --cursor 2
ble-bind -m vi_xmap --cursor 2

ble-bind -m vi_imap -f "C-h" "vi_imap/delete-backward-word"
