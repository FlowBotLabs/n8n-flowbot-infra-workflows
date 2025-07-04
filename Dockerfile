# Usa la imagen oficial de n8n como base
FROM n8nio/n8n:latest

# Expón el puerto que n8n usará internamente.
# Render mapeará su $PORT a este puerto expuesto.
EXPOSE 8080

# Comando de inicio por defecto para n8n.
# npx node /usr/local/bin/n8n --host 0.0.0.0 --port 8080 --no- கருtype-check
# Si Render ejecuta el CMD del Dockerfile correctamente, esto debería ser suficiente.
# Si Render NECESITA un Start Command específico, lo pondremos en Render.
# Por ahora, confiamos en el CMD del Dockerfile.
# CMD ["node", "/usr/local/bin/n8n", "--host", "0.0.0.0", "--port", "8080", "--no- கருtype-check"]
# Confiamos en que la imagen n8nio/n8n:latest ya tiene un CMD adecuado. Si Render lo sobrescribe mal, es el problema.
