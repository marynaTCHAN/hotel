<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact us</title>
    <link rel="stylesheet" type="text/css" href="css/style-main.css">
    <link rel="stylesheet" type="text/css" href="css/style-contact-us.css">
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

<div id="content-contact-us">

    <div class="image-contact-us">
        <h1 id="questions"><span id="span-questions">Have some questions ?</span></h1>
        <form id="contact-us-contact">
            <div class="row-1-contact">
                <input class="contact-us-field" onfocus="if (this.value === 'Name') {this.value = '';}" onblur="if (this.value === '') {this.value = 'Name';}"
                       type="text" id="name" name="name" value="Name" size="30%" height="130px">
                <input class="contact-us-field" onfocus="if (this.value === 'E-mail') {this.value = '';}" onblur="if (this.value === '') {this.value = 'E-mail';}"
                       type="text" id="e-mail" name="e-mail" value="E-mail" size="30%" height="130px">
            </div>
            <div class="row-2-contact">
                <input class="contact-us-field" onfocus="if (this.value === 'Subject') {this.value = '';}" onblur="if (this.value === '') {this.value = 'Subject';}"
                       type="text" id="subject" name="subject" value="Subject" size="74%">
            </div>
            <textarea class="contact-us-field" onfocus="if (this.value === 'Your text') {this.value = '';}" onblur="if (this.value === '') {this.value = 'Your text';}"
                      id="text">Your text</textarea>
            <div id="submit-contact-contact">
                <button type="button" class="my-button-black" id="contact-us-submit" name="submit" data-toggle="modal" data-target="#thank-you-modal">Send</button>
            </div>
        </form>
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
                <button type="button" class="btn btn-secondary" data-dismiss="modal" style="background: #1C1C1C; color: #FFFFFF">OK</button>
            </div>
        </div>
    </div>
</div>
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