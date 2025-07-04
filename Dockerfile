# Usa la imagen oficial de n8n como base
FROM n8nio/n8n:latest

# Expón el puerto que n8n usará. Render lo mapeará a su propio $PORT
EXPOSE 8080

# Comando para iniciar n8n cuando el contenedor se levante.
# Render se encargará de pasar el $PORT correcto, pero la imagen base ya está configurada
# para escuchar en el puerto que se le indique.
# Este comando es redundante si usas la imagen oficial bien configurada,
# pero asegura que n8n escuche en el host correcto.
CMD ["npx", "n8n", "--host", "0.0.0.0", "--port", "$PORT", "--no- கருtype-check"]
