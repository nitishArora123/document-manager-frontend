var documentManager = {
	"id": "userId",
	"parentId": "userListContainer",
	"title": "User Form",
	"namespace": "",
	"enctype": "multipart/form-data",
	"fields": [
		{
			"type": "text",
			"name": "docId",
			"id": true,
			"required": true
		},
		{
			"type": "text",
			"name": "userName",
			"label": "Username",
			"id" 	: name,
			"required": true
		},
		 {
			"type": "text",
			"name": "name",
			"label": "File Name",
			"placeHolder": "Enter File Name"
		}, {
			"type": "textarea",
			"name": "description",
			"label": "Description",
			"required": true,
			"placeHolder": "Description"

		}, {
			"type": "select",
			"name": "dmFileType",
			"label": "Type",
			"provider": {
				"ajax": "http://localhost:9000/api/v1/docType",
				"value": "id",
				"label": "dmFileType"
			},
			"required": true
		}/*,
		{
			"type": "date",
			"name": "uploadDate",
			"label": "Upload Date ",
			"required": false
		}*/
	],
	"actions": [{
		"name": "save",
		"type": "submit",
		"label": "Save",
		"applyTo": "form",
		"handler": {
			"script": "submitForm(event)"
		},
		"redirects": {
			"success": {
				"href": "document_manager_list"
			},
			"failure": {
				"href": "document_manager_list"
			}
		},
		"cssClass": "btn-primary"
	}, {
		"name": "cancel",
		"type": "button",
		"label": "Cancel",
		"applyTo": "form",
		"cssClass": "btn-secondary",
		"redirects": {
			"success": {
				"href": "document_manager_list"
			}
		}
	},

	{
		"name": "addFolder",
		"type": "button",
		"label": "New Folder",
		"applyTo": "list",
		"cssClass": "btn-danger",
		"handler": {
			"href": "create_folder"
		}
	}, {
		"name": "addDocument",
		"type": "button",
		"label": "Add Document",
		"applyTo": "list",
		"cssClass": "btn-danger",
		"handler": {
			"href": "document_manager"
		}
	},{
				"name": "add",
				"type": "button",
				"label": "Document Type",
				"applyTo": "list",
				"cssClass": "btn-danger",
				"handler": {
					"href": "document_type"
				}}, {
		"name": "edit",
		"type": "button",
		"label": "Edit",
		"applyTo": "row",
		"cssClass": "btn-danger",
		"handler": {
			"href": "document_manager"
		}
	},
	{
		"name": "delete",
		"type": "button",
		"label": "Delete",
		"applyTo": "row",
		"cssClass": "btn-danger",
		/*"handler": {
			"script": "delete(event)"
		}*/
	}
	],
	"providers": {
		"collection": {
			"ajax": "http://localhost:9000/api/v1/documentManager",
			"method": "get"
		},
		"selector": {
			"ajax": "http://localhost:9000/api/v1/documentManager/{id}",
			"method": "get",
			"pathParams": {"id":"#id"}
			

		},
		"create": {
			"ajax": "http://localhost:9000/api/v1/documentManager/form",
			"method": "post",
			"pathParams": {},
			"queryParams": {},
			"requestParams": {}
		},
		"update": {
			"ajax": "http://localhost:9000/api/v1/documentManager",
			"method": "put"
		},
		"delete": {
			"ajax": "http://localhost:9000/api/v1/documentManager/{id}",
			"method": "delete"
		}
	}
};
