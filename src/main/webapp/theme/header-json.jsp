<%@page import="org.json.simple.JSONObject"%>


<%
JSONObject jsonObject2 = new JSONObject();
jsonObject2.put("name","Nitish");
jsonObject2.put("email","nitish.arora@adjecti.in");
jsonObject2.put("username","Nitish Arora");
jsonObject2.put("designation","Software Developer");
pageContext.setAttribute("name", jsonObject2.get("name").toString()); 
pageContext.setAttribute("email", jsonObject2.get("email").toString()); 
pageContext.setAttribute("username", jsonObject2.get("username").toString()); 
pageContext.setAttribute("designation", jsonObject2.get("designation").toString()); 
%>

