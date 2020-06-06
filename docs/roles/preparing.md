# pddg.dvr.preparing

Mirakurun・Chinachuなど各種サービスを利用するに当たり、必要な共通処理を実行するロール。  
値のバリデーションや、デバイスの存在確認を行います。

!!! note
    チューナーデバイスの存在が確認できなかった場合、このロールの実行は失敗します。
    チューナーデバイスを利用するホストに対して実行する場合、事前にPT3ドライバーのインストールを行って下さい。

## Variables

| 変数名 | デフォルト値 | 説明 |
| ------ | ------------ | ---- |
| `dvr_use_vaapi` | `no`  | ChinachuおよびEPGStationコンテナにインストールするffmpegでVAAPIを有効にするかどうか |
| `dvr_vaapi_device` | `""` | VAAPIデバイスへのパス |
| `dvr_network_name` | `"dvr"` | 各サービスを接続するためのDockerネットワークの名称 |
| `dvr_tuner_devices` | `[]` | 利用するチューナーデバイスのリスト。例えば `["/dev/pt3video0", "/dev/pt3video1"]` など |

!!! warning
    VAAPIの有効化は実験的な機能です。十分な知識が無い場合、無効にすることを推奨します。

!!! warning
    `dvr_network_name` では、単一ホスト上のbridgeネットワークのみがサポートされています。
    複数ホスト間にまたがるネットワークが構築されるわけではないことに留意して下さい。

## Example Playbook

```yaml
---
- hosts: all
  tasks:
    - import_role:
        name: pddg.dvr.preparing
      vars:
        dvr_use_vaapi: yes
        dvr_vaapi_device: "/dev/dri/card0"
        dvr_tuner_devices:
          - "/dev/pt3video0"
          - "/dev/pt3video1"
          - "/dev/pt3video2"
          - "/dev/pt3video3"
```
