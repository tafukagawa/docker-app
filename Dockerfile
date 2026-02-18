# 1) ベースイメージ
FROM python:3.12-slim

# 2) コンテナ内の作業ディレクトリ
WORKDIR /app

# 3) 必要ファイルをコピー
COPY app.py /app/app.py

# 4) アプリの待受ポートを宣言（公開は docker run -p で行う）
EXPOSE 8000

# 5) コンテナ起動時に実行するコマンド
CMD ["python", "app.py"]
