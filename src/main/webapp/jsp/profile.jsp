<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Keycloak SAML Example App</title>
        <link rel="stylesheet" type="text/css" href="css/styles.css"/>
    </head>
    <body>
        <jsp:useBean id="controller" class="com.keycloak.Controller" scope="request"/>
        <c:set var="req" value="<%=request%>" scope="request"/>

        <div class="wrapper" id="profile">
            <div class="menu">
                <button name="logoutBtn" onclick="location.href = '?GLO=true'" type="button">Logout</button>
            </div>

            <div class="content">
                <div id="profile-content" class="message">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="label">First name</td>
                            <td><span id="firstName">${controller.getFirstName(req)}</span></td>
                        </tr>
                        
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
