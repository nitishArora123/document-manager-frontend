 <!DOCTYPE html>
<html>
<head>
<title>Document Types List</title>
<%@include file="../theme/cdn.jsp" %>
<script type="text/javascript" src="../js_folder/forms/document-type.js"></script>
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
			<div  id="documentTypeContainer"  style="margin-top:8%"></div>
			</div>
		</div>
	</div>
<%@include file="../theme/js_scripts.jsp" %>
<jsp:include page="../template/jetform-template.jsp" />

<script>
	$(document).ready(() => {
		var jetlist=JetList({"id":"documentTypeId", "parentId":"documentTypeContainer", "form":documentType});
		jetlist.render();
	});
</script>
</body>
</html>


















