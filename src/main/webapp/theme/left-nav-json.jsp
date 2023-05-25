<%@page import="org.json.simple.JSONObject"%>

<!-- Left_navigation -->
<%
JSONObject jsonObject = new JSONObject();
jsonObject.put("company","Your Company");
jsonObject.put("dash","Dashboard");
jsonObject.put("dashL","Dashboard Light");
jsonObject.put("dashD","Dashboard Dark");
jsonObject.put("emp","Employee");
jsonObject.put("hr","Core HR");
jsonObject.put("finance","Finance");
jsonObject.put("task","Tasks");
jsonObject.put("performance","Performance");
jsonObject.put("project","Projects");
jsonObject.put("report","Reports");
jsonObject.put("clients","Manage Clients");
pageContext.setAttribute("company", jsonObject.get("company").toString()); 
pageContext.setAttribute("dash", jsonObject.get("dash").toString()); 
pageContext.setAttribute("dashL", jsonObject.get("dashL").toString()); 
pageContext.setAttribute("dashD", jsonObject.get("dashD").toString()); 
pageContext.setAttribute("emp", jsonObject.get("emp").toString()); 
pageContext.setAttribute("hr", jsonObject.get("hr").toString());
pageContext.setAttribute("finance", jsonObject.get("finance").toString());
pageContext.setAttribute("task", jsonObject.get("task").toString()); 
pageContext.setAttribute("performance", jsonObject.get("performance").toString());
pageContext.setAttribute("project", jsonObject.get("project").toString());
pageContext.setAttribute("report", jsonObject.get("report").toString()); 
pageContext.setAttribute("clients", jsonObject.get("clients").toString());
%>



