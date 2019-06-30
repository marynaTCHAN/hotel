<%@ page import="com.softserve.ita.model.User" %>
<%@ page import="com.softserve.ita.model.Application" %>
<%@ page import="java.util.List" %>
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

<div class="tab-content">
    <div id="home" class="tab-pane fade in active">
        <div class = "about-me">
            <div class="information-about-me">
                <div class="right-panel-wrapper">
                    <div class="my-profile-photo">
                        <img src="../img/icon/user.png">
                    </div>
                    <button class="change-user" id ="change-photo-button"
                            data-toggle="modal" data-target="#change-photo"
                            name="change-photo">Change photo</button>
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
                        <input class="modal-input" type="text"  placeholder="Surname" name="surname" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">E-mail</label>
                        <input class="modal-input" type="text" placeholder="E-mail" name="email" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Phone number</label>
                        <input class="modal-input" type="text"  placeholder="Phone" name="phone" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Address</label>
                        <input class="modal-input" type="text"  placeholder="Address" name="address" required>
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







</body>
</html>