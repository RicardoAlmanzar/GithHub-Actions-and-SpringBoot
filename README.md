# GithHub-Actions-and-SpringBoot

## Notas rápidas de CI/CD

Corregir y verificar el pipeline GitHub Actions:

- Alinear versión de Java entre `pom.xml` y el workflow (`actions/setup-java`).
- Ejecutar la compilación antes de construir la imagen Docker: `mvn -B clean package`.
- Usar `Dockerfile` (mayúscula) y copiar el JAR con un patrón: `COPY target/*.jar /app.jar`.
- Asegurar que `image:` usa tu usuario de Docker Hub: `ricardoalmanzar/api-springboot-image`.
- Guardar `DOCKER_USERNAME` y `DOCKER_PASSWORD` en Settings → Secrets y usar `docker/login-action@v2`.
- Preferir `docker/build-push-action@v4` para build y push en CI.
- Añadir pasos de debug en CI: `java -version`, `mvn -v`, `ls -la target`, `docker images`.

## Comandos útiles (local)

Compilar y crear JAR:

```powershell
./mvnw -B clean package
```

Construir y ejecutar la imagen Docker localmente:

```powershell
docker build -t ricardoalmanzar/api-springboot-image:latest .
docker run --rm -p 8080:8080 ricardoalmanzar/api-springboot-image:latest
```

Empujar la imagen a Docker Hub (tras `docker login`):

```powershell
docker push ricardoalmanzar/api-springboot-image:latest
```
