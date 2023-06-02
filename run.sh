curl -Lo /root/sb https://github.com/SagerNet/sing-box/releases/download/v1.2.7/sing-box-1.2.7-linux-amd64.tar.gz && tar -xzf /root/sb && cp -f /root/sing-box-*/sing-box /root && rm -r /root/sb /root/sing-box-* && chown root:root /root/sing-box && chmod +x /root/sing-box

curl -Lo /root/sing-box_config.json https://raw.githubusercontent.com/randomguy-on-internet/fantastic-lamp/main/reality-singbox.json

curl -Lo /etc/systemd/system/sing-box.service https://raw.githubusercontent.com/iSegaro/Sing-Box/main/sing-box.service && systemctl daemon-reload

systemctl enable --now sing-box && sleep 0.2 && systemctl status sing-box