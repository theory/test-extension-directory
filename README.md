# Testing Postgres Extension Directory

A simple test case for [this bug report](https://postgr.es/m/C86FCCFD-0C84-4F70-BA54-72C04A2F69DF@justatheory.com). Sample run:

```console
$ make install
gmkdir -p '/data/pgsql/share/extension'
gmkdir -p '/data/pgsql/share/extension'
ginstall -c -m 644 .//click.control '/data/pgsql/share/extension/'
ginstall -c -m 644 .//sql/click--1.0.0.sql  '/data/pgsql/share/extension/'
```

Expected output:

```console
$ make install
gmkdir -p '/data/pgsql/share/extension/click'
gmkdir -p '/data/pgsql/share/extension/click'
ginstall -c -m 644 .//click.control '/data/pgsql/share/extension/'
ginstall -c -m 644 .//sql/click--1.0.0.sql  '/data/pgsql/share/extension/click'
```
