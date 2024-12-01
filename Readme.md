# Webhook en Ruby con Sinatra

Este proyecto es un ejemplo básico de un webhook utilizando Sinatra en Ruby. El webhook recibe solicitudes HTTP POST y responde con un mensaje de confirmación. Además, incluye una interfaz web para probar solicitudes POST.

## Pasos para ejecutar el proyecto

1. **Clona el proyecto desde GitHub**:
   ```bash
   git clone <URL-DE-TU-REPOSITORIO>
   ```

2. **Instala las dependencias necesarias**:
   Si tienes un `Gemfile`, ejecuta:
   ```bash
   bundle install
   ```
   Si no tienes Bundler instalado, instala primero Bundler:
   ```bash
   gem install bundler
   ```

3. **Ejecuta el servidor**:
   ```bash
   ruby app.rb
   ```

4. **Prueba los endpoints**:

   - **Endpoint principal** (`GET /`):
     - Abre en el navegador: `http://localhost:5000/`
     - Muestra una interfaz para probar solicitudes POST.

   - **Webhook GET** (`GET /webhook`):
     - Abre en el navegador: `http://localhost:5000/webhook`
     - Muestra un mensaje indicando que el endpoint está funcionando.

   - **Webhook POST** (`POST /webhook`):
     - Usa herramientas como Postman o `curl` para enviar datos JSON:
       ```bash
       curl -X POST http://localhost:5000/webhook -H "Content-Type: application/json" -d '{"key": "value"}'
       ```

## Archivos importantes

- **`app.rb`**: Contiene la configuración del servidor y los endpoints.
- **`index.html`**: Una interfaz web para enviar solicitudes POST al webhook.

## Notas
- El servidor está configurado para correr en el puerto `5000`.
- Puedes modificar la URL de conexión en `index.html` para usar ngrok o un dominio público.

---

¡Listo! Ahora puedes probar y desplegar tu webhook.
