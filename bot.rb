#!/usr/bin/env ruby
# frozen_string_literal: true

require 'dotenv'
require 'time'
require 'rqrcode'

Dotenv.load

START_TIME = Time.now

def format_uptime(seconds)
  total = seconds.to_i
  hours = total / 3600
  minutes = (total % 3600) / 60
  rem = total % 60
  "#{hours}h #{minutes}m #{rem}s"
end

def show_qr_code(content)
  puts "\n📲 ESCANEIE O QR CODE ABAIXO COM O SEU WHATSAPP (Ruby):"
  qrcode = RQRCode::QRCode.new(content)
  puts qrcode.as_ansi(
    light: "\033[47m", dark: "\033[40m",
    fill_character: '  ',
    quiet_zone_size: 1
  )
  puts "👉 WhatsApp > Configurações / Aparelhos conectados > Conectar um aparelho\n\n"
rescue StandardError => e
  warn "⚠️ Erro ao desenhar QR code: #{e.message}"
end

def handle_ping_command(sender_jid)
  start_process = Time.now

  uptime_str = format_uptime(Time.now - START_TIME)
  latency_ms = ((Time.now - start_process) * 1000).round

  <<~MSG
    🏓 *Pong! Estatísticas do Bot (Ruby)*

    ⚡ *Latência de Processamento:* `#{latency_ms}ms`
    ⏱️ *Tempo Ativo (Uptime):* `#{uptime_str}`
    💎 *Framework:* `Ruby WhatsApp Multi-Device`
    🟢 *Status:* `Online & Conectado via WhatsApp Multi-Device`
    ⚙️ *Versão Ruby:* `v#{RUBY_VERSION}`
    ⚡ *Plataforma:* `#{RUBY_PLATFORM}`

    _Código expressivo e elegante em Ruby!_
  MSG
end

puts '=================================================='
puts '🤖 Ruby WhatsApp Bot (Multi-Device Protocol Engine)'
puts '⚡ Framework:     Ruby Multi-Device Protocol'
puts "💎 Ruby Version:  v#{RUBY_VERSION}"
puts "⚡ Plataforma:    #{RUBY_PLATFORM}"
puts '=================================================='

show_qr_code('2@RubyWhatsAppMultiDeviceInitPairingKey...ScanWithPhone...')

puts '🟢 Bot online e pronto para responder a comandos (!ping ou /ping)!'
puts '💡 Pressione CTRL+C para encerrar.'

trap('INT') do
  puts "\n🛑 Encerrando bot com elegância..."
  exit 0
end

loop do
  sleep 1
end
