FROM alpine:3.22.0

RUN apk add --no-cache tzdata ca-certificates

COPY ./OpenCoreUI /app/OpenCoreUI

WORKDIR /app

EXPOSE 8168

ENV TZ=Asia/Shanghai

CMD ["./OpenCoreUI"]
