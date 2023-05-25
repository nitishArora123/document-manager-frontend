var createFolderThumbnail = {
			"id": "folderThumbnailId",
			"parentId": "createFolderThumbnailContainer",
			"title" : "Folders List",
			"namespace" : "",
			"enctype": "multipart/form-data",
			"fields": [
				 {
				"type": "hidden",
				"name": "id",
				"id":true,
				"required": true
			    },
				 {
						"type": "file",
						"name": "name",
						"id" : "name",
						"label": "Folder Name",
						"view" : "thumbnail",
						"placeHolder": "Enter Folder Name"
					},{
					"type" : "date",
					"name" : "createdDate",
					"id" : "name",
					"label" : "Created Date"
					},{
					"type" : "date",
					"name" : "updatedDate",
					"id" : "name",
					"label" : "Updated Date"
					},
					{
					"type" : "text",
					"name" : "systemPath",
					"id" : "name",
					"label" : "Location"
					},
		{
			"name": "download",
			"type": "file",
			"label": "Download",
			"view" : "download"
		}
			],
			"actions" : [ {
				"name": "save",
				"type": "submit",
				"label": "Save",
				"applyTo": "form",
				"handler": {
					"script": "submitForm(event)"
				},
				"redirects": {
				"success": {"href":"create_folder_list"},
				"failure": {"script":"alert('Saving operation failed')"}
			},
			"cssClass": "btn-primary"
		}, {
			"name": "cancel",
			"type": "button",
			"label": "Cancel",
			"applyTo": "form",
			"cssClass": "btn-secondary",
			"redirects": {
				"success": {"href":"create_folder_list"},
			}
		},{
		"name": "addFolder",
		"type": "button",
		"label": "Create Folder",
		"applyTo": "list",
		"cssClass": "btn-danger",
		"handler": {
			"href": "create_folder"
		}
	}, {
		"name": "addDocument",
		"type": "button",
		"label": "Upload Files",
		"applyTo": "list",
		"cssClass": "btn-danger",
		"handler": {
			"href": "document_manager"
		}
	},{
		"name": "view",
		"type": "button",
		"label": "List View",
		"applyTo": "list",
		"cssClass": "btn-primary",
		"handler": {
			"href": "create_folder_list"
		}
	},{
				"name": "add",
				"type": "button",
				"label": "Add File Type",
				"applyTo": "list",
				"cssClass": "btn-danger",
				"handler": {
					"href": "document_type"
				}},
		{
			"name": "edit",
			"type": "button",
			"label": "Edit",
			"applyTo": "row",
			"cssClass": "btn-danger",
			"handler": {
				"href": "create_folder"
			}
		},
		{
			"name": "delete",
			"type": "button",
			"label": "Delete",
			"applyTo": "row",
			"cssClass": "btn-danger"
		}
		],
		"providers": {
			"collection": {
				"ajax": "http://localhost:9000/api/v1/folder",
				"method": "get"
			},
			"selector": {
				"ajax": "http://localhost:9000/api/v1/folder/{id}",
				"method": "get",
				"pathParams":{"id":"#id"}

			},
			"create": {
				"ajax": "http://localhost:9000/api/v1/folder",
				"method": "post"
			},
			"update": {
				"ajax": "http://localhost:9000/api/v1/folder",
				"method": "put"
			},
			"delete": {
				"ajax": "http://localhost:9000/api/v1/folder/{id}",
				"method": "delete"
			}
		}
	};