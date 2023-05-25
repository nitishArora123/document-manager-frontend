var documentType = {
			"id": "documentTypeId",
			"parentId": "documentTypeContainer",
			"title" : "Document Type",
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
						"type": "text",
						"name": "dmFileType",
						"label": "Document Type",
						"placeHolder": "Enter Document Type"
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
				"success": {"href":"document_type_list"},
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
				"success": {"href":"document_type_list"},
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
				"href": "document_type"
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
				"ajax": "http://localhost:9000/api/v1/docType",
				"method": "get"
			},
			"selector": {
				"ajax": "http://localhost:9000/api/v1/docType/{id}",
				"method": "get",
				"pathParams":{"id":"#id"}

			},
			"create": {
				"ajax": "http://localhost:9000/api/v1/docType",
				"method": "post"
			},
			"update": {
				"ajax": "http://localhost:9000/api/v1/docType",
				"method": "put"
			},
			"delete": {
				"ajax": "http://localhost:9000/api/v1/docType/{id}",
				"method": "delete"
			}
		}
	};