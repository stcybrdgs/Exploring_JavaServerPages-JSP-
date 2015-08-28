<!DOCTYPE html>
<!-- index.jsp -->
<html>
	
    <head>
        <title>Enter Cookie Data</title>
        <link rel="stylesheet" type="text/css" href="css-4.css">	
    </head>

    <body>

        <h1>Welcome to Making Cookies with JSP!</h1>
        <p>To create your cookies, enter data values for the 3 cookie names below.</p>

        <div class="center">
            <br><br>
            <form action="cookieCreator.jsp" method="GET">
                <table class="inline-block">
                    <tr> 
                        <th id="th-id1" colspan="2">Cookies:</th>
                    </tr>		
                    <tr>
                        <td>animal:</td>
                        <td><input type="text" name="animal"></td>
                    </tr>
                    <tr>
                        <td>flower:</td>
                        <td><input type="text" name="flower"></td>
                    </tr>
                    <tr>
                        <td>country:</td>
                        <td><input type="text" name="country"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <br>
                            <input type="submit" class="coral_color button" value="Create Cookies">
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
