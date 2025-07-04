# Usa la imagen oficial de n8n como base
FROM n8nio/n8n:latest

# Expón el puerto que n8n usará internamente.
EXPOSE 8080

# Comando de inicio por defecto para n8n.
# Este CMD es lo que debe ejecutarse si Render respeta el Dockerfile.
# Usamos el puerto fijo 8080 aquí porque es el expuesto y las variables de entorno de n8n lo esperan así.
CMD ["node", "/usr/local/bin/n8n", "--host", "0.0.0.0", "--port", "8080", "--no- கருtype-check"]
