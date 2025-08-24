#!/bin/bash

# Define o URL do repositório
REPO_URL="https://github.com/pedrohqb/dotfiles.git"
TEMP_DIR="/tmp/dotfiles_temp"

# ---

# 1. Cria um diretório temporário e clona o repositório
echo "Criando diretório temporário e clonando o repositório..."
mkdir -p "$TEMP_DIR"
git clone --depth 1 "$REPO_URL" "$TEMP_DIR"

if [ $? -ne 0 ]; then
    echo "Erro: Não foi possível clonar o repositório. Abortando."
    rm -rf "$TEMP_DIR"
    exit 1
fi

# ---

# 2. Copia os arquivos para seus respectivos diretórios
echo "Copiando arquivos de configuração..."

# Diretório para o plugin do Evolution
EVOLUTION_PLUGIN_DIR="$HOME/.var/app/org.gnome.Evolution/data/evolution/webkit-editor-plugins"
echo "Verificando e criando diretório: $EVOLUTION_PLUGIN_DIR"
mkdir -p "$EVOLUTION_PLUGIN_DIR"
cp "$TEMP_DIR/var/app/org.gnome.Evolution/data/evolution/webkit-editor-plugins/body-font.js" "$EVOLUTION_PLUGIN_DIR/"

# ---

# 3. Limpa o diretório temporário
echo "Limpando arquivos temporários..."
rm -rf "$TEMP_DIR"

# ---

echo "Instalação dos dotfiles concluída! O diretório temporário foi removido."
