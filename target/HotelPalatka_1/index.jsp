<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Palatka</title>
    <link rel="stylesheet" type="text/css" href="css/style-main.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<header>
    <nav role='navigation-menu'>
        <ul>
            <li><a href="index.jsp" style="text-decoration: none">Home</a></li>
            <li><a href="services.jsp" style="text-decoration: none">Services</a></li>
            <li><a href="rooms.jsp" style="text-decoration: none">Rooms</a></li>
            <li><a href="contact_us.jsp" style="text-decoration: none">Contact Us</a></li>
            <li><a href="my_profile.jsp" style="text-decoration: none">My profile</a></li>
        </ul>
    </nav>
</header>
<div class="container-fluid">

    <div id="slider">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="img/slider/slide-1.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="img/slider/slide-2.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="img/slider/slide-3.jpg" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

    <div class="line">
        <div class="text-line">SERVICES</div>
    </div>


    <div class="services">
        <div class="service">
            <div class="row site-section">
                <div class="col-md-12">
                    <h3 class="topic-heading">Facilities &amp; Services</h3>
                </div>
                <div class="element">
                    <a href="services.jsp" style="text-decoration: none;"><div class="icon"><img src="img/icon/wifi.png"></div></a>
                    <div class="heading-services">Wi-fi</div>
                </div>
                <div class="element">
                    <a href="services.jsp" style="text-decoration: none;"><div class="icon"><img src="img/icon/parking.png"></div></a>
                    <div class="heading-services">Parking</div>
                </div>
                <div class="element">
                    <div class="innerElement">
                        <a href="services.jsp" style="text-decoration: none;"><div class="icon"><img src="img/icon/24time.png"></div></a>
                    </div>
                    <div class="heading-services">24 - hour service</div>
                </div>
                <div class="element">
                    <div class="innerElement">
                        <a href="services.jsp" style="text-decoration: none;"><div class="icon"><img src="img/icon/time.png"></div></a>
                    </div>
                    <div class="heading-services">Check-in/ Check out</div>
                </div>
                <div class="element">
                    <a href="services.jsp" style="text-decoration: none;"><div class="icon"><img src="img/icon/waterpool.png"></div></a>
                    <div class="heading-services">Pool</div>
                </div>
                <div class="element">
                    <a href="services.jsp" style="text-decoration: none;"><div class="icon"><img src="img/icon/gym.png"></div></a>
                    <div class="heading-services">Fitness/Gym</div>
                </div>
                <div class="element">
                    <a href="services.jsp" style="text-decoration: none;"><div class="icon"><img src="img/icon/sport.png"></div></a>
                    <div class="heading-services">Sport activities</div>
                </div>
                <div class="element">
                    <a href="services.jsp" style="text-decoration: none;"><div class="icon"><img src="img/icon/spa.png"></div></a>
                    <div class="heading-services">SPA</div>
                </div>
                <div class="element">
                    <a href="services.jsp" style="text-decoration: none;"><div class="icon"><img src="img/icon/breakfast.png"></div></a>
                    <div class="heading-services">Breakfast</div>
                </div>
            </div>
        </div>
    </div>

    <div class="line">
        <div class="text-line">ROOMS</div>
    </div>


    <div class="topic-room">
        <div class="rooms">
            <h3 class="topic-heading">Rooms</h3>
            <a href="rooms.jsp">
            <div class="room">
                <div class="photo"><img src="img/rooms/bachelor-room.jpg"></div>
                <div class="desctiption">Bachelor Room</div>
            </div>
            </a>
            <a href="rooms.jsp">
            <div class="room">
                <div class="photo"><img src="img/rooms/family-room.jpg"></div>
                <div class="desctiption">Family Room</div>
            </div>
            </a>
            <a href="rooms.jsp">
            <div class="room">
                <div class="photo"><img src="img/rooms/presidential-room.jpg"></div>
                <div class="desctiption">Presidential Room</div>
            </div>
            </a>
            <a href="rooms.jsp">
            <div class="room">
                <div class="photo"><img src="img/rooms/double-room.jpg"></div>
                <div class="desctiption">Double Room</div>
            </div>
            </a>
            <a href="rooms.jsp">
            <div class="room">
                <div class="photo"><img src="img/rooms/VIP-room.jpg"></div>
                <div class="desctiption">VIP Room</div>
            </div>
            </a>
            <a href="rooms.jsp">
            <div class="room">
                <div class="photo"><img src="img/rooms/superior-deluxe-room.jpg"></div>
                <div class="desctiption">Superior Deluxe</div>
            </div>
            </a>
        </div>
    </div>


    <div class="line">
        <div class="text-line">SEARCH US</div>
    </div>

    <div id="top-map">
        <div id="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d2574.449761385607!2d24.01225141545899!3d49.815211440812924!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1suk!2sua!4v1560290628149!5m2!1suk!2sua"
                    width="100%" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
    </div>


    <div class="line">
        <div class="text-line">CONTACT US</div>
    </div>


    <div id="top-contact-us">
        <div id="contact-us">
            <form id="contact">
                <h2 class="heading-contact">Contact form</h2>
                <div class="row-1">
                    <input type="text" onfocus="if (this.value === 'Name') {this.value = '';}" onblur="if (this.value === '') {this.value = 'Name';}"
                           id="name" name="name" value="Name" size="33%" height="130px">
                    <input type="text" onfocus="if (this.value === 'E-mail') {this.value = '';}" onblur="if (this.value === '') {this.value = 'E-mail';}"
                    id="e-mail" name="e-mail" value="E-mail" size="33%" height="130px">
                </div>
                <div class="row-2">
                    <input type="text" onfocus="if (this.value === 'Subject') {this.value = '';}" onblur="if (this.value === '') {this.value = 'Subject';}"
                           id="subject" name="subject" value="Subject" size="70%">
                </div>
                <textarea id="text" onfocus="if (this.value === 'Your text') {this.value = '';}" onblur="if (this.value === '') {this.value = 'Your text';}"
                >Your text</textarea>
                <div id="submit-contact">
                <button type="button" class="my-button-black" id="submit" name="submit" data-toggle="modal" data-target="#thank-you-modal">Send</button>
                </div>
            </form>
        </div>


        <div id="address-contact">
            <h2 class="heading-contact">Adress</h2>
            <div class="address-element">
                <div class="contact-photo"><img src="img/icon/mobile.png">+380977516800</div>
            </div>
                <div class="address-element">
                    <div class="contact-photo"><img src="img/icon/letter.png">palatka.hotel@gmail.com</div>
                </div>
                    <div class="address-element">
                        <div class="contact-photo"><img src="img/icon/geolocation.png"> Lviv, Fedkovicha,60A</div>
                    </div>
                </div>
            </div>
        </div>

<footer class="my-footer">
    <div class="logo-hotel" >
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


<div class="modal fade" id="thank-you-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="thank-you-modal-label">Tank you!</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Thank you for filling out the feedback form, we will contact you in the near future.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal" style="background: #1C1C1C">OK</button>
            </div>
        </div>
    </div>
</div>



<script>
    $('.nav-toggle').on('click', function () {
        $('#menu').toggleClass('active');
    });
</script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>

