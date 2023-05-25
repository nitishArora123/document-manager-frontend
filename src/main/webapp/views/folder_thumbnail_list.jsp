
<!DOCTYPE html>
<html>
<head>
<title>Folder List</title>
<%@include file="../theme/cdn.jsp"%>
<script type="text/javascript" src="../js_folder/forms/folder-thumbnail-view.js"></script>
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
				<div id="createFolderThumbnailContainer" style="margin-top: 8%"></div>
			</div>
		</div>
	</div>

</body>
<script>
	$(document).ready(() => {
		var id='<%=request.getParameter("id") != null ? request.getParameter("id") : ""%>';
		var jetlist=JetList({"id":"folderThumbnailId", "parentId":"createFolderThumbnailContainer", "form":createFolderThumbnail});
			jetlist.render();
	});
</script>

<%@include file="../theme/js_scripts.jsp"%>
<jsp:include page="../template/jetform-template.jsp" />
</html>