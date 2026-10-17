FROM alpine:latest
WORKDIR /app
COPY Chsherbina_Nikita_info.txt .
RUN apk add --no-cache bash

ENV STUDENT_NAME="Nikita"
ENV STUDENT_SURNAME="Chsherbina"
ENV STUDENT_GROUP="IT2-2314"
ENV STUDENT_ID="38222"

EXPOSE 8080

CMD ["sh", "-c", "echo '================================' && echo 'DevOps Student Application' && echo '================================' && echo \"Name: $STUDENT_NAME\" && echo \"Surname: $STUDENT_SURNAME\" && echo \"Group: $STUDENT_GROUP\" && echo \"Student ID: $STUDENT_ID\" && echo '' && echo 'Application is running successfully!'"]
