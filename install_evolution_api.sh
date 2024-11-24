#!/bin/bash

# ================================================
# 🚀 Script de Instalação da Evolution API v1.8 🚀
# ================================================

# 🛠️ Função para verificar se um comando existe
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# ================================================
# 📦 Atualizando o sistema
# ================================================
echo "🔄 Atualizando o sistema..."
sudo apt-get update && sudo apt-get upgrade -y

# ================================================
# 📥 Instalando o NVM (Node Version Manager)
# ================================================
if ! command_exists nvm; then
    echo "📥 Instalando NVM..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
    export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    source ~/.bashrc
fi

# ================================================
# 🚀 Instalando Node.js via NVM
# ================================================
echo "🚀 Instalando Node.js..."
nvm install v20.10.0
nvm use v20.10.0

# ✅ Verificando se o NVM foi instalado corretamente
if command_exists nvm; then
    echo "✅ NVM instalado com sucesso."
else
    echo "❌ Erro na instalação do NVM. Saindo do script."
    exit 1
fi

# ================================================
# 🌎 Configurando o Fuso Horário
# ================================================
echo "🕒 Configurando fuso horário para São Paulo..."
sudo timedatectl set-timezone America/Sao_Paulo

# ================================================
# 🖥️ Clonando o repositório da Evolution API v1.8
# ================================================
echo "📂 Clonando repositório da Evolution API..."
git clone -b v1.8 https://github.com/EvolutionAPI/evolution-api.git
cd evolution-api

# ================================================
# 🔧 Instalando dependências
# ================================================
echo "📦 Instalando dependências..."
npm install
npm run build

# ================================================
# ⚙️ Configurando variáveis de ambiente
# ================================================
echo "📝 Configurando variáveis de ambiente..."
cp src/dev-env.yml src/env.yml
nano src/env.yml  # Abra para editar o arquivo conforme necessário

# ================================================
# 🔄 Instalando e configurando PM2
# ================================================
echo "🔄 Instalando e configurando PM2..."
npm install pm2 -g
pm2 start 'npm run start:prod' --name ApiEvolution
pm2 startup
pm2 save --force

# ================================================
# 🎉 Finalizado!
# ================================================
echo "🎉 Instalação e configuração da Evolution API concluídas com sucesso!"
