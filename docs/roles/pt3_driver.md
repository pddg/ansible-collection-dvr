# pt3\_driver

対象のホストにPT3ドライバーをインストールします。ドライバーは https://github.com/m-tsudo/pt3 を利用しています。
DKMSを利用することで、Linuxカーネルの更新が行われても問題ないようにインストールします。

!!! warning
    このロールは実行中に対象のホストの再起動を行う場合があります。

## Variables

| 変数名 | デフォルト値 | 説明 |
| ------ | ------------ | ---- |
| `pt3_base_dir` | `"/opt/drivers/pt3"`  | PT3ドライバーのソースコードをクローンし、ビルドするディレクトリ |
| `pt3_driver_version` | `"a56f3cee4397a76d864a7eff1882a450e37ce950"` | m-tsudo/pt3リポジトリのタグ名、ブランチ名、またはコミットハッシュ |

## Example Playbook

```yaml
---
- hosts: all
  tasks:
    - import_role:
        name: pddg.dvr.pt3_driver
```

常に最新のバージョンをインストールする場合（非推奨）

```
- hosts: all
  tasks:
    - import_role:
        name: pddg.dvr.pt3_driver
      vars:
        pt3_base_dir: "/opt/drivers/pt3_driver"
        pt3_driver_version: "master"
```

