FROM --platform=linux/amd64 debian:stable-slim

RUN apt-get update && apt-get install -y ca-certificates

#binario notely
ADD notely /usr/bin/notely

#archivos estáticos
ADD static /app/static

CMD ["notely"]

