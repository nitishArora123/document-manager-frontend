package com.adjecti.document.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class DocumentManagerController {

	@RequestMapping("/document_manager")
	public String docForm() {
		System.out.println("document-manager");
		return "document_manager_form";
		
	}	
	
	@RequestMapping("/document_manager_list")
	public String docList() {
		System.out.println("document-manager-list");
		return "document_manager_list";
		
	}	
	
	@RequestMapping("/create_folder_list")
	public String folderList() {
		System.out.println("document-manager-list");
		return "create_folder_list";
		
	}
	
	@RequestMapping("/create_folder")
	public String folderForm() {
		System.out.println("document-manager-list");
		return "create_folder_form";
		
	}
	
	@RequestMapping("/document_type_list")
	public String docTypeList() {
		System.out.println("document-manager-list");
		return "document_type_list";
		
	}
	
	@RequestMapping("document_type")
	public String docTypeForm() {
		System.out.println("document-manager-list");
		return "document_type_form";
		
	}
	
	@RequestMapping("/thumbnail_list")
	public String folderThumbnailList() {
		System.out.println("document-manager-list");
		return "folder_thumbnail_list";
		
	}
}
