
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My profile</title>
    <link rel="stylesheet" type="text/css" href="css/style-my-profile.css">
    <link rel="stylesheet" type="text/css" href="css/style-main.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#in").click(function () {
                $("#sign-in").show();
                $("#sign-up").hide();
                $(".container-buttons").hide();
            });
        });

        $(document).ready(function () {
            $("#up").click(function () {
                $("#sign-up").show();
                $("#sign-in").hide();
                $(".container-buttons").hide();
            });
        });

        /*   $(document).ready(function(){
               $(".back").click(function(){
                   $("#sign-up").hide();
                   $("#sign-in").hide();
                   $(".container-buttons").show();
               });
           });*/
    </script>
</head>
<body>

<header>
    <nav role='navigation-menu'>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="services.jsp">Services</a></li>
            <li><a href="rooms.jsp">Rooms</a></li>
            <li><a href="contact_us.jsp">Contact Us</a></li>
            <li><a href="my_profile.jsp">My profile</a></li>
        </ul>
    </nav>
</header>

<div class="profile-wrapper">

    <div class="left-profile-wrapper">
        <div class="left-panel">
            <img src="img/slider/slide-2.jpg">
        </div>
    </div>

    <div class="right-profile-wrapper">

        <div class="container-buttons">
            <button class="my-button-black" id="in" name="in" onclick="">Sign in</button>
            <button class="my-button-black" id="up" name="up" onclick="">Sign up</button>
        </div>


        <div id="sign-in" style="display:none; margin-top: 20%">
            <form class="form" action="my_page" method="post">
                <div class="container">
                    <label>E-mail</label>
                    <input type="text" class="e-mail" name="loginEmail" placeholder="Enter E-mail" required>
                    <label>Password</label>
                    <input type="password" placeholder="Enter Password" name="loginPsw" required>
                    <button class="my-button-black" type="submit">Sign in</button>
                    <label>
                        <input type="checkbox" checked="checked" name="remember"> Remember me
                    </label>
                </div>
            </form>
        </div>
        <div id="sign-up" style="display:none">
            <form class="form" action="myprofile" method="post">
                <div class="container">
                    <label>Name</label>
                    <input type="text" id="name" name="nameRegistration" placeholder="Enter Name" required>
                    <label>Surname</label>
                    <input type="text" id="surname" placeholder="Enter Surname" name="surnameRegistration" required>
                    <label>E-mail</label>
                    <input type="text" id="email" placeholder="Enter E-mail" name="emailRegistration" required>
                    <label>Phone number</label>
                    <input type="text" id="phone" placeholder="Enter Phone" name="phoneRegistration" required>
                    <label>Address</label>
                    <input type="text" id="address" placeholder="Enter Address" name="addressRegistration" required>
                    <label>Password</label>
                    <input type="password" placeholder="Enter Password" name="pswRegistration" required>
                    <button class="my-button-black" type="submit">Sign up</button>
                </div>
            </form>
        </div>

    </div>
</div>

    <footer class="my-footer">
        <div class="logo-hotel">
            <img class="logo" src="img/icon/hotel.png">
        </div>

        <div class="text-rights">
            <p>© 2019 PALATKA</p>
            <p> All rights reserved</p>
            <p>Developed by Maryna Melnychuk</p>
        </div>
        <div class="top-social">
            <div class="social">
                <img class="social-photo" src="img/icon/gmail.png" alt=""/>
                <img class="social-photo" src="img/icon/instagram.png" alt="" />
                <img class="social-photo" src="img/icon/facebook.png" alt="" />
            </div>
        </div>
    </footer>


</body>
</html>





