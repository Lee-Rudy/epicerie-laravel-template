<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{asset('assets/css/index.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/footer.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/barre_de_recherche.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/card.css">
    <!-- <link rel="stylesheet" type="text/css" href="{{ asset('css/styles.css') }}"> -->

</head>
    <!-- <title>Laravel-Rudy et Christina-Template</title> -->
    <title>acceuil</title>

</head>
<body>
    <!-- logo hatoa sary ; raha tiana  -->
    <header>
        <div class="logo">LOGO</div>

        <nav>
            <ul class="menu">
                <li><a href="#">Home</a></li>
                <li><a href="#">Buy</a></li>
                <li><a href="#card">card</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
        <a class="auth" href="{{ url('/signUp') }}"><button>Sign Up</button></a>

        <div class="search-box">
            <!-- <input type="text" class="input-search" placeholder="I love you Christina..."> -->
            <input type="text" class="input-search" placeholder="recherche...">
            <button class="search-button">Search</button>
        </div>

    </header>

    <div class="trait">
    <HR ALIGN=CENTER>
    </div>

    <div class="paragraphe1">
        <h2>phrase pragraphe 1</h2>
        <span>manoratsoratra texte eto </span><br><br>
        <a href="{{url('/login')}}"><input type="button" class="btn-paragraphe1" value="Se Connecter"></a>
    </div>

    <div class="paragraphe2">
        <img src="assets/img/1.jpg" alt="" style="height: 110%; width: 60%; margin-top: -5%; margin-left: 35%; border-radius: 15px;">
        <h2>FASHION WEEK</h2>
    </div>

    <!-- card -->
    <div class="titre" id="card">
        <h1>CARD SHOP</h1>
    </div>

    <nav class="nav-card">
        <div class="filtre">

        </div>

        <div class="box-container">

            <div class="box">
                <img src="assets/img/2.jpg" alt="">
                <h3>HTML 5</h3>
                <h5>$100</h5>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, commodi?</p>
                <a href="#"><input type="button"  class="btn" value="add to card"></a>
                <input type="text" name="" class="number" placeholder="Count...">
            </div>

            <div class="box">
                <img src="assets/img/2.jpg" alt="">
                <h3>CSS 3</h3>
                <h5>$100</h5>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, commodi?</p>
                <a href="#"><input type="button"  class="btn" value="add to card"></a>
                <input type="text" name="" class="number" placeholder="Count...">
            </div>

            <div class="box">
                <img src="assets/img/2.jpg" alt="">
                <h3>JavaScript</h3>
                <h5>$100</h5>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, commodi?</p>
                <a href="#"><input type="button"  class="btn" value="add to card"></a>
                <input type="text" name="" class="number" placeholder="Count...">

            </div>

            <div class="box">
                <img src="assets/img/2.jpg" alt="">
                <h3>SASS</h3>
                <h5>$100</h5>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, commodi?</p>
                <a href="#"><input type="button"  class="btn" value="add to card"></a>
                <input type="text" name="" class="number" placeholder="Count...">

            </div>

            <div class="box">
                <img src="assets/img/2.jpg" alt="">
                <h3>JQuery</h3>
                <h5>$100</h5>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, commodi?</p>
                <a href="#"><input type="button"  class="btn" value="add to card"></a>
                <input type="text" name="" class="number" placeholder="Count...">

            </div>

            <div class="box">
                <img src="assets/img/2.jpg" alt="">
                <h3>React.js</h3>
                <h5>$100</h5>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, commodi?</p>
                <a href="#"><input type="button"  class="btn" value="add to card"></a>
                <input type="text" name="" class="number" placeholder="Count...">
            </div>

        </div>

    </nav>
    <!-- fin card -->


    <footer>
        <div class="container">
            <div class="footer-text">
                <h3>Footer</h3>
                <p>Abonnez-vous sur nous</p>
                <div class="social">
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-instagram"></a>
                    <a href="#" class="fa fa-youtube"></a>
                </div>
            </div>
        </div>
    </footer>

</body>
</html>