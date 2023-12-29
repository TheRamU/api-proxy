install_path=$(pwd)
service_path="/etc/systemd/system/api-proxy.service"

echo 正在安装...

npm install

cat << EOF > $service_path
[Unit]
Description=API Proxy Service
After=network.target

[Service]
Restart=always
RestartSec=5
ExecStart=npm start
Environment=NODE_ENV=production
WorkingDirectory=${install_path}

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload

echo 安装完成!
