<%@ page import="com.softserve.ita.model.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User page</title>
    <link rel="stylesheet" type="text/css" href="css/style-main.css">
    <link rel="stylesheet" type="text/css" href="css/style-user.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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

<div class= "blank"></div>

<ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home" style="color: #1C1C1C">About me</a></li>
    <li><a data-toggle="tab" href="#menu1" style="color: #1C1C1C ">My history</a></li>
    <li><a data-toggle="tab" href="#menu2" style="color: #1C1C1C">Booking</a></li>
</ul>

<div class="tab-content">
    <div id="home" class="tab-pane fade in active">
        <div class = "about-me">
            <div class="information-about-me">
                <div class="right-panel-wrapper">
                    <div class="my-profile-photo">
                        <img src="img/icon/user.png">
                    </div>
                    <button class="change-user" id ="change-photo-button"
                            data-toggle="modal" data-target="#change-photo"
                            name="change-photo">Change photo</button>
                </div>
                <div class="left-panel-wrapper">
                    <h1 id="my-profile-heading">Information about me</h1>
                    <div class="field">You name:<label>${userInfo.name}</label></div>
                    <div class="field">Your surname:<label>${userInfo.surname}</label></div>
                    <div class="field">Your e-mail:<label>${userInfo.email}</label></div>
                    <div class="field">Your phone number:<label>${userInfo.phoneNumber}</label></div>
                    <div class="field">Your address:<label>${userInfo.address}</label></div>
                    <button class="change-user" id ="change-information" onclick="prepopulateForm();"
                            data-toggle="modal" data-target="#change-information-about-user"
                            name="change-information">Change information
                    </button>
                    <script>
                        function prepopulateForm() {
                            document.getElementById("name").value = '${userInfo.name}';
                            document.getElementById("surname").value = '${userInfo.surname}';
                            document.getElementById("email").value = '${userInfo.email}';
                            document.getElementById("phone").value = '${userInfo.phoneNumber}';
                            document.getElementById("address").value = '${userInfo.address}';
                            document.getElementById("password").value = '${userInfo.password}';
                        }
                    </script>
                </div>
            </div>
        </div>
    </div>
    <div id="menu1" class="tab-pane fade">
        <div class = "my-history">
            <div class="history">
                <h1 id="history-heading">My history</h1>
                <table id="history" class="spacing-between-rows">
                    <tr>
                        <td class="photo"><img src="img/slider/slide-1.jpg"></td>
                        <td class="date-of-arrival"><div class="heading"> Date of arrival </div>
                            <div class="col-information">07.06.2019</div></td>
                        <td class="date-departure"><div class="heading">Date departure </div>
                            <div class="col-information">11.06.2019</div></td>
                        <td class="type-room"><div class="heading">Type of room </div>
                            <div class="col-information">Family room</div></td>
                        <td class="price"><div class="heading">Number </div>
                            <div class="col-information">900A</div></td>
                        <td class="price"><div class="heading">Price </div>
                            <div class="col-information">9000</div></td>
                        <td class="mark" style="background: #FFFFFF"><div class="heading">Your mark </div>
                            <a class ="change" data-toggle="modal" data-target="#change-mark">
                                <div class="col-information">5
                                </div>
                            </a>
                        </td>
                        <td class="comment"><div class="heading">Your comment </div>
                            <a class ="change" data-toggle="modal" data-target="#change-comment">I like </a>
                        </td>
                    </tr>

                    <tr>
                        <td class="photo"><img src="img/slider/slide-1.jpg"></td>
                        <td class="date-of-arrival"><div class="heading"> Date of arrival </div>
                            <div class="col-information">07.06.2019</div></td>
                        <td class="date-departure"><div class="heading">Date departure </div>
                            <div class="col-information">11.06.2019</div></td>
                        <td class="type-room"><div class="heading">Type of room </div>
                            <div class="col-information">Family room</div></td>
                        <td class="price"><div class="heading">Number </div>
                            <div class="col-information">900A</div></td>
                        <td class="price"><div class="heading">Price </div>
                            <div class="col-information">9000</div></td>
                        <td class="mark" style="background: #FFFFFF"><div class="heading">Your mark </div>
                            <div class="col-information">
                                <a class ="change" data-toggle="modal" data-target="#change-mark">5</a>
                            </div>
                        </td>
                        <td class="comment"><div class="heading">Your comment </div>
                            <div class="col-information">
                            <a class ="change" data-toggle="modal" data-target="#change-comment">I like</a>
                            </div>
                        </td>
                    </tr>

                </table>


            </div>
        </div>
    </div>
    <div id="menu2" class="tab-pane fade">
        <div id ="application-booking">
        <form id ="application" action="booking" method="post" name="booking">
            <h2 class="heading-form-booking">Form booking</h2>
            <input type="date" onfocus="if (this.value === 'Date of arrival') {this.value = ''; }" onblur="if (this.value === '') {this.value = 'Date of arrival';}"
                   id = "date-arrival" name="date-arrival" value="Date of arrival">
            <input type="date" onfocus="if (this.value === 'Date departure') {this.value = ''; }" onblur="if (this.value === '') {this.value = 'Date departure';}"
                   id = "date-departure" name="date-departure" value="Date departure">
            <input type="text" onfocus="if (this.value === 'Number of people in room') {this.value = ''; }" onblur="if (this.value === '') {this.value = 'Number of people in room';}"
                   id = "number-people" name="number-people" value="Number of people in room">
            <input type="text" onfocus="if (this.value === 'Number of room') {this.value = ''; }" onblur="if (this.value === '') {this.value = 'Number room';}"
                   id = "number-room" name="number-room" value="Number of room">
            <input type="text" onfocus="if (this.value === 'Square') {this.value = ''; }" onblur="if (this.value === '') {this.value = 'Square';}"
                   id = "square" name="square" value="Square">
            <div class="select-label">
                <label id="select-feeding">Feeding</label>
                <select id="feeding" name="feeding">
                    <option>One time in day</option>
                    <option>Two time in day</option>
                    <option>Three time in day</option>
                </select>
            </div>
            <div class="check-label">
            <input type="checkbox" id="air-conditioner" name="comfort" value="is-air-conditioner">
            <label class="booking-label" for="air-conditioner">Air conditioner</label>
            </div>
            <div class="check-label">
            <input type="checkbox" id="parking" name="comfort" value="is-parking">
            <label class="booking-label" for="parking">Parking</label>
            </div>
            <div class="check-label">
            <input type="checkbox" id="is-gym" name="comfort" value="is-gym">
            <label class="booking-label" for="is-gym">Gym</label>
            </div>
            <div class="check-label">
            <input type="checkbox" id="is-spa" name="comfort" value="is-spa">
            <label class="booking-label" for="is-spa">SPA</label>
            </div>
            <div class="check-label">
            <input type="checkbox" id="is-pool" name="comfort" value="is-pool">
            <label class="booking-label" for="is-pool">Pool</label>
            </div>
            <button type="submit"  class="my-button-black"
                    id="send-booking" name="send-booking">
                Booking
            </button>
        </form>
    </div>

        <script>
            $("#application").submit(function(e) {

                e.preventDefault();

                var form = $(this);
                var url = form.attr('action');

                $.ajax({
                    type: "POST",
                    url: url,
                    data: form.serialize(),
                    success: function(data)
                    {
                        $('#submit-booking-room').modal('show');
                        $('form[name=booking]').trigger('reset');
                    }
                });


            });
        </script>

</div>
</div>


<div class="modal fade" id="submit-booking-room" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h9 class="modal-title" id="exampleModalLabel">Thank you !</h9>
                <button type="button" id= "close" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p class="modal-body-text">Thank you for application !</p>
                <p class="modal-body-text">Wait for answer from admin</p>
            </div>
        </div>
    </div>
</div>



<!-- Modal -->
<div class="modal fade" id="change-information-about-user" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">My profile</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="modal-form" action="update_user" method="post">
                    <div class="element-modal-form">
                        <label class="modal-label">Name</label>
                        <input class="modal-input" value="" type="text" id="name" placeholder="Name" name="nameUpd" required >
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Surname</label>
                        <input class="modal-input" value="" type="text" id="surname" placeholder="Surname" name="surnameUpd" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">E-mail</label>
                        <input class="modal-input" value="" type="text" id="email" placeholder="E-mail" name="emailUpd" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Phone number</label>
                        <input class="modal-input" value="" type="text" id="phone" placeholder="Phone" name="phoneUpd" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Address</label>
                        <input class="modal-input" value="" type="text" id="address" placeholder="Address" name="addressUpd" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Password</label>
                        <input class="modal-input" value="" type="password" id = "password" placeholder="Password" name="pswUpd" required>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" style="background: #1C1C1C">Save changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="change-mark" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="title-modal-mark">Your mark</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="modal-form">
                    <div class="element-modal-form">
                        <label class="modal-label">Your mark (1-5) </label>
                        <input onfocus="if (this.value === '5') {this.value = ''; }" onblur="if (this.value === '')
                        {this.value = '5';}"  class="modal-input" type="text" id="mark" name="mark" value="5" required>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" style="background: #1C1C1C" >Save changes</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="change-comment" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="title-modal-comment">Your comment</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="modal-form">
                    <div class="element-modal-form">
                        <label class="modal-label">Your comment </label>
                        <textarea onfocus="if (this.value === 'Your comment') {this.value = ''; }" onblur="if (this.value === '')
                        {this.value = 'Your comment';}"  class="modal-input" id="comment" name="comment" required>
                        </textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" style="background: #1C1C1C" >Save changes</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="change-photo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="title-modal-photo">Your photo</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="file-modal">
                <input type="file" id="image-button" name="image-button">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" style="background: #1C1C1C" >Save changes</button>
            </div>
        </div>
    </div>
</div>


</body>
</html>