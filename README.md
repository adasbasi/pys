### Neler Yapılmalı?


```bash
$ vim config/databse.yml
```
buradaki bilgileri kendi mysql ayarlarımaza göre düzenliyoruz.(root ve şifre
kısmı)

```bash
$ mysql -u root -p
> create table pys_development;
CTRL-C

$ rake db:migrate
$ rails s
```
