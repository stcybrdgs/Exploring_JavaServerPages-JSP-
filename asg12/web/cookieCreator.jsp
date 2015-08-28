<!DOCTYPE html>
<!-- cookieCreator.jsp -->
<html>
    <head>
        <title>Cookies that were Created</title>
        <link rel="stylesheet" type="text/css" href="css-4.css">
        <style type="text/css">
            ol { margin-left: 80px; }
            li { font-xize: 2em; text-aligh: left; }
            p { font-size: 1em; line-height: 1; }
        </style>
    </head>
    <%@ include file="cookieCreatorProcessor.jsp" %>

    <body>
        <h1>Three Cookies Were Created:</h1> 
        <p>The data values you entered for the cookies are listed below.</p>        
        <div class="center">
            <br>
            <ol>
                <li>
                    <p>
                        <b>animal:</>
                        <!-- after the include, output the cookie data using the 
                             request.getParameter() function-->                            
                        <% out.print((String)request.getParameter("animal")); %>
                    </p>
                </li>
                <li>
                    <p>
                        <b>flower:</b>
                        <% out.print((String)request.getParameter("flower")); %>
                    </p>
                </li>
                <li>
                    <p>
                        <b>country:</b>
                        <% out.print((String)request.getParameter("country")); %>
                    </p>
                </li>
            </ol>
            
            <br>
            <button onclick="location.href = 'readingCookies.jsp'"
                    class="coral_color button">Go to the Reading Cookies page</button>
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