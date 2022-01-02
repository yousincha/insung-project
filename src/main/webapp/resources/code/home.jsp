<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>INSUNG</title>

        <link rel="icon" type="image/x-icon" href="resources/assets/bag.png" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/styles.css" rel="stylesheet" />
    </head>

        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-warning text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top">INSUNG</a>
                <button class="navbar-toggler text-uppercase font-weight-bold bg-danger text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="resources/code/login.jsp">Login</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">WRITE</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">ABOUT</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">ASK</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead  text-black text-center">
            <div class="container d-flex align-items-center flex-column">
                <!-- Masthead Avatar Image-->
                <img class="masthead-avatar mb-5" src="resources/assets/img/sun.png" alt="..." />
                <!-- Masthead Heading-->
                <h1>"안녕하세요 전 새해예요"</h1>
                <br><br>
                <!-- Masthead Subheading-->
                <h5>"새해 인사를 건네주세요!"</h5>
            </div>
        </header>
        <!-- login Section-->
        <section class="page-section portfolio" id="portfolio">
            <div class="container">
                <!-- portfolio Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-warning mb-0">WRITE</h2>
				<br><br>
                <!-- Write Section Form-->
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                         
                            <!-- Submit Button-->
                             <div class="form-floating mb-3">
                             <form method="post" action="resources/code/writePro.jsp">
                             <label for="content">Message</label>
                             <input class="form-control" name="content" type="text" placeholder="메시지를 남겨 주세요" style="height: 10rem" data-sb-validations="required"></textarea>
                             <br><br>
                             <label for="content">Name</label>
                             <input class="form-control" name="name2" type="text" placeholder="이름을 알려 주세요" style="height: 10rem" data-sb-validations="required"></textarea>
                             <br><br>
                            <input type="submit" value="글쓰기" class="btn btn-outline-warning" style="height: 3rem">
                        </form>
                    </div>
                    </div>
                </div>
            </div>
            
        </section>
         <!-- Portfolio Section-->
        <section class="page-section portfolio" id="portfolio">
          
        </section>
       
        <!-- About Section-->
        <section class="page-section bg-warning text-white mb-0" id="about">
            <div class="container">
                <!-- About Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-white">About</h2>
                <!-- Icon Divider-->
                <br><br>
                <!-- About Section Content-->
               <div class=" text-center text-white"><img src="resources/assets/img/sun.png" width="150pd" height="150dp" />
               <h4>人 사람(인) + 聲 소리(성)</h4><br><h5>사람의 목소리를 전달해 주고자<br>두 명이서 개발하게 되었습니다.<br>여러분의 목소리를 전해보세요♥</h5><br>SINCE 2020~
            </div>
        </div>
         
        </section>
        <!-- Contact Section-->
        <section class="page-section" id="contact">
            <div class="container">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-warning mb-0">ASK</h2>
                <br><br>
			</div>
		<br><br>
		<div style="text-align : center;">
		               <div class=" text-center text-white"><img src="resources/assets/img/consultant.png" width="150pd" height="150dp" />
		
		              <br><br><br><br><br>
		<br>
        <a href="https://mail.google.com/mail"><img src="resources/assets/img/mail.png" width="100dp" height="100dp" /></a>
		<a href="https://youtu.be/oxRDWw3dq7Q"><img src="resources/assets/img/youtube.png" width="100dp" height="100dp" /></a>
        <a href="tel:010-0000-0000"><img src="resources/assets/img/phone.png" width="100dp" height="100dp" /></a>
        <a href="https://open.kakao.com/o/svuclxRd"><img src="resources/assets/img/kakao.png" width="100dp" height="100dp" /></a>
                </div></div>
        </section>  
        <!-- Copyright Section-->
        <div class="copyright py-4 text-center text-white">
            <div class="container"><small>Copyright &copy; INSUNG</small></div>
        </div>
       
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="resources/js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>