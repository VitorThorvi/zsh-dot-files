#!/bin/zsh

# Define o caminho do arquivo .zshrc no diretório home do usuário atual
ZSHRC="${HOME}/.zshrc"

# Verifica se o arquivo .zshrc já existe
if [[ -f "$ZSHRC" ]]; then
    # Move o arquivo existente para .zshrc.bak
    echo "Moving existing .zshrc file to .zshrc.bak"
    mv "$ZSHRC" "${ZSHRC}.bak"
fi

# Usa wget para baixar o arquivo .zshrc do site fornecido
echo "Downloading updated .zshrc from https://raw.githubusercontent.com/VitorThorvi/zsh-dot-files/main/.zshrc"
wget -O "$ZSHRC" https://raw.githubusercontent.com/VitorThorvi/zsh-dot-files/main/.zshrc

echo "Congrats my good sir. The .zshrc file was succesfully update"
echo "Restart the shell or source it."

