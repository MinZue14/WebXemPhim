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

liet ke danh sach docker
1. sudo docker ps -a
2. sudo docker start website_film_web
neu bi loi thi nhap: sudo lsof -i :8080
neu co nhung ung dung khac thi nhap: sudo kill -9 ????? ????? ???????? ?????????
sau do nhap lai: sudo lsof -i :8080
tiep do: sudo docker start website_film_web
roi chay bai gg: http://localhost:8080/user/php/login.php



http://localhost/ex_starts/B_Website/user/php/

