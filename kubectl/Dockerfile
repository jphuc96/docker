FROM alpine as builder

RUN apk add curl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
    
FROM alpine
# RUN apk add --no-cache gettext
COPY --from=builder /kubectl /usr/local/bin/kubectl
