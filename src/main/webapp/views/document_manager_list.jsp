 <!DOCTYPE html>
<html>
<head>
<title>Document Manager List</title>
<%@include file="../theme/cdn.jsp" %>
<script type="text/javascript" src="../js_folder/forms/document-manager-list.js"></script>
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
			<div  id="documentManagerListContainer"  style="margin-top:8%"></div>
			</div>
		</div>
	</div>
<%@include file="../theme/js_scripts.jsp" %>
<jsp:include page="../template/jetform-template.jsp" />

<script>
	$(document).ready(() => {
		var jetlist=JetList({"id":"documentManagerId", "parentId":"documentManagerListContainer", "form":documentManager});
		jetlist.render();
	});
</script>
</body>
</html>


















