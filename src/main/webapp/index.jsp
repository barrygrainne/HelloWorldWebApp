<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.* , com.fasterxml.jackson.databind.ObjectMapper, com.fasterxml.jackson.core.JsonProcessingException" %> 

<html>
<body>
<h2>Hello World!</h2>
<% 
	for(int i=1; i<=6; i++) {
		out.println("<h" + i + ">H" + i + "</h" + ">");
	}

ArrayList<String>months = new ArrayList<String>();
months.add("Jan");
months.add("Feb");
months.add("Mar");

ObjectMapper om = new ObjectMapper();
String json;
try {
	json=om.writeValueAsString(months);
} catch(Exception ex){
	json="{}";
}
%>
<%=json %>
</body>
</html>
