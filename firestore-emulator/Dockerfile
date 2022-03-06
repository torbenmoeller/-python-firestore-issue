FROM google/cloud-sdk:374.0.0
RUN apt-get -y install google-cloud-sdk-firestore-emulator google-cloud-sdk
COPY docker-entrypoint.sh .

EXPOSE 8180
ENTRYPOINT ["./docker-entrypoint.sh"]
