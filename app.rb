require 'sinatra'
require 'json'


# Servir la interfaz HTML
get '/' do
  send_file 'index.html'
end

# Endpoint para manejar solicitudes GET a /webhook
get '/webhook' do
  "Este es un endpoint de webhook. Usa una solicitud POST para enviar datos."
end

# Endpoint para manejar solicitudes POST a /webhook
post '/webhook' do
  request_payload = request.body.read
  data = JSON.parse(request_payload) rescue nil

  if data
    puts "Datos recibidos: #{data}"
    status 200
    content_type :json
    { message: "Webhook recibido con éxito", status: "success", received_data: data }.to_json
  else
    status 400
    content_type :json
    { message: "Solicitud no es JSON", status: "error" }.to_json
  end
end

# Configurar el puerto del servidor
set :port, 5000
