<!DOCTYPE html>
<!-- readingCookies.jsp -->
<html>
    <head>
        <title>Reading Cookies</title>
        <link rel="stylesheet" href="css-4.css">
    </head>
    <body>
        <h1>Reading Cookies</h1> 
        <p>The following cookie data was read:</p> 
        
        <div class="center">
            <%
                Cookie cookies[] = null;
                // Get an array of Cookies associated with this domain
                cookies = request.getCookies();
                if( cookies != null ){
                    out.println("<h2 class=\"blue_color\">"
                        + "Found Cookies: Name --- Value</h2>");
                    for(int i=0; i < cookies.length; i++){
                        out.print("<h3>Name: " + cookies[i].getName() + " --- ");
                        out.print("Value: " + cookies[i].getValue() + "</h3>");
                    }
                }
                else{
                    out.println("<h2>No cookies found</h2>");
                }
            %>
            <br>
            <button onclick="location.href='sessionCreation.jsp'" class="coral_color button">
                Go to the Session Creation page</button> 
            <br><br>
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
</html>