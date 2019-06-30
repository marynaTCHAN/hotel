<%@ page import="com.softserve.ita.model.User" %>
<%@ page import="com.softserve.ita.model.Application" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% List<Application> dishes = (List<Application>) request.getAttribute("applications");%>
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
    <li><a href="/admin/info">About me</a></li>
    <li class="active"><a href="/admin/application_from_users">Application from user</a></li>
    <li><a href="/admin/change_information">Change information</a></li>
</ul>

<div id="menu1">

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
                                    <button type="submit" class="my-button-black accept-application"
                                            name="accept-application" onclick="deleteApplication(${tmpApl.id}" >
                                        Accept</button>

                                    <!--data-toggle="modal" data-target="#submit-application"
                                    data-toggle="modal"
                                        data-target="#reject-application"
                                        name="reject-application"-->
                                    <button type="submit" class="my-button-black reject-application" onclick="deleteApplication(${tmpApl.id})">Reject
                                    </button>
                                </div>

                            </td>
                        </tr>

                    </c:forEach>


                </table>
            </div>
        </div>
    </div>
</div>




<div class="modal fade" id="submit-application" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                        <input class="modal-input" type="text"  name="type" placeholder="Number_room" required>
                    </div>
                    <div class="element-modal-form">
                        <label class="modal-label">Price</label>
                        <input class="modal-input" type="text"  placeholder="Price" name="price" required>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" style="background: #1C1C1C">Make bill</button>
            </div>
        </div>
    </div>
</div>



<div class="modal fade" id="reject-application" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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




</body>
</html>