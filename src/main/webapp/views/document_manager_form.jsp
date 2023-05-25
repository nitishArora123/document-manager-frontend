 <!DOCTYPE html>
<html>
<head>
<title>Document Manager</title>
<%@include file="../theme/cdn.jsp" %>
<script type="text/javascript" src="../js_folder/forms/document-manager.js"></script>
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
			<div  id="documentManagerFormContainer"  style="margin-top:8%"></div>
			</div>
		</div>
	</div>
<%@include file="../theme/js_scripts.jsp" %>
<jsp:include page="../template/jetform-template.jsp" />

<!-- <script type="text/javascript">
function actionOnClick(event){
	 window.href=
	 invokeUrl(event);
}
</script> -->
<script>
var id="<%=request.getParameter("id")!=null? request.getParameter("id"):""%>";
	$(document).ready(() => {
		var jetform=JetForm({"id":"documentManagerId", "parentId":"documentManagerFormContainer", "form":documentManager});
		jetform.setDataKey(id);
		//jetform.formFields();
		jetform.render();
	});
</script>
</body>
</html>


















