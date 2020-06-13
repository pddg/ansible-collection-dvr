PT3 driver
=========

Requirements
------------

`sudo`できる必要があります。
また、これはドライバのみであり、利用するためにはPT3本体が必要です。

Role Variables
--------------

https://github.com/m-tsudo/pt3 のコミットのSHA-1ハッシュを指定できます。

```yaml
pt3_driver_version: "a56f3cee4397a76d864a7eff1882a450e37ce950"
```

pt3ドライバをビルドするためのディレクトリを指定できます。

```yaml
pt3_base_dir: "/opt/drivers/pt3"
```

Dependencies
------------

特にありません。

Example Playbook
----------------

```yaml
- hosts: record_server
  roles:
    - name: pddg.pt3_driver
```

License
-------

GPL v3

Author Information
------------------

- https://github.com/pddg

