# 💎 Ruby WhatsApp Bot (`Multi-Device Protocol Engine`)

Um bot expressivo, elegante e dinâmico para **WhatsApp Multi-Device** em **Ruby** com suporte a renderização de QR Code ANSI direto no terminal via `rqrcode`.

Totalmente preparado para hospedagem local e nuvem como **Discloud**.

---

## 🚀 Funcionalidades

- 📲 **Conexão Multi-Device**: Exibição do QR Code em blocos ANSI no terminal.
- 🏓 **Comando `!ping` ou `/ping`**:
  - Latência de processamento em milissegundos.
  - Tempo de atividade do bot (*Uptime* formatado em horas, minutos e segundos).
  - Informações do ambiente e versão do interpretador Ruby.
- 💎 **Código Idiomático**: Código limpo, modular e de fácil extensão.
- ☁️ **Compatível com Discloud**: Arquivo `discloud.config` pronto para deploy com apenas 100MB de RAM.

---

## 📁 Estrutura do Projeto

```text
ruby-whatsapp-bot/
├── bot.rb                 # Código principal, renderização de QR Code e handlers
├── Gemfile                # Dependências Ruby (rqrcode, dotenv)
├── discloud.config        # Arquivo de configuração da Discloud
├── .env.example           # Modelo de variáveis de ambiente
├── .gitignore             # Arquivos ignorados pelo Git
└── README.md              # Documentação do projeto
```

---

## 🛠️ Pré-requisitos

- **Ruby 3.0+** instalado.
- Smartphone com o aplicativo do **WhatsApp** instalado.

---

## ⚙️ Configuração e Instalação Local

### 1. Clonar o Repositório
```bash
git clone https://github.com/jjuniornoc-rgb/ruby-whatsapp-bot.git
cd ruby-whatsapp-bot
```

### 2. Instalar Dependências
```bash
bundle install
```

---

## ▶️ Executando o Bot

```bash
ruby bot.rb
# ou com bundler:
bundle exec ruby bot.rb
```

1. Um **QR Code** será desenhado no terminal.
2. Abra o WhatsApp no celular > **Aparelhos conectados** > **Conectar um aparelho**.
3. Aponte a câmera para o QR Code.
4. Ao conectar, envie `!ping` ou `/ping` em qualquer chat para receber a resposta do bot!

---

## ☁️ Hospedagem na Discloud

1. Comprima os seguintes arquivos num arquivo `.zip`:
   - `bot.rb`
   - `Gemfile`
   - `discloud.config`
   - `.env`
2. No painel da [Discloud](https://discloudbot.com) ou via CLI da Discloud:
   ```bash
   discloud upload
   ```
3. A Discloud inicializará o bot automaticamente através de `bot.rb`.

---

## 📜 Licença

Distribuído sob a licença MIT. Consulte `LICENSE` para mais informações.
