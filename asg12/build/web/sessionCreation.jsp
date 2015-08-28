<!DOCTYPE html>
<!-- index.jsp -->
<html>
	
    <head>
        <title>Session Creation Page</title>
        <link rel="stylesheet" type="text/css" href="css-4.css">	
    </head>
    <%
        // Catch user input of name::value pairs using the GET method 
        String artistMsg = request.getParameter("artist");
        if( artistMsg == null || artistMsg.length() == 0 )
            artistMsg = "no value entered";
    
        String colorMsg = request.getParameter("color");
        if( colorMsg == null || colorMsg.length() == 0 )
            colorMsg = "no value entered";

        // Create 2 session attributes based on the 2 name::value pairs
        session.setAttribute("artistKey", artistMsg);
        session.setAttribute("colorKey", colorMsg);

        // Use the session.getAttribute method to obtain the values
        String artistKey = (String)session.getAttribute("artistKey");
        String colorKey = (String)session.getAttribute("colorKey");        
 %>
 
    <body>

        <h1>Welcome to the Session Creation Page!</h1>
        <p>Enter data values for the 2 session keys below.</p>

        <div class="center">
            <br><br>
            <form action="sessionCreation.jsp" method="GET">
                <table class="inline-block">
                    <tr> 
                        <th id="th-id1" colspan="2">Enter Session Keys:</th>
                        <td></td>
                        <th class="sky_color">Current Keys:</th>                        
                    </tr>		
                    <tr>
                        <td>artist:</td>
                        <td><input type="text" name="artist"></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td class="confirmKey">
                            artist:&nbsp;&nbsp;
                            <% out.print(artistKey); %>
                        </td>
                    </tr>
                    <tr>
                        <td>color:</td>
                        <td><input type="text" name="color"></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>                    
                        <td class="confirmKey">
                            color:&nbsp;&nbsp;
                            <% out.print(colorKey); %>
                        </td>                        
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <br>
                            <input type="submit" class="coral_color button" value="Create Session Keys">
                        </td>
                    </tr>		
                </table>	
            </form>
            <br>
        </div>

        <br><br>
        <footer>
            <em>
                ITSE 2317 
                &nbsp;&nbsp;&bigstar;&nbsp;&nbsp; 
                Java JSP
                &nbsp;&nbsp;&bigstar;&nbsp;&nbsp; 
                asg12_bridges
            </em>
        </footer>
    </body>
<html>
