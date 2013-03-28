#!/bin/sh

pip-python install --user pyrocore

# FIXME: copy 'rtorrent-helper' to BIN_DIR

DATA_DIR=$HOME/.local/share

DESKTOP_FILE=rtorrent-helper.desktop
desktop-file-install --dir=$DATA_DIR/applications/ $DESKTOP_FILE

# FIXME:  implement ini-create-or-edit
ini-create-or-edit $DATA_DIR/applications/mimeapps.list <<-EOF
	[Default Applications]
	application/x-bittorrent=rtorrent-helper.desktop
	x-scheme-handler/magnet=rtorrent-helper.desktop
EOF
