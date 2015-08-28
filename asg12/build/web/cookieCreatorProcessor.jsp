<!-- cookieCreatorProcessor.jsp -->

<%
	// Create three cookies from Request object
        String animalVal = request.getParameter("animal");
        String flowerVal = request.getParameter("flower");
        String countryVal = request.getParameter("country");
     
        Cookie animal = new Cookie("animal", animalVal);                
	Cookie flower = new Cookie("flower", flowerVal);
	Cookie country = new Cookie("country", countryVal);

	// Set expiration dates to 2 hours
	animal.setMaxAge(60*60*2);
	flower.setMaxAge(60*60*2);
	country.setMaxAge(60*60*2);

	// Add cookies to Response object - back to browser
	response.addCookie(animal);
	response.addCookie(flower);
	response.addCookie(country);
%>