<%@ page import="com.softserve.ita.model.User" %>
<%@ page import="com.softserve.ita.model.Application" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Page</title>
    <button type="submit" formaction="applicationFromUser">
        <link rel="stylesheet" type="text/css" href="css/style-main.css">
    </button>
    <link rel="stylesheet" type="text/css" href="css/style-user.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <script>

        $(document).ready(function () {
            $("#btn-user").click(function () {
                $("#user-table").show();
                $("#type-of-rooms-table").hide();
                $("#rooms-table").hide();
            });
        });

        $(document).ready(function () {
            $("#btn-type-of-rooms").click(function () {
                $("#user-table").hide();
                $("#type-of-rooms-table").show();
                $("#rooms-table").hide();
            });
        });

        $(document).ready(function () {
            $("#btn-rooms").click(function () {
                $("#user-table").hide();
                $("#type-of-rooms-table").hide();
                $("#rooms-table").show();
            });
        });


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

<div class="blank"></div>

<ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">About me</a></li>
    <li><a data-toggle="tab" href="#menu1" id="application-from-user">Application from user</a></li>
    <li><a data-toggle="tab" href="#menu2">Change information</a></li>
</ul>

<div class="tab-content">
    <div id="home" class="tab-pane fade in active">
        <div class="about-me">
            <div class="information-about-me">
                <div class="right-panel-wrapper">
                    <div class="my-profile-photo">
                        <img src="img/icon/user.png">
                    </div>
                    <button class="change-user" id="change-photo-button"
                            data-toggle="modal" data-target="#change-photo"
                            name="change-photo">Change photo
                    </button>
                </div>
                <div class="left-panel-wrapper">
                    <h1 id="my-profile-heading">Information about me</h1>
                    <div class="field">You name:<label>${adminInfo.name}</label></div>
                    <div class="field">Your surname:<label>${adminInfo.surname}</label></div>
                    <div class="field">Your e-mail:<label>${adminInfo.email}</label></div>
                    <div class="field">Your phone number:<label>${adminInfo.phoneNumber}</label></div>
                    <div class="field">Your address:<label>${adminInfo.address}</label></div>
                    <button class="change-user" id="change-information"
                            data-toggle="modal" data-target="#change-information-about-user"
                            name="change-information">Change information
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div id="menu1" class="tab-pane fade">
            <div class="top-application">
                <div class="applications-user">
                    <table id="applications">
                           <c:forEach var="tmpApl" items="${requestScope.applications}">
                            <tr>
                                <td class="application-from-user">
                                    <h1 class="application-heading">New application from user</h1>
                                    <ul>
                                        <div class="right-information">

                                            <li class="application-li">
                                            <li><label class="application-label">Square: </label><label
                                                    class="meaning-li">${tmpApl.square}</label></li>
                                            </li>
                                            <li class="application-li">
                                            <li><label class="application-label">Feeding: </label><label
                                                    class="meaning-li">${tmpApl.feeding}</label></li>
                                            </li>
                                                <li class="application-li">
                                                <li><label class="application-label">Air conditioner: </label>
                                            <label class="meaning-li">
                                                ${tmpApl.airConditioner}</label></li>
                                                </li>
                                                <li class="application-li">
                                                <li><label class="application-label">Parking: </label><label
                                                        class="meaning-li">${tmpApl.parking}</label></li>
                                                </li>
                                                <li class="application-li">
                                                <li><label class="application-label">Gym: </label><label
                                                        class="meaning-li">${tmpApl.gym}</label></li>
                                                </li>
                                                <li class="application-li">
                                                <li><label class="application-label">SPA: </label><label
                                                        class="meaning-li">${tmpApl.SPA}</label></li>
                                                </li>
                                                <li class="application-li">
                                                <li><label class="application-label">Pool: </label><label
                                                        class="meaning-li">${tmpApl.pool}</label></li>
                                                </li>


                                        </div>

                                       <div class="left-information">

                                            <li class="application-li">
                                            <li><label class="application-label">Name client: </label><label
                                                    class="meaning-li">Maryna</label></li>
                                            </li>
                                            <li class="application-li">
                                            <li><label class="application-label">Surname client:</label><label
                                                    class="meaning-li">Melnychuk</label></li>
                                            </li>
                                            <li class="application-li">
                                            <li><label class="application-label">Date of arrival:</label><label
                                                    class="meaning-li">${tmpApl.dateOfArrival}</label></li>
                                            </li>
                                            <li class="application-li">
                                            <li><label class="application-label">Date departure:</label><label
                                                    class="meaning-li">${tmpApl.dateDeparture}</label></li>
                                            </li>

                                            <li class="application-li">
                                            <li><label class="application-label">Type room:</label><label
                                                    class="meaning-li">Family</label></li>
                                            </li>

                                            <li class="application-li">
                                            <li><label class="application-label">Number people in room:</label><label
                                                    class="meaning-li">${tmpApl.numberOfPeople}</label></li>
                                            </li>

                                            <li class="application-li">
                                            <li><label class="application-label">Number room:</label><label
                                                    class="meaning-li">${tmpApl.numberOfRoom}</label></li>
                                            </li>


                                        </div>

                                    </ul>

                                    <div class="do-smth-application">
                                        <button type="submit" class="my-button-black accept-application"
                                                data-toggle="modal" data-target="#submit-application"
                                                name="accept-application">Accept
                                        </button>
                                        <button class="my-button-black reject-application" data-toggle="modal"
                                                data-target="#reject-application"
                                                name="reject-application">Reject
                                        </button>
                                    </div>

                                </td>
                            </tr>
                        </c:forEach>


                    </table>
                </div>
            </div>
    </div>


    <div id="menu2" class="tab-pane fade">

        <div id="content-tables">

            <div class="sidenav">
                <button class="button-sidenav" id="btn-user">User</button>
                <button class="button-sidenav" id="btn-type-of-rooms">Type-of-rooms</button>
                <button class="button-sidenav" id="btn-rooms">Rooms</button>
            </div>

            <div class="main">

                <div id="user-table">

                    <div class="heading-and-add">
                        <div class="heading-table"><h1 class="h1-user">Users</h1></div>
                        <div class="button-add">
                            <button class="button-none-table" data-toggle="modal" data-target="#add-user-modal"
                                    name="add-user"><img src="img/icon/add.png"></button>
                        </div>
                    </div>

                    <div id="content-user">

                        <table id="table-user">

                            <tr>
                                <th class="th-column-heading" style="text-align: center">Name</th>
                                <th class="th-column-heading" style="text-align: center">Surname</th>
                                <th class="th-column-heading" style="text-align: center">E-mail</th>
                                <th class="th-column-heading" style="text-align: center">Phone number</th>
                                <th class="th-column-heading" style="text-align: center">Address</th>
                                <th class="th-column-heading" style="text-align: center">Password</th>
                                <th class="th-column-heading" style="text-align: center; width: 190px;">Options</th>
                            </tr>
                            <tr>
                                <td class="td-column" style="text-align: center">Maryna</td>
                                <td class="td-column" style="text-align: center">Melnychuk</td>
                                <td class="td-column" style="text-align: center">marynamelnychuk859@gmail.com</td>
                                <td class="td-column" style="text-align: center">+380977516800</td>
                                <td class="td-column" style="text-align: center">Lviv, Fedkovicha, 60A</td>
                                <td class="td-column" style="text-align: center">0s9d0shds</td>
                                <td class="td-button" style="text-align: center">
                                    <button class="button-table" data-toggle="modal" data-target="#delete-user-modal"
                                            name="add-user"><img src="img/icon/delete.png"></button>
                                    <button class="button-table" data-toggle="modal" data-target="#update-user-modal"
                                            name="add-user"><img src="img/icon/update.png"></button>
                                </td>
                            </tr>

                        </table>
                    </div>
                </div>


                <div id="type-of-rooms-table" style="display:none">

                    <div class="heading-and-add">
                        <div class="heading-table"><h1 class="h1-user">Type of rooms</h1></div>
                        <div class="button-add">
                            <button class="button-none-table" data-toggle="modal" data-target="#add-type-of-room-modal"
                                    name="add-type-of-room"><img src="img/icon/add.png"></button>
                        </div>
                    </div>
                    <div id="content-type-of-room">

                        <table id="table-type-of-room">

                            <tr>
                                <th class="th-column-heading" style="text-align: center">Type</th>
                                <th class="th-column-heading" style="text-align: center">Number of room</th>
                                <th class="th-column-heading" style="text-align: center">Number of bed</th>
                                <th class="th-column-heading" style="text-align: center">Description</th>
                                <th class="th-column-heading" style="text-align: center; width: 190px;">Options</th>
                            </tr>
                            <tr>
                                <td class="td-column" style="text-align: center">Family</td>
                                <td class="td-column" style="text-align: center">3</td>
                                <td class="td-column" style="text-align: center">2-4</td>
                                <td class="td-column" style="text-align: center">A family room is an informal,
                                    all-purpose room in a house. The family room is designed
                                    to be a place where family and guests.
                                </td>

                                <td class="td-button " style="text-align: center;">
                                    <button class="button-table" data-toggle="modal"
                                            data-target="#delete-type-of-room-modal"
                                            name="delete-type-of-room"><img src="img/icon/delete.png"></button>
                                    <button class="button-table" data-toggle="modal"
                                            data-target="#update-type-of-room-modal"
                                            name="update-type-of-room"><img src="img/icon/update.png"></button>
                                </td>
                            </tr>

                        </table>
                    </div>

                </div>


                <div id="rooms-table" style="display:none">

                    <div class="heading-and-add">
                        <div class="heading-table"><h1 class="h1-user">Rooms</h1></div>
                        <div class="button-add">
                            <button class="button-none-table" data-toggle="modal" data-target="#add-room-modal"
                                    name="add-room"><img src="img/icon/add.png"></button>
                        </div>
                    </div>
                    <div id="content-room">

                        <table id="table-room">

                            <tr>
                                <th class="th-column-heading" style="text-align: center">Number</th>
                                <th class="th-column-heading" style="text-align: center">Type room</th>
                                <th class="th-column-heading" style="text-align: center">Square</th>
                                <th class="th-column-heading" style="text-align: center">Price</th>
                                <th class="th-column-heading" style="text-align: center">Air conditioner</th>
                                <th class="th-column-heading" style="text-align: center">Mini bar</th>
                                <th class="th-column-heading" style="text-align: center">Kitchen</th>
                                <th class="th-column-heading" style="text-align: center">Free</th>
                                <th class="th-column-heading" style="text-align: center; width: 190px;">Options</th>
                            </tr>
                            <tr>
                                <td class="td-column" style="text-align: center">342</td>
                                <td class="td-column" style="text-align: center">Family</td>
                                <td class="td-column" style="text-align: center">90</td>
                                <td class="td-column" style="text-align: center">3600</td>
                                <td class="td-column" style="text-align: center">Yes</td>
                                <td class="td-column" style="text-align: center">Not</td>
                                <td class="td-column" style="text-align: center">Yes</td>
                                <td class="td-column" style="text-align: center">Not</td>
                                <td class="td-button">
                                    <button class="button-table" data-toggle="modal" data-target="#delete-room-modal"
                                            name="delete-type-of-room"><img src="img/icon/delete.png"></button>
                                    <button class="button-table" data-toggle="modal" data-target="#update-room-modal"
                                            name="update-type-of-room"><img src="img/icon/update.png"></button>
                                </td>
                            </tr>

                        </table>
                    </div>


                </div>


            </div>

        </div>

    </div>


</div>


<div class="modal fade" id="change-photo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
     aria-hidden="true">
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
                <button type="button" class="btn btn-primary" style="background: #1C1C1C">Save changes</button>
            </div>
        </div>
    </div>
</div>

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
                <form class="modal-form">
                    <div class="element-modal-form">
                        <label class="modal-label">Name</label>
                        <input class="modal-input" type="text" name="name" placeholder="Name" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Surname</label>
                        <input class="modal-input" type="text" placeholder="Surname" name="surname" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">E-mail</label>
                        <input class="modal-input" type="text" placeholder="E-mail" name="email" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Phone number</label>
                        <input class="modal-input" type="text" placeholder="Phone" name="phone" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Address</label>
                        <input class="modal-input" type="text" placeholder="Address" name="address" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Password</label>
                        <input class="modal-input" type="password" placeholder="Password" name="psw" required>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" style="background: #1C1C1C">Save changes</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="add-user-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="user-add-label">Add new user</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="modal-form">
                    <div class="element-modal-form">
                        <label class="modal-label">Name</label>
                        <input class="modal-input" type="text" name="name" placeholder="Name" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Surname</label>
                        <input class="modal-input" type="text" placeholder="Surname" name="surname" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">E-mail</label>
                        <input class="modal-input" type="text" placeholder="E-mail" name="email" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Phone number</label>
                        <input class="modal-input" type="text" placeholder="Phone" name="phone" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Address</label>
                        <input class="modal-input" type="text" placeholder="Address" name="address" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Password</label>
                        <input class="modal-input" type="password" placeholder="Password" name="psw" required>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" style="background: #1C1C1C">Add user</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="update-user-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="user-update-label">Update information about user</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="modal-form">
                    <div class="element-modal-form">
                        <label class="modal-label">Name</label>
                        <input class="modal-input" type="text" name="name" placeholder="Name" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Surname</label>
                        <input class="modal-input" type="text" placeholder="Surname" name="surname" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">E-mail</label>
                        <input class="modal-input" type="text" placeholder="E-mail" name="email" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Phone number</label>
                        <input class="modal-input" type="text" placeholder="Phone" name="phone" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Address</label>
                        <input class="modal-input" type="text" placeholder="Address" name="address" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Password</label>
                        <input class="modal-input" type="password" placeholder="Password" name="psw" required>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" style="background: #1C1C1C">Save changes</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="delete-user-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="user-delete-label">Delete user</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h5 class="modal-title">Are you sure you want delete ths user ?</h5>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary" style="background: #1C1C1C">Delete</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="add-type-of-room-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="type-of-room-add-label">Add new type of room</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="modal-form">
                    <div class="element-modal-form">
                        <label class="modal-label">Type</label>
                        <input class="modal-input" type="text" name="type" placeholder="Type" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Number of room</label>
                        <input class="modal-input" type="text" placeholder="Number of room" name="number-of-room"
                               required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Description</label>
                        <textarea onfocus="if (this.value === 'Your comment') {this.value = ''; }" onblur="if (this.value === '')
                        {this.value = 'Your comment';}" class="modal-input" id="descriptionOne" name="descriptionOne"
                                  required>
                        </textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" style="background: #1C1C1C">Add type of room</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="update-type-of-room-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="type-of-room-update-label">Update information about type-of-room</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <form class="modal-form">
                    <div class="element-modal-form">
                        <label class="modal-label">Type</label>
                        <input class="modal-input" type="text" name="type" placeholder="Type" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Number of room</label>
                        <input class="modal-input" type="text" placeholder="Number of room" name="number-of-room"
                               required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Description</label>
                        <textarea onfocus="if (this.value === 'Your comment') {this.value = ''; }" onblur="if (this.value === '')
                        {this.value = 'Your comment';}" class="modal-input" id="descriptionTwo" name="descriptionTwo"
                                  required>
                        </textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" style="background: #1C1C1C">Save changes</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="delete-type-of-room-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="type-of-room-delete-label">Delete type-of-room</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h5 class="modal-title">Are you sure you want delete this type-of-room ?</h5>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary" style="background: #1C1C1C">Delete</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="submit-application" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="submit-application-label">Accept application</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="modal-form">
                    <div class="element-modal-form">
                        <label class="modal-label">Number room</label>
                        <input class="modal-input" type="text" name="type" placeholder="Number_room" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Price</label>
                        <input class="modal-input" type="text" placeholder="Price" name="price" required>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" style="background: #1C1C1C">Make account</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="reject-application" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="reject-application-label">Reject application</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h5 class="modal-title">Are you sure you want reject this application ?</h5>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary" style="background: #1C1C1C">Reject</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="add-room-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="room-add-label">Add new room</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="modal-form">
                    <div class="element-modal-form">
                        <label class="modal-label">Number</label>
                        <input class="modal-input" type="text" name="type" placeholder="Number" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Room type</label>
                        <input class="modal-input" type="text" placeholder="Room type" name="type-room" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Square</label>
                        <input class="modal-input" type="text" placeholder="Square" name="square" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Price</label>
                        <input class="modal-input" type="text" placeholder="Price" name="price" required>
                    </div>

                    <div class="check-label">
                        <input type="checkbox" id="air-conditionerTwo" name="air-conditionerTwo">
                        <label class="booking-label" for="air-conditionerTwo">Air conditioner</label>
                    </div>

                    <div class="check-label">
                        <input type="checkbox" id="mini-barTwo" name="mini-barTwo">
                        <label class="booking-label" for="mini-barTwo">Mini bar</label>
                    </div>

                    <div class="check-label">
                        <input type="checkbox" id="kitchenTwo" name="kitchenTwo">
                        <label class="booking-label" for="kitchenTwo">Kitchen</label>
                    </div>
                    <div class="check-label">
                        <input type="checkbox" id="is-free" name="is-free">
                        <label class="booking-label" for="is-free">Free</label>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" style="background: #1C1C1C">Add room</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="update-room-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="room-update-label">Update information about room</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="modal-form">
                    <div class="element-modal-form">
                        <label class="modal-label">Number</label>
                        <input class="modal-input" type="text" name="type" placeholder="Number" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Room type</label>
                        <input class="modal-input" type="text" placeholder="Room type" name="type-room" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Square</label>
                        <input class="modal-input" type="text" placeholder="Square" name="square" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Price</label>
                        <input class="modal-input" type="text" placeholder="Price" name="price" required>
                    </div>
                    <div class="check-label">
                        <input type="checkbox" id="air-conditioner" name="air-conditioner">
                        <label class="booking-label" for="air-conditioner">Air conditioner</label>
                    </div>
                    <div class="check-label">
                        <input type="checkbox" id="mini-bar" name="mini-bar">
                        <label class="booking-label" for="mini-bar">Mini bar</label>
                    </div>
                    <div class="check-label">
                        <input type="checkbox" id="kitchen" name="kitchen">
                        <label class="booking-label" for="kitchen">Kitchen</label>
                    </div>
                    <div class="check-label">
                        <input type="checkbox" id="is-free-upd" name="is-free">
                        <label class="booking-label" for="is-free-upd">Free</label>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" style="background: #1C1C1C">Save changes</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="delete-room-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="room-delete-label">Delete room</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h5 class="modal-title">Are you sure you want delete this room ?</h5>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary" style="background: #1C1C1C" formaction="deleteApplication" >Delete</button>
            </div>
        </div>
    </div>
</div>


</body>
</html>