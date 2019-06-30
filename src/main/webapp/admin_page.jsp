<%@ page import="com.softserve.ita.model.User" %>
<%@ page import="com.softserve.ita.model.Application" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

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
    <li class="active"><a href="#info" style="color: #1C1C1C" data-toggle="tab">About me</a></li>
    <li><a  data-toggle="tab" href="#applications_from_users" style="color: #1C1C1C ">Application from user</a></li>
    <li><a data-toggle="tab"  href="#change_information" style="color: #1C1C1C">Change information</a></li>
</ul>


<div class="tab-content">
    <div id="info" class="tab-pane fade in active">
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
    <div id="applications_from_users" class="tab-pane fade">
            <div class="top-application">
                <div class="applications-user">
                    <table id="applications">
                           <c:forEach var="tmpApl" items="${requestScope.applications}">
                            <tr>
                                <td class="application-from-user">
                                    <input type="text" value="${tmpApl.id}" name="UNIQapplication" id = "id-application">
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
                                                    class="meaning-li">${tmpApl.nameUser}</label></li>
                                            </li>
                                            <li class="application-li">
                                            <li><label class="application-label">Surname client:</label><label
                                                    class="meaning-li">${tmpApl.surnameUser}</label></li>
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
                                        <button type="submit" class="my-button-black accept-application" data-toggle="modal"
                                                data-target="#submit-application"
                                                name="accept-application" onclick="getApplication(${tmpApl.id})" >
                                            Accept</button>
                                        <button type="submit" class="my-button-black reject-application" data-toggle="modal"
                                                data-target="#reject-application"
                                                name="reject-application" onclick="getApplication(${tmpApl.id})">Reject
                                        </button>
                                    </div>

                                </td>
                            </tr>

                        </c:forEach>


                    </table>
                </div>
            </div>
    </div>


    <script>
        var value;
        function getApplication(id) {
            $.ajax( {
                url: "/admin?id=" + id,
                type: "post",

            })
        }
    </script>


    <div id="change_information" class="tab-pane fade">

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
                                <th class="th-column-heading" style="text-align: center">ID</th>
                                <th class="th-column-heading" style="text-align: center">Name</th>
                                <th class="th-column-heading" style="text-align: center">Surname</th>
                                <th class="th-column-heading" style="text-align: center">E-mail</th>
                                <th class="th-column-heading" style="text-align: center">Phone number</th>
                                <th class="th-column-heading" style="text-align: center">Address</th>
                                <th class="th-column-heading" style="text-align: center">Password</th>
                                <th class="th-column-heading" style="text-align: center; width: 190px;">Options</th>
                            </tr>

                            <c:forEach var="tmpUser" items="${requestScope.users}">
                            <tr id="">
                                <td class="td-column" style="text-align: center">${tmpUser.id}</td>
                                <td class="td-column" style="text-align: center">${tmpUser.name}</td>
                                <td class="td-column" style="text-align: center">${tmpUser.surname}</td>
                                <td class="td-column" style="text-align: center">${tmpUser.email}</td>
                                <td class="td-column" style="text-align: center">${tmpUser.phoneNumber}</td>
                                <td class="td-column" style="text-align: center">${tmpUser.address}</td>
                                <td class="td-column" style="text-align: center">${tmpUser.password}</td>
                                <td class="td-button" style="text-align: center">
                                    <!-data-toggle="modal" data-target="#delete-user-modal"
                                    name="add-user"-->
                                    <button class="button-table" type="submit" data-toggle="modal" data-target="#delete-user-modal"
                                            onclick="getUser(${tmpUser.id})" name="delete-user"><img src="img/icon/delete.png"></button>
                                    <button class="button-table" data-toggle="modal" data-target="#update-user-modal"
                                            onclick="getUser(${tmpUser.id})" name="update-user"><img src="img/icon/update.png"></button>
                                </td>
                            </tr>
                            </c:forEach>

                        </table>
                    </div>
                </div>



                <script>
                    var value;
                    function getUser(id_user) {
                        $.ajax( {
                            url: "/admin?id_user=" + id_user,
                            type: "post",

                        })
                        alert(id_user);
                        document.getElementById("name-update-modal").value = "maryna";
                        document.getElementById("surname-update-modal").value = "maryna";
                    }
                </script>

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
                                <th class="th-column-heading" style="text-align: center">ID</th>
                                <th class="th-column-heading" style="text-align: center">Type</th>
                                <th class="th-column-heading" style="text-align: center">Number of room</th>
                                <th class="th-column-heading" style="text-align: center">Number of bed</th>
                                <th class="th-column-heading" style="text-align: center">Description</th>
                                <th class="th-column-heading" style="text-align: center; width: 190px;">Options</th>
                            </tr>
                            <c:forEach var="tmpRoomType" items="${requestScope.roomTypes}">
                            <tr>
                                <td class="td-column" style="text-align: center">${tmpRoomType.id}</td>
                                <td class="td-column" style="text-align: center">${tmpRoomType.name}</td>
                                <td class="td-column" style="text-align: center">${tmpRoomType.numberOfRoom}</td>
                                <td class="td-column" style="text-align: center">${tmpRoomType.numberOfBed}</td>
                                <td class="td-column" style="text-align: center">DESCRIPTION</td>
                                <td class="td-button " style="text-align: center;">
                                    <button class="button-table" data-toggle="modal"
                                            data-target="#delete-type-of-room-modal" onclick="getRoomType(${tmpRoomType.id})"
                                            name="delete-type-of-room"><img src="img/icon/delete.png"></button>
                                    <button class="button-table" data-toggle="modal" onclick="getRoomType(${tmpRoomType.id})"
                                            data-target="#update-type-of-room-modal"
                                            name="update-type-of-room"><img src="img/icon/update.png"></button>
                                </td>
                            </tr>
                            </c:forEach>

                        </table>
                    </div>

                </div>


                <script>
                    var value;
                    function getRoomType(id_room_type) {
                        $.ajax( {
                            url: "/admin?id_room_type=" + id_room_type,
                            type: "post",

                        })
                        alert(id_room_type);
                    }
                </script>



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
                                <th class="th-column-heading" style="text-align: center">ID</th>
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
                                <c:forEach var="tmpRoom" items="${requestScope.rooms}">
                                    <td class="td-column" style="text-align: center">${tmpRoom.id}</td>
                                <td class="td-column" style="text-align: center">${tmpRoom.number}</td>
                                <td class="td-column" style="text-align: center">${tmpRoom.name}</td>
                                <td class="td-column" style="text-align: center">${tmpRoom.square}</td>
                                <td class="td-column" style="text-align: center">${tmpRoom.price}</td>
                                <td class="td-column" style="text-align: center">${tmpRoom.airConditioner}</td>
                                <td class="td-column" style="text-align: center">${tmpRoom.miniBar}</td>
                                <td class="td-column" style="text-align: center">${tmpRoom.kitchen}</td>
                                <td class="td-column" style="text-align: center">${tmpRoom.free}</td>
                                <td class="td-button">
                                    <button class="button-table" data-toggle="modal" onclick="getRoom(${tmpRoom.id})"
                                            data-target="#delete-room-modal"
                                            name="delete-type-of-room"><img src="img/icon/delete.png"></button>
                                    <button class="button-table" data-toggle="modal" onclick="getRoom(${tmpRoom.id})"
                                            data-target="#update-room-modal"
                                            name="update-type-of-room"><img src="img/icon/update.png"></button>
                                </td>
                            </tr>
                            </c:forEach>

                        </table>
                    </div>


                </div>

                <script>
                    var value;
                    function getRoom(id_room) {
                        $.ajax( {
                            url: "/admin?id_room=" + id_room,
                            type: "post",

                        })
                        alert(id_room);
                    }
                </script>


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
                <form class="modal-form" action="addUser" method="get">
                    <div class="element-modal-form">
                        <label class="modal-label">Name</label>
                        <input class="modal-input" type="text" name="name-user-modal" placeholder="Name" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Surname</label>
                        <input class="modal-input" type="text" placeholder="Surname" name="surname-user-modal" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">E-mail</label>
                        <input class="modal-input" type="text" placeholder="E-mail" name="email-user-modal" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Phone number</label>
                        <input class="modal-input" type="text" placeholder="Phone" name="phone-user-modal" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Address</label>
                        <input class="modal-input" type="text" placeholder="Address" name="address-user-modal" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Password</label>
                        <input class="modal-input" type="password" placeholder="Password" name="psw-user-modal" required>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" style="background: #1C1C1C">Add user</button>
                    </div>
                </form>
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
                <form class="modal-form" action="update_user" method="post">
                    <div class="element-modal-form">
                        <label class="modal-label">Name</label>
                        <input class="modal-input" type="text" name="name-update-modal" value="" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Surname</label>
                        <input class="modal-input" type="text" value="" name="surname-update-modal" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">E-mail</label>
                        <input class="modal-input" type="text" placeholder="E-mail" name="email-update-modal" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Phone number</label>
                        <input class="modal-input" type="text" placeholder="Phone" name="phone-update-modal" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Address</label>
                        <input class="modal-input" type="text" placeholder="Address" name="address-update-modal" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Password</label>
                        <input class="modal-input" type="password" placeholder="Password" name="psw-update-modal" required>
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
                <form action="delete_user" method="post">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary" style="background: #1C1C1C">Delete</button>
                </form>
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
                <form class="modal-form" action="add_room_type" method="post">
                    <div class="element-modal-form">
                        <label class="modal-label">Type</label>
                        <input class="modal-input" type="text" name="type-modal" placeholder="Type" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Number of room</label>
                        <input class="modal-input" type="text" placeholder="Number of room" name="number-of-room-modal"
                               required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Number of bed</label>
                        <input class="modal-input" type="text" placeholder="Number of bed" name="number-of-bed-modal"
                               required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Description</label>
                        <textarea placeholder="Description" class="modal-input" id="descriptionOne" name="descriptionOne"
                                  required>
                        </textarea>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" style="background: #1C1C1C">Add type of room</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!!!!!!!!!!!!!!!!!!----------!!!!!!!!!!!>

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
                <form class="modal-form" action="update_room_type" method="post">
                    <div class="element-modal-form">
                        <label class="modal-label">Type</label>
                        <input class="modal-input" type="text" name="type-update-modal" placeholder="Type" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Number of room</label>
                        <input class="modal-input" type="text" placeholder="Number of room" name="number-of-room-update-modal"
                               required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Number of bed</label>
                        <input class="modal-input" type="text" placeholder="Number of bed" name="number-of-bed-update-modal"
                               required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Description</label>
                        <textarea class="modal-input" id="descriptionTwo" name="description-update-modal"
                                  required>
                        </textarea>
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
                <form action="delete_room_type" method="post">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary" style="background: #1C1C1C">Delete</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- !!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->

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
                <form class="modal-form" action="doBill" method="post">
                    <div class="element-modal-form">
                        <label class="modal-label">Number room</label>
                        <input class="modal-input" type="text" name="number-room-uniq" placeholder="Number_room" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Price</label>
                        <input class="modal-input" type="text" placeholder="Price" name="price-room-uniq" required>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" style="background: #1C1C1C">Make bill</button>
                    </div>
                </form>
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
                <form action="reject" method="post">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary" style="background: #1C1C1C">Reject</button></form>
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
                <form class="modal-form" action="add_room" method="post">
                    <div class="element-modal-form">
                        <label class="modal-label">Number</label>
                        <input class="modal-input" type="text" name="number-add" placeholder="Number" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Room type</label>
                        <input class="modal-input" type="text" placeholder="Room type" name="type-room-add" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Square</label>
                        <input class="modal-input" type="text" placeholder="Square" name="square-add" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Price</label>
                        <input class="modal-input" type="text" placeholder="Price" name="price-add" required>
                    </div>

                    <div class="check-label">
                        <input type="checkbox" id="air-conditioner-add" name="comfort-add">
                        <label class="booking-label" for="air-conditioner-add">Air conditioner</label>
                    </div>

                    <div class="check-label">
                        <input type="checkbox" id="mini-bar-add" name="comfort-add">
                        <label class="booking-label" for="mini-bar-add">Mini bar</label>
                    </div>

                    <div class="check-label">
                        <input type="checkbox" id="kitchen-add" name="comfort-add">
                        <label class="booking-label" for="kitchen-add">Kitchen</label>
                    </div>
                    <div class="check-label">
                        <input type="checkbox" id="is-free-add" name="comfort-add">
                        <label class="booking-label" for="is-free-add">Free</label>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" style="background: #1C1C1C">Add room</button>
                    </div>
                </form>
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
                <form class="modal-form" action="update_room" method="post">
                    <div class="element-modal-form">
                        <label class="modal-label">Number</label>
                        <input class="modal-input" type="text" name="number-update" placeholder="Number" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Room type</label>
                        <input class="modal-input" type="text" placeholder="Room type" name="type-room-update" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Square</label>
                        <input class="modal-input" type="text" placeholder="Square" name="square-room-update" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Price</label>
                        <input class="modal-input" type="text" placeholder="Price" name="price-room-update" required>
                    </div>
                    <div class="check-label">
                        <input type="checkbox" id="air-conditioner-upd" name="comforts-update">
                        <label class="booking-label" for="air-conditioner-upd">Air conditioner</label>
                    </div>
                    <div class="check-label">
                        <input type="checkbox" id="mini-bar-upd" name="comforts-update">
                        <label class="booking-label" for="mini-bar-upd">Mini bar</label>
                    </div>
                    <div class="check-label">
                        <input type="checkbox" id="kitchen-upd" name="comforts-update">
                        <label class="booking-label" for="kitchen-upd">Kitchen</label>
                    </div>
                    <div class="check-label">
                        <input type="checkbox" id="is-free-upd" name="comforts-update">
                        <label class="booking-label" for="is-free-upd">Free</label>
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
                <form action="delete_room" method="post">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary" style="background: #1C1C1C">Delete</button>
                </form>
            </div>
        </div>
    </div>
</div>


</body>
</html>