Instalação da Evolution API 1.8 Localmente no Windows com WSL2 🚀
Este guia vai te ajudar, passo a passo, a configurar a Evolution API v1.8 no Windows usando o WSL2. Com isso, você ganha um ambiente Linux completinho dentro do seu Windows, sem complicação. Vamos nessa? 🛠️🐧

1. Habilitando o WSL2 no Windows
O WSL2 (Windows Subsystem for Linux) é a ferramenta oficial do Windows para rodar Linux diretamente no sistema. Seguindo esses passos, você estará pronto para usar o poder do Linux no seu Windows.

1.1 Atualize o Windows
Certifique-se de que seu Windows está na versão 2004 ou superior:

Vá em Configurações > Atualização e Segurança > Windows Update.
Clique em Verificar atualizações e instale tudo o que aparecer.
1.2 Habilite o WSL
Abra o Prompt de Comando (CMD) como Administrador.

Rode o comando abaixo para ativar o WSL:

bash
Copiar código
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
Agora, ative o suporte ao WSL2:

bash
Copiar código
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
Reinicie o computador para concluir as mudanças.

1.3 Atualize o Kernel do WSL
Baixe a atualização do kernel neste link oficial e instale.
Configure o WSL2 como padrão:
bash
Copiar código
wsl --set-default-version 2
1.4 Instale uma Distribuição Linux
Abra a Microsoft Store e procure por Ubuntu.
Clique em Instalar e aguarde a instalação.
Após instalar, abra o Ubuntu e configure um usuário e senha para começar.
🎉 Pronto! Agora você tem um ambiente Linux rodando no Windows.


Instalação da Evolution API 1.8 Localmente no Windows com WSL2 🚀
Este guia vai te ajudar, passo a passo, a configurar a Evolution API v1.8 no Windows usando o WSL2. Com isso, você ganha um ambiente Linux completinho dentro do seu Windows, sem complicação. Vamos nessa? 🛠️🐧

1. Habilitando o WSL2 no Windows
O WSL2 (Windows Subsystem for Linux) é a ferramenta oficial do Windows para rodar Linux diretamente no sistema. Seguindo esses passos, você estará pronto para usar o poder do Linux no seu Windows.

1.1 Atualize o Windows
Certifique-se de que seu Windows está na versão 2004 ou superior:

Vá em Configurações > Atualização e Segurança > Windows Update.
Clique em Verificar atualizações e instale tudo o que aparecer.
1.2 Habilite o WSL
Abra o Prompt de Comando (CMD) como Administrador.

Rode o comando abaixo para ativar o WSL:

bash
Copiar código
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
Agora, ative o suporte ao WSL2:

bash
Copiar código
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
Reinicie o computador para concluir as mudanças.

1.3 Atualize o Kernel do WSL
Baixe a atualização do kernel neste link oficial e instale.
Configure o WSL2 como padrão:
bash
Copiar código
wsl --set-default-version 2
1.4 Instale uma Distribuição Linux
Abra a Microsoft Store e procure por Ubuntu.
Clique em Instalar e aguarde a instalação.
Após instalar, abra o Ubuntu e configure um usuário e senha para começar.
🎉 Pronto! Agora você tem um ambiente Linux rodando no Windows.

2. Preparando o Ambiente Linux
Agora é hora de configurar o Linux para rodar a Evolution API v1.8. Vamos facilitar a sua vida com um script automático.

2.1 Use o Script de Instalação
Baixe e execute o script que faz toda a configuração pra você:

No terminal do Ubuntu, digite:
bash
Copiar código
chmod +x install_evolution_api.sh
./install_evolution_api.sh
Este script vai:

Atualizar o sistema.
Instalar o Node.js e outras dependências.
Clonar a Evolution API v1.8.
Configurar e iniciar o ambiente.
2.2 Ajuste as Configurações
Após a execução do script:

Abra o arquivo de configuração:

bash
Copiar código
nano src/env.yml
No arquivo:

Altere o campo SERVER_URL para o IP do terminal (use ifconfig para encontrar).
Defina a senha no campo APIKEY.
Salve e feche o arquivo (Ctrl+O, depois Enter e Ctrl+X).

3. Hora de Rodar a API
3.1 Iniciando a API
No terminal, digite:

bash
Copiar código
npm run start:prod
A API estará disponível no endereço http://SEU_IP:3000.

4. Pronto para Usar!
🎉 Parabéns! Agora sua Evolution API v1.8 está rodando localmente no Windows, dentro de um ambiente Linux via WSL2. Use o endereço no navegador ou em ferramentas como Postman.

Se tiver dúvidas, sugestões ou encontrou algo para melhorar, abra uma issue ou mande aquele PR no repositório! 🚀



