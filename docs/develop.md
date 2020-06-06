# How to develop

## Environment

以下の環境を想定しています。

- Python 3.8 or later
- Pipenv

リポジトリをクローンし、必要な依存関係をインストールします。

```
$ git clone https://github.com/pddg/ansible-collection-dvr
$ cd ansible-collection-dvr
$ pipenv install
```

## Build documents

ドキュメントの作成には[mkdocs](https://github.com/mkdocs/mkdocs)を利用しています。  
手元での変更の確認のためには以下の様にします。

```
$ make doc-serve
または
$ pipenv run mkdocs serve
```

ブラウザで[http://127.0.0.1:8000/](http://127.0.0.1:8000/)を開きます。
