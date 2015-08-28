<!DOCTYPE html>
<!-- jsp_tags.jsp -->
<!-- the DIRECTIVE TAG sets whole page conditions -->
<%@ include file="sample_included_file.jsp" %>
<!-- the next directive could be made more specific by indicating
		java.util.Date so as to import only the Date class (this is the 
		only class from the util library that we are actually using) -->
<%@ page import="java.util.*" %>
<html>
	<head>
		<title>JSP Tags</title>
	</head>
	<body>
		<h1>JSP Tags</h1>
		<h2>Hello! The time is now <%= new Date() %></h2>
		<!-- HTML comment - compiled and executed but not displayed. 
				this comment will show in View Source -->
		<!-- <h2>Hello! The time is now <%= new Date() %></h2> -->
		<!-- the COMMENT TAG is used for text that's not returned to the browser -->		
		<%-- JSP comment - not compiled, executed or returned to browser.--%>
		<%-- <h2>Hello! the time is now <%= new Date() %></h2> --%>
		<table border="1">
			<!-- the SCRIPTLET TAG is used to insert Java statements -->
			<%
			// This is a comment
			/*
				This is a comment
			*/
			int localVar = 0;
			int n = 3;
			for ( int i = 0; i < n; i++ ){
				%>
				<tr>
					<td>Number & localVar</td>
					<!-- the EXPRESSION TAG is used to compile and run Java code
						and convert the output into string expressions; note that semicolons
						are not required in such expressions because the line is an
						expression, rather than a statement that requires termination. -->
					<td><%= i+1 %></td>
					<td><%= localVar++ %></td>
				</tr>
				<%
			}
			localVar = 99;
			%>
		</table>
		<!-- the DECLARATION TAG is used to declare instance variables or 
				methods; the globalCount var is accessible by all browser 
				sessions bc it is wrapped in the declaration tag; the 
				declaration tag is not often employed bc the items it
				declares are global in character and are not thread-safe -->
		<%! int globalCount = 0; %>
		<p>This is globalCount: <%= globalCount %></p>
                
		<!-- the localVar is wrapped in a Scriptlet tag, so it is accessible
				to only the browser session wherein it is instantiated, making
				it local rather than global in nature -->
		<p>This is localVar <%= localVar %></p>
                <% ++globalCount; %>
	</body>
</html>