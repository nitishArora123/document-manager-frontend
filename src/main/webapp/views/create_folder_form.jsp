<!DOCTYPE html>
<html>
<head>
<title>Registration Form</title>
<%@include file="../theme/cdn.jsp" %>
<script type="text/javascript" src="../js_folder/forms/folder.js"></script>
</head>
<!-- body  -->
<body>
	
	
	<div class="row">
		<div class="col-md-3">
			<%@include file="../theme/nav_header.jsp"%>
			<%@include file="../theme/header.jsp"%>
		</div>
		<div class="col-md-9">
			<div class="container">
			<div  id="createFolderContainer"  style="margin-top:8%"></div>
			</div>
		</div>

	</div>

<script>
var id="<%=request.getParameter("id")!=null? request.getParameter("id"):""%>";
	$(document).ready(() => {
		var jetform=JetForm({"id":"folderId", "parentId":"createFolderContainer", "form":createFolder});
		jetform.setDataKey(id);
		jetform.render();
		 $("#parentId").val(localStorage.getItem("folderId"));

	});
</script>
 <%@include file="../theme/js_scripts.jsp" %> 
<jsp:include page="../template/jetform-template.jsp" />
</body>
</html>



