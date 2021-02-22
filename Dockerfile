
FROM golang:1.15.2-alpine
# アップデートとgitインストール
RUN apk update && apk add git

RUN mkdir /go/src/app
# ワーキングディレクトリ設定
WORKDIR /go/src/app
# ホストのファイルをコンテナの作業ディレクトリに移行
ADD . /go/src/app

RUN go get -u github.com/oxequa/realize 
CMD ["realize", "start"]