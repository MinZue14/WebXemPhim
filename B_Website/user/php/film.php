<?php 
    session_start(); // Khởi động session
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FILM</title>

    <link rel="shortcut icon" href="https://o.remove.bg/downloads/518cdd08-0e9a-4429-af07-22a2b9755e51/b0eb89900aa4843b784a771063a90e9a-removebg-preview.png" type="image/x-icon">
    <!-- <link rel="stylesheet" href="menu.css"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.min.css">
  <!--============== CSS =============-->
    <link rel="stylesheet" href="../css/menuExtra.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="../css/menu.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="../css/film.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="../css/index.css?v=<?php echo time(); ?>">
  <!--============== Bootstrap link =============-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
  <!-- _____ Slick Slider _____ -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.slick/1.6.0/slick.css">

    <style>
        body{
            background-color: rgb(24 22 22 / 91%);
        }
        .main-body-left{
            grid-area: h2;
            width: 75%;
        }
        .main-body-right{
            grid-area: h3;
            width: 25%;

        }
        .section-update .section, .section-nominate .section{
            width: 100%;
        }
        .section-update, .section-nominate{
            padding: 0;
        }
        .section-update i, .section-nominate i{
            margin: 10rem 0 0 4rem;
        }
        @media screen and (max-width:1130px) {
            .main-body{
                flex-wrap: wrap;
                height: auto;
            }
            .main-body-left{
                width: 100%;
            }
            
            .main-body-right{
                width: 100%;
                margin-top: 50px;
            }

        }
    </style>


</head>
<body>
<?php 
    include('database.php');
?>
    <div class="header">
        <div class="logo">
            <a href="index.php"><img src="../image/ava.png" alt=""></a>
        </div>
        <div class="menu">
            <?php
            echo (buildMenu($menuItems));
            ?>
        </div>
        <div class="search">
            <form action="search.php" method="get" style="display:flex; width:100%;">
                <button class="searchbtn" id="searchsubmit" type="submit"><i class="ri-search-2-line"></i></button>
                <input class="searchtext" type="text" name="search_query" placeholder="Tìm: tên phim, đạo diễn, diễn viên">
            </form>
        </div>
        <div class="login">
        <?php
            if (isset($_SESSION['user_id'])) {
                // Nếu đã đăng nhập, hiển thị icon user và thông tin người dùng
                echo ('<input type="checkbox" id="checkbox">');
                echo ('<label for="checkbox" class="container_user_infor" style="display:flex; flex-direction:column;align-items: center;">');
                echo '<i class="ri-user-heart-line"></i>';
                echo '<span class="username">' . $_SESSION['username'] . '</span>';
                echo ('</label>');
                echo ('<div class="user_infor">
                            <a href="logout.php">Thoát</a>
                        </div>');

            } else {
                // Nếu chưa đăng nhập, hiển thị nút đăng nhập
                echo '<a class="loginmenu" href="login.php">Đăng nhập</a>';
            }
        ?>
        </div>
        <div class="menu_extra">
            <label for="nav-pc-input" href="#" id="menu_extra" class="menu_extra menu"><i class="ri-menu-fold-line"></i></label>
            
            <input type="checkbox"  hidden  name="" class="nav-input"   id="nav-pc-input">
            <label for="nav-pc-input" class="nav-overlay"></label>

            <nav class="nav-pc">
                <label for="nav-pc-input" class="nav-close"><i class="ri-close-line"></i></label>
                <ul class="nav-list">
                <?php
                    if (isset($_SESSION['user_id'])) {
                        // Nếu đã đăng nhập, hiển thị icon user và thông tin người dùng
                        echo ('<input type="checkbox" id="checkbox">');
                        echo ('<label for="checkbox" class="container_user_infor" 
                                style="font-size:3rem; color:black; width:90%;">');
                        echo '<i class="ri-user-heart-line"></i>';
                        echo '<span class="username"    style="font-size:28px; color:black;margin-left: 15px;">' 
                                . $_SESSION['username'] 
                                . '</span>';
                        echo ('</label><br>');

                        echo ('<div class="nav-menu">' . buildMenu($menuItems)) . '</div><br><br><br><br><br><br>';
                        echo ('<a href="logout.php">Thoát</a>');
        
                    } else {
                        // Nếu chưa đăng nhập, hiển thị nút đăng nhập
                        echo '<a class="loginmenu" href="login.php">Đăng nhập</a>';
                    }
                ?>

                </ul>
            </nav>
        </div>
    </div>
    <!-- /////////////////////////////////  BODY  /////////////////////////////////////////////// -->
    <div class="container-body">
        <?php
            $conn = new mysqli('localhost', 'root', '', 'website_film');
            $id = $_GET['id'];
            $sql = "SELECT * FROM movie WHERE id_movie={$id}";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo"
                    <div class='background-img-movie' style=\"background-image: url('{$row['url_movie']}');\">
                        <div class='container-content'>
                            <div class='content'>
                                <a href='index.php'>Trang Chủ ></a>
                                <span>{$row['genre']}</span>

                                <div class='container-section'>
                                    <h2>{$row['name']}</h2>
                                    <p>{$row['name']}</p>

                                    <div class='section'>
                                        <label>
                                        {$row['description']}
                                        </label>
                                        <div class='detail'>
                                            <div class='detail-right'>
                                                <span>Thể Loại:</span>
                                                <label>{$row['genre']}</label>
                                                <span>Quốc Gia:</span>
                                                <label>{$row['country']}</label>
                                                <span>Diễn Viên:</span>
                                                <label>{$row['actor_name']}</label>
                                            </div>
                                            <div class='detail-left'>
                                                <span>Trạng Thái:</span>
                                                <label>{$row['status']}</label>
                                                <span>Đạo Diễn:</span>
                                                <label>{$row['director']}</label>
                                                <span>Cập Nhật:</span>
                                                <label>{$row['release_year']}</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class='container-play'>
                            <div class='circle'>
                            </div>
                            <i class='ri-play-mini-fill'></i>
                        </div>
                    </div

                </div>
                <div class='container-film' style='display:none;'>
                    <video controls>
                        <source src='../image/video.mp4'>
                    </video>
                    <div class='text-center-1'>
                        <span><i class='ri-skip-right-line'></i>Tập tiếp</span>
                        <span><i class='ri-lightbulb-line'></i>Tắt đèn</span>
                        <span><i class='ri-save-line'></i>Theo dõi</span>
                        <span><i class='ri-zoom-in-line'></i>Phóng to</span>
                        <span><i class='ri-eye-off-line'></i>Tắt QC</span>
                    </div>
                    <div class='text-center-2'>
                        &nbsp;&nbsp; Serve dự phòng: 
                        <span style='background-color:#FFB534;'># VK 1</span>
                        <span style='background-color:#E3651D;'># VK 2</span>
                        <span style='background-color:#E3651D;'># VK 3</span>
                    </div>
                    <div class='text-episode'>
                        &nbsp;&nbsp;Số tập: <br><br>
                        <div>                            
                            <span>01</span>
                            <span>03</span>
                            <span>04</span>
                            <span>05</span>
                            <span>06</span>
                            <span>02</span>
                            <span>07</span>
                            <span>08</span>
                            <span>09</span>
                            <span>10</span>
                        </div>
        
                    </div>
                </div>
                
                "; 
                                
                }
            }
        ?>
        <!-- ////////////////////  main BODY  ///////////// -->
        <div class="main-body">

            <!-- -------------------------  lEFT BODY  ---------------------- -->
            <div class="main-body-left">

                <div class="section-update">
                    <h2>PHIM NỔI BẬT > <span style="color: #BE3144;">Tất cả</span></h2>
                    <div class="section-update section">
                        <?php
                            $conn = new mysqli('localhost', 'root', '', 'website_film');

                            if ($conn->connect_error) {
                                die("Kết nối thất bại: " . $conn->connect_error);
                            }

                            $sql = "SELECT * FROM movie WHERE release_year=2023";
                            $result = $conn->query($sql);

                            if ($result->num_rows > 0) {
                                while($row = $result->fetch_assoc()) {
                                    echo "<div class='section-update content'' onclick='redirectToFilmPage(";echo '$row["id_movie"];'; 
                                    // TAO CHỈ THÊM THẺ a
                                    echo ")'>
                                        <a href='film.php?id={$row['id_movie']}'  
                                        style='text-decoration:none; '>
                                            <span class='status_movie'>{$row["status"]}</span>
                                            <img class='url_movie' src='{$row["url_movie"]}' alt=''>
                                            <p class='name_movie'>{$row["name"]}</p>
                                            <i class='ri-play-circle-fill'></i>
                                        </a>
                                    </div>";
                                }
                            } else {
                                echo "<p>Không có kết quả.</p>";
                            }
                        ?>
                    </div>
                    <div class="pagination">
                        <a href="#">Previous</a>
                        <a href="#"class="active">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#">6</a>
                        <a href="#">Next</a>
                    </div>
                </div>

                <div class="section-nominate" style="margin-top: 20px;">
                    <h2>PHIM ĐỀ CỬ > <span style="color: #BE3144;">Tất cả</span></h2>
                    <div class="section-nominate section">
                        <?php
                            $conn = new mysqli('localhost', 'root', '', 'website_film');

                            if ($conn->connect_error) {
                                die("Kết nối thất bại: " . $conn->connect_error);
                            }

                            $sql = "SELECT * FROM movie WHERE id_movie<40";
                            $result = $conn->query($sql);

                            if ($result->num_rows > 0) {
                                while($row = $result->fetch_assoc()) {
                                    $link = "film.php?id={$row['id_movie']}";
                                    echo 
                                    "<div class='section-nominate content'>
                                        <a href='film.php?id={$row['id_movie']}'
                                        style='text-decoration:none; '>
                                            <span class='updated_episode'>{$row["updated_episode"]}</span>
                                            <img class='url_movie' src='{$row["url_movie"]}' alt=''>
                                            <p class='name_movie'>{$row["name"]}</p>
                                            <i class='ri-play-circle-fill'></i>
                                        </a>
                                    </div>";
                                }
                            } else {
                                echo "<p>Không có kết quả.</p>";
                            }
                        ?>
                    </div>
                    <div class="pagination">
                        <a href="#">Previous</a>
                        <a href="#"class="active">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#">6</a>
                        <a href="#">Next</a>
                    </div>

                </div>

                <div class="section-extend">
                    <b>THEO NĂM</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span>2023</span>&nbsp;&nbsp;
                    <span>2022</span>&nbsp;&nbsp;
                    <span>2021</span>&nbsp;&nbsp;
                    <span>2020</span>&nbsp;&nbsp;
                    <span>...</span>

                </div>

            </div>
            
            <!-- -------------------------  RIGHT BODY  ---------------------- -->
            <div class="main-body-right">
                <h2>&nbsp; BẢNG XẾP HẠNG</h2>
                <?php 
                    include('chart.php');
                ?>
            </div>

        </div>

    </div>
    

    <div class="container-footer">
        <div class="extend-part">
            <div class="logo">
                <img src="../image/ava.png" alt="">
            </div>
            <div class="extend-content">
                <label>XEM PHIM</label>
                <label>THUẬT NGỮ TRONG PHIM</label>
                <label>BÁO LỖI</label>
                <label>RIÊNG TƯ</label>
            </div>
            <div class="contact">
                <i class="ri-facebook-fill"></i>
                <i class="ri-twitter-fill"></i>
                <i class="ri-twitch-fill"></i>
                <i class="ri-youtube-fill"></i>
                <i class="ri-arrow-up-double-line"></i>
            </div>
        </div>

        <div class="footer">
            <p>
                hanh dong - phieu luu - kinh di - vien tuong - vu tru - lang man -
                hoc duong - vo thuat - co trang - hien dai - chien tranh - gia dinh <br>
                - hoat hinh - bao luc - nhe nhang - hai huoc - trinh tham - phieu luu - 
                tam ly - khoa hoc - gia tuong - linh di - suc manh - tuoi tre
            </p>
            <p>Yoora.Net không chịu trách nhiệm đối với bất kỳ nội dung nào được đăng tải trong trang web này.</p>
            <p>Mọi nội dung đều được sưu tầm và nhúng vào website tương tự như công cụ tìm kiếm Google.</p>
            <p>Disclaimer: This site does not store any files on its server. All contents are provided by non-affiliated third parties.</p>
            <p>Liên hệ: info.yoora@gmail.com</p>
        </div>

    </div>


<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<script>
    $(document).ready(function() {
        // Bắt sự kiện click vào container-play
        $('.container-play').click(function() {
            // Hiển thị container-other
            $('.container-film').show();

            // Ẩn background-img-movie
            $('.background-img-movie').hide();

            var urlParams = new URLSearchParams(window.location.search);
            var id_movie = urlParams.get('id');
            
            $.ajax({
                type: "POST",
                url: "update_data.php", 
                data: { id_movie:  id_movie},
                success: function(response) {
                    console.log(response);
                },
                error: function(error) {
                    console.error("Lỗi khi gửi yêu cầu AJAX: " + error);
                }
            });
        });

        
    });

</script>

</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>

</html>