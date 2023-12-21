#!/bin/sh
cp .tmux.conf ~/.tmux.conf
curl -o ~/.tmux.snazzy.theme https://raw.githubusercontent.com/ivnvxd/tmux-snazzy/main/.tmux.snazzy.theme
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

