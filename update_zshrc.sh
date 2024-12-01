#!/bin/zsh

# Define o caminho do arquivo .zshrc no diretório home do usuário atual
ZSHRC="${HOME}/.zshrc"

# Define o caminho para arquivo .tmux.conf
TMUXC="${HOME}/.tmux.conf"

# Verifica se o arquivo .zshrc já existe
if [[ -f "$ZSHRC" ]]; then
    # Move o arquivo existente para .zshrc.bak
    echo "Moving existing .zshrc file to .zshrc.bak"
    mv "$ZSHRC" "${ZSHRC}.bak"
fi

# Usa wget para baixar o arquivo .zshrc do site fornecido
echo "Downloading updated .zshrc from https://raw.githubusercontent.com/VitorThorvi/zsh-dot-files/main/.zshrc"
wget -O "$ZSHRC" https://raw.githubusercontent.com/VitorThorvi/zsh-dot-files/main/.zshrc

# agora com o tmux.conf
if [[ -f "$TMUXC" ]]; then
    # Move o arquivo existente para .zshrc.bak
    echo "Moving existing .tmux.conf file to .tmux.conf.bak"
    mv "TMUXC" "${TMUXC}.bak"
fi

# Usa wget para baixar o arquivo .tmux.conf do site fornecido
echo "Downloading updated .tmux.conf from https://raw.githubusercontent.com/VitorThorvi/zsh-dot-files/refs/heads/main/.tmux.conf"
wget -O "$TMUXC" https://raw.githubusercontent.com/VitorThorvi/zsh-dot-files/refs/heads/main/.tmux.conf


echo "Congrats my good sir. The .zshrc file was succesfully update. Also .tmux.conf file is installed"
echo "Restart the shell or source it."

