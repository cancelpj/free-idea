FROM alpine:latest
WORKDIR /app/crack
COPY ./app/IntelliJIDEALicenseServer_linux_amd64 ./
COPY ./app/crack.sh ./
RUN chmod +x IntelliJIDEALicenseServer_linux_amd64 crack.sh
EXPOSE 25252
CMD ["./crack.sh"]