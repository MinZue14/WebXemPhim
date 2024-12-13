# WebXemPhim
0. cd Downloads/cham/B_Website
1. cd ~/Downloads/
2. sudo /opt/lampp/lampp status
3. sudo /opt/lampp/lampp start
4. nếu như apache is not running:
chạy lệnh này: sudo netstat -tuln | grep :80
nếu kết quả là: tcp6       0      0 :::80                   :::*                    LISTEN
thì chạy lệnh: sudo systemctl stop apache2
sau đó chạy lệnh này: sudo netstat -tuln | grep :80
nếu kết quả là ko có gì thì chạy:
2. sudo /opt/lampp/lampp status
3. sudo /opt/lampp/lampp start

