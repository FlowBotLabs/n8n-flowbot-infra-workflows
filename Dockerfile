# Usa la imagen oficial de n8n como base
FROM n8nio/n8n:latest

# Expón el puerto que n8n usará internamente.
# Render mapeará su $PORT a este puerto expuesto.
EXPOSE 8080

# El CMD en el Dockerfile es el comando por defecto.
# n8n ya configura su propio CMD para escuchar en 8080.
# Render DEBE respetar este CMD si no se sobrescribe incorrectamente.
# Si Render sobrescribe con algo que falla, ahí está el problema.
# PARA EVITAR SOBREESCRIBIR MAL: ¡DEJAREMOS EL CAMPO "Docker Command" EN RENDER VACÍO SI ES POSIBLE!
