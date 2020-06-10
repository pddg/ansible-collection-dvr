# Introduction

## About this collection

録画サーバ構築のためのAnsible Collection。

!!! warning
    このAnsible Collectionは開発段階のプロダクトです。十分ご理解の上、ご利用下さい。

## Features

### Roles

- `preparing` - Mirakurun・Chinachu・EPGStationのための共通タスク
- `pt3_driver` - PT3ドライバーのインストール（未実装）
- `mirakurun` - Mirakurunのデプロイ（未実装）
- `chinachu` - Chinachuのデプロイ（未実装）
- `epgstation` - EPGStationのデプロイ（未実装）

### Modules

- `tv_tuners_info` - チューナーデバイスを自動で探索（未実装）
- `mirakurun_channels` - Mirakurunのチャンネルスキャンを実行（未実装）
- `mirakurun_channels_info` - Mirakurunのチャンネル情報を取得（未実装）

## Supported Platforms

下記の環境に対する適応を想定しています。

- Ubuntu Server
    - Ubuntu Server 20.04
    - Ubuntu Server 18.04
- CentOS
    - CentOS 8
    - CentOS 7

!!! note
    Ansibleの動作のため、各環境にはPythonがインストールされており、SSHでアクセスできる必要があります。
    また、ルート権限でコマンドを実行できるユーザが必要です。

Ansible Playbookを実行するマシンに関しては、Ansibleの動作が保証されている範囲であれば特に制限はありませんが、macOSまたはLinux（WSL含む）推奨です。

## Example Playbook

TBD

## Author

- [pddg](https://github.com/pddg)

## License

GPLv3

