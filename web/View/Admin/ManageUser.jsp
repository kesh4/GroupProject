<%-- 
    Document   : ManageUser
    Created on : Nov 9, 2020, 11:21:11 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/ManageUser.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title>Manage Users</title>
    </head>
    <body style="background-color: #f7f6f9;">
        <div class="content">
            <div class="box" style="background-color: #EAEAEA">
                <h2>Online Users</h2>
                <div class="icon1">
                    <img src="../../Resources/Img/online.png">
                </div><br> <br> <br> 
            </div>

            <div class="box" id="box-color1">
                <h2>Inactive Users</h2>
                <div class="icon">
                    <img src="../../Resources/Img/inactive.png">
                </div> <br> <br> <br> 
            </div>

            <div class="box" id="box-color2">
                <h2>Reported Users</h2>
                <div class="icon">                    
                    <img src="../../Resources/Img/reported.png">
                </div> <br> <br> <br>
            </div>            
        </div>

        <div class="contain">
            <div class="b1">               
                <h2>Reported Users</h2><br>
                <form class="search" style="margin:auto;max-width:300px">
                <input type="text" placeholder="Search" name="search2">
                <button type="submit">Search</button>
            </form><br>
                <table class="table" width="100%">
                    <th class="th"> ID </th>
                    <th class="th" id="th-color1"> TYPE </th>
                </table>  
                <br><br>
                <button id="view" type="submit" class="btn">View</button>
            </div>

            <div class="b2">
                <h2>Activate Users</h2><br>
                <form class="search" style="margin:auto;max-width:300px">
                <input type="text" placeholder="Search" name="search2">
                <button type="submit">Search</button>
            </form><br>
                <table class="table" width="100%">
                    <th class="th"> ID </th>
                    <th class="th" id="th-color1"> TYPE </th>
                    <th class="th" id="th-color2"> OPTION </th>
                </table> <br><br>
                <button id="activate" type="submit" class="btn">Activate</button>
            </div>
        </div>

        <div class="b3">                
            <h2>Deactivate Users</h2>
            
            <form class="search" style="margin:auto;max-width:300px">
                <input type="text" placeholder="Search" id="deactivateUser">
                <button onclick="viewResults()">Search</button>
            </form><br><br>

            <table id="reportedUserTable" width="100%">
                <thead class="table">
                <th class="th"> ID </th>
                <th class="th" id="th-color1"> NAME </th>
                <th class="th" id="th-color2"> TYPE </th>
                <th class="th" id="th-color3"> OPTION </th>
                </thead>

                <tbody id="reportedUserTableBody">

                </tbody>
            </table><br><br>

            <table border="0" width="100%" height="40px" >
                <tr>
                    <td align="left">User Id</td>
                    <td><input type="text" name="uid" id="userid" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Email</td>
                    <td><input type="text" name="mail" id="email" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">First Name</td>
                    <td><input type="text" name="finame" id="fname" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Last Name</td>
                    <td><input type="text" name="laname" id="lname" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Address No</td>
                    <td><input type="text" name="address" id="addno" disabled=""></td>
                </tr>
                <tr>
                <tr>
                    <td align="left">City</td>
                    <td><input type="text" name="cit" id="city" disabled=""></td>
                </tr>
                <td align="left">Province</td>
                <td><input type="text" name="pro" id="province" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Gender</td>
                    <td><input type="text" name="gen" id="gender" disabled=""></td>
                </tr>
                <tr>
                    <th colspan =2><button class="btn" onclick="viewDeactivate()"  id="deactivate">Deactivate</button></th>
                </tr>

            </table>
        </div>
        
        <script src="../../JS/Admin/UserManagement.js" type="text/javascript"></script>
    </body>
</html>
