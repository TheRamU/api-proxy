service_path="/etc/systemd/system/api-proxy.service"

echo 正在卸载...

systemctl stop api-proxy
rm -f $service_path
systemctl daemon-reload

echo 卸载完成!
