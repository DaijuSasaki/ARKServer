<h2>DockerでARKサーバーを立てる</h2>

ホストのポート7778,27015をあけておく(tcp,udp共に)<br>
ディレクトリ内にあるarkmanager/instances/main.cfgの<br>
ark_ServerPassword="sample1234"<br>
ark_ServerAdminPassword="admin1234"<br>
の部分を好きなパスワードに変更する<br>
sample1234のほうがサーバーに入るときに使うパスワードでadmin1234が管理者のパスワード

$ docker compose up
でARKサーバーが立ち上がるのでSteamからIPアドレスで検索して終わり
