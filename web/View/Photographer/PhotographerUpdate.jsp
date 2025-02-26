<%-- 
   Document   : Photographer
   Created on : Oct 8, 2020, 11:13:19 AM
   Author     : ASUS
--%>

<%@page import="Model.Photographer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");

    String pic = p.getProfilpic();
%>

<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Photographer</title>
        <link type="text/css" rel="stylesheet" href="../../CSS/Photographer/PhotographerUpdate.css">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet">  
    </head>

    <body>
        <div style="display: flex; justify-content: center;">
            <div class="delAcc" id="delAcc" style="display: none;">
                <div class="delHeader">
                    <h3>Delete Account</h3>
                    <span  id="delAccClose" style="color: black; margin: auto; cursor: pointer; height: 50%; font-size:30px;">&times;</span>
                </div>

                <div>
                    <h4>Are you sure you want to delete?</h4>

                    <div style="padding-top: 20px;" class="confirm">
                        <span class="Report" id="Delete" onclick="Deleteaccount();">Yes</span>
                        <span class="Report" id="noBtn" onclick="closemodal()">No</span>
                    </div>
                </div>
            </div>
        </div>  
        <!--        <div style="display: flex; justify-content: center;">
                    <div class="portfolioupload" id="portup" style="display: none;">
                        <div class="portupheading">
                            <h2>Drop Here</h2>
                            <span  id="portfolioclose" style="color: black; margin: auto; cursor: pointer; height: 50%; font-size:30px;">&times;</span>
                        </div>
                        <div>
                            <img src="../../Resources/Img/upload.svg" height="20%" width="20%" style="margin-left: 35%;">
                        </div>
                        <input type="file" name="upimage" id="upimage" style="display:none;" accept="image/jpeg" onchange="propicvalidation()">
                        <label for="upimage" style="margin-left: 38%; background-color:#00478a; color:wheat; font-size: 110%; padding: 0.5% 1%; border-radius: 10px;">
                            Browse
                        </label>
                        <div style="padding-top: 20px;" class="confirm">
                            <a href="#" class="Report" id="Delete" onclick="propicupload();"style="margin-left: 38%; background-color:#f48024; color:wheat; font-size: 110%; padding: 0.5% 1%; border-radius: 10px; cursor: pointer;">Upload</a>                        
                        </div>
                    </div>
                </div>-->


        <div id="portup" class="portfolioupload">
            <!-- Upload Modal content -->
            <div class="upload-modal-content">
                <span class="upload-close" id='upload-close' onclick="cleardata()">&times;</span>
                <div class="upload-modal-image">
                    
                    <img src="../../Resources/Img/upload.svg">
                    <input type="file" id="portimage" style="display:none;" accept="image/jpeg" onchange="propicvalidation();">
                    <label for="portimage">
                        <a type="file" id="upload-image"> Browse</a>
                    </label> <br> <br>               
                </div>
                <div class="upload-review"> 
                    <label>
                        <a href="#" type="button" id="final-upload" onclick="propicupload()">Submit</a>
                    </label>
                </div>
            </div>
        </div>


        <div class="fixedheader">   
            <div class="pageheader">
                <a href="../PhotographerHome.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <li><a href="<%= request.getContextPath()%>/View/Fourm/MainForum.jsp" type="button"> Forum </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/PhotographerSearch.jsp" type="button"> Photographers </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Photographer/PhotographerUploadPhoto.jsp" type="button"> Upload </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Photographer/PhotographerProfile.jsp" type="button"> Profile </a></li>

                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="<%= request.getContextPath()%>/View/Notifications/notificationsHome.jsp" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                </div>

                <div class="logout">
                    <a href="../../LogOut?loc=ph" type="button"> Logout </a>
                </div>



            </div>


            <div class="profile-header">
                <div class="user-detail">
                    <div class="user-image">
                        <img src="../../Resources/Img/Gallery Sample Images/ProfilePicture/<%= pic%>">
                        <div class="labelpro">                            
                            <label onclick="openPropicmodal()">
                                Change
                            </label>
                        </div>
                    </div>
                    <div class="user-data">
                        <h2><%= p.getFname()%>&nbsp;<%= p.getLname()%></h2>
                    
                        <p><%= p.getWebsite() %><br>
                            <strong><%= p.getEmail() %></strong><br>                                        
                            <i><%= p.getAddress_no()%></i> </p>

                    </div>

                </div>				
            </div>
        </div>
        <div class="skill-box">

            <ul>
                <li><a href="#accsec">Account</a></li> <br> <br>
                <li><a href="#addsec">Address</a></li> <br> <br>
                <!--<li><a href="#taxsec">Subscription</a></li> <br> <br>-->
                <li><a href="#passsec">Password</a></li> <br> <br>
                <li><a href="#delsec">Delete Account</a></li> <br> <br>

            </ul>	

        </div>
        <div>
            <div class="account" id="accsec">
<!--                <div class="heading" >
                    <p>Account                                                            
                        <label> <a href="#" type="button">Client View </a></label>
                    </p>

                </div> -->
<br>
                <div class="edit">
                    <form>                                                        
                        <label for="fname">First Name </label> 
                        <br> 
                        <div class="icon">
                            <input type="text" id="fname" name="fname" placeholder="<%= p.getFname()%>" disabled> 
                            <img id ="pencil1" onclick="pencileditenable('fname')" src="../../Resources/Img/edit.png">
                            <img class="icon1" id="ic1" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic1')" style="visibility:hidden;" >
                            <img class="icon2" id="ic2" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic2')" style="visibility:hidden;">
                        </div>
                        <br> 
                        <label for="lname">Last Name </label>  
                        <br> 
                        <div class="icon">
                            <input type="text" id="lname" name="lname" placeholder="<%= p.getLname()%>" disabled> 
                            <img id="pencil2" onclick="pencileditenable('lname')" src="../../Resources/Img/edit.png">
                            <img class="icon1" id="ic3" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic3')" style="visibility:hidden;" >
                            <img class="icon2" id="ic4" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic4')" style="visibility:hidden;">
                        </div>                   
                        <br> 
                        <label for="email">Email </label>  
                        <br> 
                        <div class="icon"> 
                            <input type="text" id="email" name="email" placeholder="<%= p.getEmail()%>" disabled> 
                            <img id="pencil3" onclick="pencileditenable('email')" src="../../Resources/Img/edit.png">
                            <img class="icon1" id="ic5" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic5')" style="visibility:hidden;" >
                            <img class="icon2" id="ic6" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic6')" style="visibility:hidden;">
                        </div>
                        <br> 
                        <label for="mnum">Mobile Number </label>  
                        <br> 
                        <div class="icon"> 
                            <input type="text" id="mnum" name="mnum" placeholder="<%= p.getMobile()%>" disabled> 
                            <img id="pencil4" onclick="pencileditenable('mnum')" src="../../Resources/Img/edit.png">
                            <img class="icon1" id="ic7" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic7')" style="visibility:hidden;" >
                            <img class="icon2" id="ic8" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic8')" style="visibility:hidden;">
                        </div>
                        <br> 
                        <label for="website">Website </label>  
                        <br> 
                        <div class="icon"> 
                            <input type="text" id="web" name="web" placeholder="<%= p.getWebsite()%>" disabled> 
                            <img id="pencil5" onclick="pencileditenable('web')" src="../../Resources/Img/edit.png">
                            <img class="icon1" id="ic9" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic9')" style="visibility:hidden;" >
                            <img class="icon2" id="ic10" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic10')" style="visibility:hidden;">
                        </div>
                        <br> 
                        <label for="Bio">Bio</label>
                        <br> 
                        <div class="icon"> 
                            <textarea id="biotext" name="biotext" cols="57" rows="5" placeholder="<%= p.getBio()%>" disabled></textarea>
                            <img id="pencil6" onclick="pencileditenable('biotext')" src="../../Resources/Img/edit.png">
                            <img class="icon1" id="ic11" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic11')" style="visibility:hidden;" >
                            <img class="icon2" id="ic12" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic12')" style="visibility:hidden;">
                        </div>
                        <br> 
                        <label for="interest">Field of Interest</label>
                        <br> 
                        <div class="icon">
                            <textarea id="interest" name="interest" cols="57" rows="3" placeholder="<%= p.getFielsOfdInterest()%>" disabled></textarea>
                            <img id="pencil7" onclick="pencileditenable('interest')" src="../../Resources/Img/edit.png">
                            <img class="icon1" id="ic13" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic13')" style="visibility:hidden;" >
                            <img class="icon2" id="ic14" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic14')" style="visibility:hidden;">
                        </div>
                    </form>
                </div>
            </div> 
        </div>
        <div class="address" id="addsec">
            <div class="heading">
                <p>Address</p>
            </div> <br>
            <div class="edit">
                <form>
                    <label for="address" >Address </label> 
                    <br>
                    <div class="icon"> 
                        <input type="text" id="address" name="address" placeholder="<%= p.getAddress_no()%>" disabled> 
                        <img id="pencil8" onclick="pencileditenable('address')" src="../../Resources/Img/edit.png">
                        <img class="icon1" id="ic15" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic15')" style="visibility:hidden;" >
                        <img class="icon2" id="ic16" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic16')" style="visibility:hidden;">
                    </div>
                    <br>
                    <label for="city">City </label>                     
                    <br>
                    <div>
                        <input type="text" id="city" name="city" placeholder="<%= p.getCity()%> " disabled>
                        <img id="pencil9" onclick="pencileditenable('city')" src="../../Resources/Img/edit.png">
                        <img class="icon1" id="ic17" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic17')" style="visibility:hidden;" >
                        <img class="icon2" id="ic18" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic18')" style="visibility:hidden;">
                    </div>
                    <br>
                    <label for="province">Province </label>  
                    <br>
                    <div>
                        <input type="text" id="province" name="province" placeholder="<%= p.getProvince()%>" disabled> 
                        <img id="pencil10" onclick="pencileditenable('province')" src="../../Resources/Img/edit.png">
                        <img class="icon1" id="ic19" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic19')" style="visibility:hidden;" >
                        <img class="icon2" id="ic20" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic20')" style="visibility:hidden;">
                    </div>                   
                    <br>
                    <label for="zip">Zip/Postal </label>  
                    <br>
                    <div>
                        <input type="text" id="zip" name="zip" placeholder="<%= p.getPostalCode()%> " disabled>
                        <img id="pencil11" onclick="pencileditenable('zip')" src="../../Resources/Img/edit.png">
                        <img class="icon1" id="ic21" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic21')" style="visibility:hidden;" >
                        <img class="icon2" id="ic22" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic22')" style="visibility:hidden;">
                    </div>

                </form>
            </div>
        </div> 

        <div class="password" id="passsec">
            <div class="heading">
                <p>Password</p>
            </div> 
            <div class="edit">
                <p>To change your password, you’ll need to verify the current one first. Then create a password you’re not using elsewhere, and be sure to change it regularly as well as anytime you suspect it’s been compromised.</p>
                <a href="changepassword.jsp" type="button">Change Password</a>
            </div>

        </div> 

        <div class="deleteacc" id="delsec">
            <div class="heading">
                <p>Delete Account</p>
            </div> 
            <div class="edit">
                <p> You may request permanent deletion of your account at any time, provided you do not have active subscriptions.<br> Account you are requesting to be deleted: <span> <strong><%= p.getEmail() %></strong></span> </p>
                <a type="button" onclick="openmodal()">Delete Account</a>
            </div>

        </div> 

        <div class="pagefooter">
            <div class="contact">
                <p><a href="../Home.jsp" type="button">Sl Lens Trends</a></p>
            </div> 
            <div class="footnote">
                <ul>
                    <li> <a href="" type="button">Copyright © 2020 Adobe Systems Incorporated. All rights reserved.</a> </li>
                    <li> <a href="#" type="button"> Terms and Condition </a> </li>
                    <li> <a href="#" type="button"> Contact Us </a> </li>
                </ul>
            </div>        
        </div>                                            

        <script type="text/javascript" src="../../JS/Photohrapher/PhotographerUpdate.js"></script>

    </body>

</html>
