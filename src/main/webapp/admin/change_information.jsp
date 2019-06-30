<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../css/style-main.css">
    <link rel="stylesheet" type="text/css" href="../css/style-user.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">

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

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>

<header>
    <nav role='navigation'>
        <ul>
            <li><a href="../index.html">Home</a></li>
            <li><a href="../services.html">Services</a></li>
            <li><a href="../rooms.html">Rooms</a></li>
            <li><a href="../contact_us.html">Contact Us</a></li>
            <li><a href="../my_profile.html">My profile</a></li>

        </ul>
    </nav>
</header>

<div class= "blank"></div>

<ul class="nav nav-tabs">
    <li class="active"><a href="${pageContext.request.contextPath}/admin/info">About me</a></li>
    <li><a href="${pageContext.request.contextPath}/admin/application_from_users">Application from user</a></li>
    <li><a href="${pageContext.request.contextPath}/admin/change_information">Change information</a></li>
</ul>

<div id="menu2">

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
                                        <button class="button-table" type="submit" onclick="deleteUser(${tmpUser.id})"
                                                name="add-user"><img src="img/icon/delete.png"></button>
                                        <button class="button-table" data-toggle="modal" data-target="#update-user-modal"
                                                name="add-user"><img src="img/icon/update.png"></button>
                                    </td>
                                </tr>
                            </c:forEach>

                        </table>
                    </div>
                </div>


                <script>
                    function deleteUser(id) {
                        $ajax( {
                            url: "/admin?id="+id,
                            type: "delete"
                        })
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
                                <th class="th-column-heading" style="text-align: center">Type</th>
                                <th class="th-column-heading" style="text-align: center">Number of room</th>
                                <th class="th-column-heading" style="text-align: center">Number of bed</th>
                                <th class="th-column-heading" style="text-align: center">Description</th>
                                <th class="th-column-heading" style="text-align: center; width: 190px;">Options</th>
                            </tr>
                            <c:forEach var="tmpRoomType" items="${requestScope.roomTypes}">
                                <tr>
                                    <td class="td-column" style="text-align: center">${tmpRoomType.name}</td>
                                    <td class="td-column" style="text-align: center">${tmpRoomType.numberOfRoom}</td>
                                    <td class="td-column" style="text-align: center">${tmpRoomType.numberOfBed}</td>
                                    <td class="td-column" style="text-align: center">description</td>
                                    <td class="td-button " style="text-align: center;">
                                        <button class="button-table" data-toggle="modal"
                                                data-target="#delete-type-of-room-modal"
                                                name="delete-type-of-room"><img src="img/icon/delete.png"></button>
                                        <button class="button-table" data-toggle="modal"
                                                data-target="#update-type-of-room-modal"
                                                name="update-type-of-room"><img src="img/icon/update.png"></button>
                                    </td>
                                </tr>
                            </c:forEach>

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
                                <c:forEach var="tmpRoom" items="${requestScope.rooms}">
                                <td class="td-column" style="text-align: center">${tmpRoom.number}</td>
                                <td class="td-column" style="text-align: center">Family</td>
                                <td class="td-column" style="text-align: center">${tmpRoom.square}</td>
                                <td class="td-column" style="text-align: center">${tmpRoom.price}</td>
                                <td class="td-column" style="text-align: center">${tmpRoom.airConditioner}</td>
                                <td class="td-column" style="text-align: center">${tmpRoom.miniBar}</td>
                                <td class="td-column" style="text-align: center">${tmpRoom.kitchen}</td>
                                <td class="td-column" style="text-align: center">${tmpRoom.free}</td>
                                <td class="td-button">
                                    <button class="button-table" data-toggle="modal" data-target="#delete-room-modal"
                                            name="delete-type-of-room"><img src="img/icon/delete.png"></button>
                                    <button class="button-table" data-toggle="modal" data-target="#update-room-modal"
                                            name="update-type-of-room"><img src="img/icon/update.png"></button>
                                </td>
                            </tr>
                            </c:forEach>

                        </table>
                    </div>


                </div>


            </div>

        </div>

    </div>


</div>

<div class="modal fade" id="add-user-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                        <input class="modal-input" type="text"  name="name" placeholder="Name" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Surname</label>
                        <input class="modal-input" type="text"  placeholder="Surname" name="surname" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">E-mail</label>
                        <input class="modal-input" type="text"  placeholder="E-mail" name="email" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Phone number</label>
                        <input class="modal-input" type="text"  placeholder="Phone" name="phone" required>
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


<div class="modal fade" id="update-user-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                        <input class="modal-input" type="text"  name="name" placeholder="Name" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Surname</label>
                        <input class="modal-input" type="text"  placeholder="Surname" name="surname" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">E-mail</label>
                        <input class="modal-input" type="text"  placeholder="E-mail" name="email" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Phone number</label>
                        <input class="modal-input" type="text"  placeholder="Phone" name="phone" required>
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


<div class="modal fade" id="delete-user-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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




<div class="modal fade" id="add-type-of-room-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                        <input class="modal-input" type="text"  name="type" placeholder="Type" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Number of room</label>
                        <input class="modal-input" type="text"  placeholder="Number of room" name="number-of-room" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Description</label>
                        <textarea onfocus="if (this.value === 'Your comment') {this.value = ''; }" onblur="if (this.value === '')
                        {this.value = 'Your comment';}"  class="modal-input" id="descriptionOne" name="descriptionOne" required>
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


<div class="modal fade" id="update-type-of-room-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                        <input class="modal-input" type="text"  name="type" placeholder="Type" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Number of room</label>
                        <input class="modal-input" type="text"  placeholder="Number of room" name="number-of-room" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Description</label>
                        <textarea onfocus="if (this.value === 'Your comment') {this.value = ''; }" onblur="if (this.value === '')
                        {this.value = 'Your comment';}"  class="modal-input" id="descriptionTwo" name="descriptionTwo" required>
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



<div class="modal fade" id="delete-type-of-room-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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





<div class="modal fade" id="add-room-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                        <input class="modal-input" type="text"  name="type" placeholder="Number" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Room type</label>
                        <input class="modal-input" type="text"  placeholder="Room type" name="type-room" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Square</label>
                        <input class="modal-input" type="text"  placeholder="Square" name="square" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Price</label>
                        <input class="modal-input" type="text"  placeholder="Price" name="price" required>
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



<div class="modal fade" id="update-room-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                        <input class="modal-input" type="text"  name="type" placeholder="Number" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Room type</label>
                        <input class="modal-input" type="text"  placeholder="Room type" name="type-room" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Square</label>
                        <input class="modal-input" type="text"  placeholder="Square" name="square" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Price</label>
                        <input class="modal-input" type="text"  placeholder="Price" name="price" required>
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


<div class="modal fade" id="delete-room-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <button type="button" class="btn btn-primary" style="background: #1C1C1C">Delete</button>
            </div>
        </div>
    </div>
</div>




</body>
</html>