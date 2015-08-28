<!-- form-processor-classes.jsp -->
<! DOCTYPE HTML >  
<%@ page import="vehicles.*, java.io.*, java.util.*" %>
<html>
    <head>
        <title>Display Vehicles Info</title>
        <link rel="stylesheet" href="css-3.css">
    </head>
    <body>
        <%
            // get parameters from the request object
            String planeManufacturer = request.getParameter("planeManufacturer");
            String planeModel = request.getParameter("planeModel");
            String planeSafetyRating = request.getParameter("planeSafetyRating");
            String planeOrderInfo = request.getParameter("planeOrderInfo");
            String carManufacturer = request.getParameter("carManufacturer");
            String carModel = request.getParameter("carModel");
            String carYear = request.getParameter("carYear");
            String carOrderInfo = request.getParameter("carOrderInfo");
            // use custom Java objects to display information on screen
            Aircraft aircraft = new Aircraft(planeManufacturer, planeModel, 
                    planeSafetyRating, planeOrderInfo);
            Automobile automobile = new Automobile(carManufacturer, carModel, 
                    carYear, carOrderInfo);
            // per reqs: "No need to write the .txt files on the OpenShift servers 
        %>
        <h1>Thank you for order. . . we need the business!</h1>
        <p>This is the vehicle information you entered for your custom junker:</p>	
        <br>
        <div class="center">
            <div class="vehicleInfo outputTable">
                <table>
                    <!-- Display AIRCRAFT Information Submitted By User -->
                    <tr>
                        <td colspan="2">
                            <h3>Aircraft Information:</h3>
                        </td>
                    </tr>
                    <tr>
                        <td>Manufacturer:</td>
                        <td><%= aircraft.getPlaneManufacturer() %></td>			
                    </tr>
                    <tr>
                        <td>Model:</td>
                        <td><%= aircraft.getPlaneModel() %></td>					
                    </tr>
                    <tr>
                        <td>Safety Rating:</td>
                        <td><%= aircraft.getPlaneSafetyRating() %></td>					
                    </tr>
                    <tr>
                        <td>Custom Order Info:</td>
                        <td><%= aircraft.getPlaneOrderInfo() %></td>					
                    </tr>
                    <!-- Display AUTOMOBILE Information Submitted By User -->
                    <tr>
                        <td colspan="2">
                            <hr>
                            <h3>Automobile Information:</h3>
                        </td>
                    </tr>							
                    <tr>
                        <td>Manufacturer:</td>
                        <td><%= automobile.getCarManufacturer() %></td>			
                    </tr>
                    <tr>
                        <td>Model:</td>
                        <td><%= automobile.getCarModel() %></td>					
                    </tr>
                    <tr>
                        <td>Year:</td>
                        <td><%= automobile.getCarYear() %></td>					
                    </tr>
                    <tr>
                        <td>Custom Order Info:</td>
                        <td><%= automobile.getCarOrderInfo() %></td>					
                    </tr>
                    <tr>
                        <td colspan="2">
                            <hr>                            
                            <br>
                            <form action="index.html" method="get">
                                <input type="submit" value="Return to the Order Page" class="submitButton">
                            </form>
                        </td>
                    </tr>
                </table>
                <br><br>
            </div>
        </div>
        <br><br>
        <footer>
            <em>
                ITSE 2317 
                &nbsp;&nbsp;&bigstar;&nbsp;&nbsp; 
                Java JSP
                &nbsp;&nbsp;&bigstar;&nbsp;&nbsp; 
                asg11_bridges
            </em>
        </footer>	
    </body>
</html>
