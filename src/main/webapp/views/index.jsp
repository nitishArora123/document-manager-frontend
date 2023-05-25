<!DOCTYPE html>
<html>
<head>
<title>Combined List</title>
<%@include file="../theme/cdn.jsp"%>
<script type="text/javascript" src="../js_folder/forms/folder-list.js"></script>
<script type="text/javascript" src="../js_folder/forms/document-manager-list.js"></script>
</head>
<body>
	<div class="row">
		<div class="col-md-3">
			<%@include file="../theme/nav_header.jsp"%>
			<%@include file="../theme/header.jsp"%>
		</div>
		<div class="col-md-9">
			<div class="container">
				<div id="createFolderListContainer" style="margin-top: 8%"></div>
				<div id="documentManagerListContainer" style="margin-top: 8%"></div>
			</div>
		</div>
	</div>

	<script>
		$(document).ready(() => {
			var id='<%=request.getParameter("id") != null ? request.getParameter("id") : ""%>';
			var jetlist1 = JetList({"id":"folderListId", "parentId":"createFolderListContainer", "form":createFolderList});
			var jetlist2 = JetList({"id":"documentManagerId", "parentId":"documentManagerListContainer", "form":documentManager});
			
			console.log(id);
			if (id != '' && id != undefined) {
				console.log('OOOOOOO' + id)
				createFolderList.providers.collection.ajax = 'http://localhost:9000/api/v1/folder/p/' + id;
				localStorage.setItem("folderId", id);  
			} 
			
			jetlist1.render();
			jetlist2.render();
		});
	</script>

	<%-- <jsp:include page="../views/document_manager_list.jsp" /> --%>

	<%@include file="../theme/js_scripts.jsp"%>
	<jsp:include page="../template/jetform-template.jsp" />
</body>
</html>
