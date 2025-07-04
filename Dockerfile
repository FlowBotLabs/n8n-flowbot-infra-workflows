# Usa la imagen oficial de n8n como base
FROM n8nio/n8n:latest

# Expón el puerto que n8n usará. Render lo mapeará a su propio $PORT
EXPOSE 8080

# Comando de inicio por defecto para n8n. Esto es lo que Render debería ejecutar.
# Aseguramos que escucha en el host y puerto correcto.
CMD ["node", "/usr/local/bin/n8n", "--host", "0.0.0.0", "--port", "8080", "--no- கருtype-check"]
