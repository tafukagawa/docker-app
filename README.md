# Dockerfile 復習用ミニ教材

このリポジトリは **Dockerfile の基本を復習するため** の最小構成です。

## 含まれるファイル

- `Dockerfile`: Docker イメージの作成手順。
- `app.py`: コンテナ内で起動する最小の Python Web サーバー。

## まず理解したい Dockerfile の 6 命令

1. `FROM`  
   ベースイメージを指定します。
2. `WORKDIR`  
   以降の作業ディレクトリを指定します。
3. `COPY`  
   ホストのファイルをイメージへコピーします。
4. `RUN`  
   ビルド時に実行するコマンドです（依存関係のインストールなど）。
5. `EXPOSE`  
   コンテナが待ち受けるポートを宣言します（実際の公開は `-p`）。
6. `CMD`  
   コンテナ起動時のデフォルトコマンドを指定します。

## 使い方

### 1) イメージをビルド

```bash
docker build -t dockerfile-review:latest .
```

### 2) コンテナを起動

```bash
docker run --rm -p 8000:8000 dockerfile-review:latest
```

ブラウザで `http://localhost:8000` を開くと、レスポンスが確認できます。

## 復習チェックリスト

- [ ] `FROM` を別の軽量イメージに変えられる
- [ ] `WORKDIR` を変えたときの `COPY` への影響を説明できる
- [ ] `EXPOSE 8000` だけでは公開されない理由を説明できる
- [ ] `CMD` を JSON 形式（exec 形式）で書く理由を説明できる

## 次の練習（任意）

- `RUN useradd` で非 root ユーザー実行に変更する
- `.dockerignore` を追加してビルドコンテキスト最適化を試す
- `HEALTHCHECK` を追加する
