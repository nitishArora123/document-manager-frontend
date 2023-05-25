<style>
.dropzone-wrapper {
	width: 100%;
	height: 100%;
	border: 2px dashed black;
	margin: 0px;
	padding: 10px;
}

.button {
	display: inline-block;
	padding: 10px;
	background: #ccc;
	cursor: pointer;
	border-radius: 5px;
	border: 1px solid #ccc;
}

.button:hover {
	background: #ddd;
}

#fileElem {
	display: none;
}
</style>


<!-- templates  -->

<script id="jf-modal-template" type="text/x-handlebars-template"> 
	<div class="modal jet-modal fade" id="{{id}}Modal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="{{id}}ModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="{{id}}ModalLabel"></h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        ...
	      </div>
	      <div class="modal-footer d-none">

	        <button type="button" class="btn btn-secondary btn-cancel" data-bs-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary btn-confirm">Save</button>

	      </div>
	    </div>
	  </div>
	</div>
</script>

<script id="jf-form-template" type="text/x-handlebars-template">          
  <form id="{{id}}" name="{{name}}" method="post" enctype="{{enctype}}">
	{{#if_eq modal false}}
   		<h2>{{title}}</h2>
	{{/if_eq}}
	<h6>{{subtitle}}</h6>
  </form>
</script>

<!-- templates  -->
<script id="jf-text-template" type="text/x-handlebars-template">          
  <div class="form-group">
    <label for="{{name}}" class="form-label">{{label}}</label>
    <input type="{{type}}" class="form-control" name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}" placeholder="{{placeHolder}}" id="{{name}}" value="{{value}}" {{#if required}}required{{/if}}>
  </div>
</script>

<script id="jf-date-template" type="text/x-handlebars-template">
  <div class="form-group">
    <label for="{{name}}" class="form-label">{{label}}</label>
    <input type="{{type}}" class="form-control" name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}" id="{{name}}" value="{{value}}" {{#if required}}required{{/if}}>
  </div>
</script>

<script id="jf-time-template" type="text/x-handlebars-template">
  <div class="form-group">
    <label for="{{name}}" class="form-label">{{label}}</label>
    <input type="{{type}}" class="form-control" name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}" id="{{name}}" step="{{step}}" value="{{value}}" {{#if required}}required{{/if}}>
  </div>
</script>

<script id="jf-hidden-template" type="text/x-handlebars-template">
  <input type="{{type}}" name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}" value="{{value}}" id="{{name}}">
</script>

<script id="jf-textarea-template" type="text/x-handlebars-template">
  <div class="form-group">
    <label for="{{name}}" class="form-label">{{label}}</label>
    <textarea class="form-control" name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}" placeholder="{{placeHolder}}" id="{{name}}" rows="{{rows}}" cols="{{cols}}" {{#if required}}required{{/if}}>{{value}}</textarea>
  </div>
</script>

<script id="jf-email-template" type="text/x-handlebars-template">
  <div class="form-group">
    <label for="{{name}}" class="form-label">{{label}}</label>
    <input type="{{type}}" class="form-control" name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}" id="{{name}}" value="{{value}}" {{#if required}}required{{/if}}>
  </div>
</script>

<script id="jf-password-template" type="text/x-handlebars-template">
  <div class="form-group">
    <label for="{{name}}" class="form-label">{{label}}</label>
    <input type="{{type}}" class="form-control" name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}" id="{{name}}" value="{{value}}" {{#if required}}required{{/if}} minlength="{{minLength}}">
  </div>
</script>

<script id="jf-number-template" type="text/x-handlebars-template">
  <div class="form-group">
    <label for="{{name}}" class="form-label">{{label}}</label>
    <input type="{{type}}" class="form-control" name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}" id="{{name}}" value="{{value}}" {{#if required}}required{{/if}} maxlength="{{maxlength}}">
  </div>
</script>


<script id="jf-radio-template" type="text/x-handlebars-template">
  <div class="form-group" id="{{name}}-form-group">
    <label class="form-label">{{label}}</label>
	{{#each options}}
    	<div class="form-check">
			{{#if_eq ../value value}}
	      		<input type="radio" name="{{#if_ne ../parentNode undefined}}{{../parentNode}}.{{/if_ne}}{{../name}}" value="{{value}}" checked ><label class="form-check-label ms-1" for="{{../name}}">{{label}}</label>
			{{else}}
	      		<input type="radio" name="{{#if_ne ../parentNode undefined}}{{../parentNode}}.{{/if_ne}}{{../name}}" value="{{value}}" ><label class="form-check-label ms-1" for="{{../name}}">{{label}}</label>
			{{/if_eq}}
    	</div>
	 {{/each}}
  </div>
</script>

<script id="jf-checkbox-template" type="text/x-handlebars-template">
  <div class="form-group" id="{{name}}-form-group">
    <label for="{{name}}" class="form-label">{{label}}</label>
	{{#each options}}
    	<div class="form-check">
			{{#if_eq ../value value}}
	      		<input type="checkbox" name="{{#if_ne ../parentNode undefined}}{{../parentNode}}.{{/if_ne}}{{../name}}" value="{{value}}" checked><label class="form-check-label ms-1" for="{{../name}}">{{label}}</label>
			{{else}}
      			<input type="checkbox" name="{{#if_ne ../parentNode undefined}}{{../parentNode}}.{{/if_ne}}{{../name}}" value="{{value}}" ><label class="form-check-label ms-1" for="{{../name}}">{{label}}</label>
			{{/if_eq}}
    	</div>
	 {{/each}}
  </div>
</script>

<script id="jf-select-template" type="text/x-handlebars-template">
	<div class="form-group">	
		<label for="{{name}}" class="form-label">{{label}}</label>
		<select name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}" id="{{name}}" class="form-select">
			<option value="-1">Select {{label}}</option>
			{{#each options}}
				{{#if_eq ../value value}}
            		<option value="{{value}}" selected>{{label}}</option>
				{{else}}
					<option value="{{value}}">{{label}}</option>
				{{/if_eq}}
            {{/each}}
		</select>
	</div>
</script>

<script id="jf-file-template" type="text/x-handlebars-template">
	<div class="form-group">	
		<label for="{{name}}" class="form-label">{{label}}</label>
		<input type="file" id="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}" name="{{name}}" class="form-control" accept="{{accept}}"/>
	</div>
</script>

<script id="jf-field-group-template" type="text/x-handlebars-template">
	<div class="col-md-{{col}}" id="{{name}}-col">
		<div class="row {{cssClass}}" id="{{name}}">
		</div>
	</div>
</script>

<script id="jf-form-actions-template" type="text/x-handlebars-template">
	<div class="container mt-3">
		<div class="row" id="action-row">
			<div class="col-md-12">
				<div class="float-end">
					{{#each []}}
						{{#if_eq applyTo "form"}}
							{{#if_eq type "button"}}
								{{#if_eq handler undefined}}
		  							<button name="{{name}}" id="{{name}}" type="{{type}}" formId={{formId}} applyto="{{applyTo}}" class="{{cssClass}}" onclick="{{name}}OnClick(event)">{{{label}}}</button>
								{{else}}
									{{#if_ne handler.script undefined}}
										<button name="{{name}}" id="{{name}}" type="{{type}}" formId={{formId}} applyto="{{applyTo}}" class="{{cssClass}}" onclick="{{handler.script}}">{{{label}}}</button>
									{{/if_ne}}
						
									{{#if_ne handler.href undefined}}
										<button name="{{name}}" id="{{name}}" type="{{type}}" formId={{formId}} applyto="{{applyTo}}" class="{{cssClass}}" onclick="invokeUrl(event)">{{{label}}}</button>
									{{/if_ne}}
	
									{{#if_ne handler.url undefined}}
										<button name="{{name}}" id="{{name}}" type="{{type}}" formId={{formId}} applyto="{{applyTo}}" class="{{cssClass}}" onclick="invokeUrl(event)">{{{label}}}</button>
									{{/if_ne}}
								{{/if_eq}}
							{{/if_eq}}
							{{#if_eq type "submit"}}
								<button name="{{name}}" id="{{name}}" type="{{type}}" formId={{formId}} applyto="{{applyTo}}" class="{{cssClass}}" onclick="submitForm(event)">{{{label}}}</button>
							{{/if_eq}}
						{{/if_eq}}
					{{/each}}
				</div>
			</div>
		</div>
	</div>
</script>

<script id="jf-button-template" type="text/x-handlebars-template">
	{{#if_eq handler undefined}}
  		<button name="{{name}}" id="{{name}}" type="{{type}}" class="{{cssClass}}" onclick="{{name}}OnClick(event)">{{{label}}}</button>
	{{else}}
		{{#if_ne handler.script undefined}}
	  		<button name="{{name}}" id="{{name}}" type="{{type}}" applyto="{{applyTo}}" formId="{{formId}}" class="{{cssClass}}" onclick="{{handler.script}}">{{{label}}}</button>
		{{/if_ne}}

		{{#if_ne handler.href undefined}}
	  		<button name="{{name}}" id="{{name}}" type="{{type}}" applyto="{{applyTo}}" formId="{{formId}}" class="{{cssClass}}" onclick="invokeUrl(event)">{{{label}}}</button>
		{{/if_ne}}
		
		{{#if_ne handler.url undefined}}
	  		<button name="{{name}}" id="{{name}}" type="{{type}}" applyto="{{applyTo}}" formId="{{formId}}" class="{{cssClass}}" onclick="invokeUrl(event)">{{{label}}}</button>
		{{/if_ne}}
	{{/if_eq}}
</script>

<script id="jf-link-template" type="text/x-handlebars-template">
	{{#if_eq handler undefined}}
		<a name="{{name}}" id="{{name}}" type="link" onclick="{{name}}OnClick(event)" formid="{{formId}}" class="{{cssClass}}" applyto="{{applyTo}}">{{{label}}}</a>
	{{else}}
		{{#if_ne handler.script undefined}}
			<a name="{{name}}" id="{{name}}" type="link" onclick="{{handler.script}}" formid="{{formId}}" class="{{cssClass}}" applyto="{{applyTo}}">{{{label}}}</a>
		{{/if_ne}}

		{{#if_ne handler.href undefined}}
			<a name="{{name}}" id="{{name}}" type="link" onclick="invokeUrl(event)" formid="{{formId}}" class="{{cssClass}}" applyto="{{applyTo}}">{{{label}}}</a>
		{{/if_ne}}
		
		{{#if_ne handler.dialog undefined}}
			<a name="{{name}}" id="{{name}}" type="link" onclick="openDialog(event)" formid="{{formId}}" class="{{cssClass}}" applyto="{{applyTo}}">{{{label}}}</a>
		{{/if_ne}}
	{{/if_eq}}
</script>


<script id="jf-list-template" type="text/x-handlebars-template">
	<div class="form-group">
		<label for="{{name}}" class="form-label">{{label}}</label>
		<table class="table table-bordered" id="{{name}}">
			<thead>
				<tr>
					{{#each fields}}
						<td>{{label}}</td>
					{{/each}}
					<td>Actions</td>
				</tr>
			</thead>
			<tbody>
				
			</tbody>
		</table>
	</div>
</script>

<script id="jf-list-field-template" type="text/x-handlebars-template">
	<tr>
		{{#each fields as | field}}
			<td>{{>textField}}</td>
		{{/each}}
	</tr>
</script>

<!--  List sub field elements -->
<!-- templates  -->
<script id="list-text-template" type="text/x-handlebars-template">          
    <input type="{{type}}" class="form-control" name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}" placeholder="{{placeHolder}}" id="{{name}}" value="{{value}}" {{#if required}}required{{/if}}>
</script>

<script id="list-textarea-template" type="text/x-handlebars-template">          
     <textarea class="form-control" name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}" placeholder="{{placeHolder}}" id="{{name}}" rows="{{rows}}" cols="{{cols}}" {{#if required}}required{{/if}}>{{value}}</textarea>
</script>


<script id="list-date-template" type="text/x-handlebars-template">
    <input type="{{type}}" class="form-control" name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}" id="{{name}}" value="{{value}}">
</script>

<script id="list-email-template" type="text/x-handlebars-template">
    <input type="{{type}}" class="form-control" name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}" id="{{name}}" value="{{value}}">
</script>

<script id="list-password-template" type="text/x-handlebars-template">
    <input type="{{type}}" class="form-control" name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}" id="{{name}}" value="{{value}}"  minlength="{{minLength}}">
</script>

<script id="list-number-template" type="text/x-handlebars-template">
    <input type="{{type}}" class="form-control" name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}" id="{{name}}" value="{{value}}" maxlength="{{maxlength}}">
</script>


<script id="list-radio-template" type="text/x-handlebars-template">
	{{#each options}}
      	<input type="radio" name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{../name}}" value="{{value}}" checked="checked"> <label class="form-check-label" for="{{../name}}">{{label}}</label>
	 {{/each}}
  </div>
</script>

<script id="list-checkbox-template" type="text/x-handlebars-template">
	{{#each options}}
      	<input type="checkbox" name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{../name}}" value="{{value}}" checked="checked"> <label class="form-check-label" for="{{../name}}">{{label}}</label>
	 {{/each}}
  </div>
</script>

<script id="list-select-template" type="text/x-handlebars-template">
	<select name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}" id="{{name}}" class="form-select">
		<option value="-1">Select {{label}}</option>
		{{#each options}}
        	<option value="{{value}}">{{label}}</option>
		{{/each}}
	</select>
</script>

<script id="list-file-template" type="text/x-handlebars-template">
	<input type="file" name="{{#if_ne parentNode undefined}}{{parentNode}}.{{/if_ne}}{{name}}{{name}}" id="{{name}}" class="form-control" accept="{{accept}}"/>
</script>

<script id="jf-list-header-template" type="text/x-handlebars-template">
	<h3>{{title}}</h3>
</script>

<script id="jf-datatable-template" type="text/x-handlebars-template">
	<table class="table table-bordered" id="{{id}}"></table>
</script>

<script id="jf-list-actions-template" type="text/x-handlebars-template">
	<div class="container mt-3">
		<div class="row" id="action-row">
			<div class="col-md-12">
				<div class="float-end">
					{{#each []}}
						{{#if_eq applyTo "list"}}
							{{#if_eq type "button"}}
								<button name="{{name}}" id="{{name}}" type="{{type}}" formId={{formId}} applyto="{{applyTo}}" class="{{cssClass}}" onclick="{{name}}OnClick(event)">{{{label}}}</button>
							{{else}}
								{{#if_eq type "link"}}
									<a name="{{name}}" id="{{name}}" type="{{type}}" formId={{formId}} applyto="{{applyTo}}" class="{{cssClass}}" onclick="{{name}}OnClick(event)">{{{label}}}</a>
								{{/if_eq}}
							{{/if_eq}}
						{{/if_eq}}
					{{/each}}
				</div>
			</div>
		</div>
	</div>
</script>

<script id="jf-row-actions-template" type="text/x-handlebars-template">
	{{#each []}}
		{{#if_eq applyTo "row"}}
			{{#if_eq type "button"}}
				<button name="{{name}}" id="{{name}}" type="{{type}}" formId={{formId}} dataKey="{{dataKey}}" applyto="{{applyTo}}" class="{{cssClass}}" onclick="{{name}}OnClick(event)">{{{label}}}</button>
			{{else}}
				{{#if_eq type "link"}}
					<a name="{{name}}" id="{{name}}" type="{{type}}" formId={{formId}} dataKey="{{dataKey}}" applyto="{{applyTo}}" class="{{cssClass}}" onclick="{{name}}OnClick(event)">{{{label}}}</a>
				{{/if_eq}}
			{{/if_eq}}
		{{/if_eq}}
	{{/each}}
</script>

<script id="jf-confirm-template" type="text/x-handlebars-template">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				{{message}}
			</div>
			<div class="col-md-12">
		        <button type="button" class="btn btn-secondary" id="btnCancel" data-bs-dismiss="modal">{{{labelCancel}}}</button>
	        	<button type="button" class="btn btn-primary" id="btnConfirm" onClick="{{confirmFunc}}">{{{labelConfirm}}}</button>
			</div>
		</div>
	</div>
</script>

<script id="jf-docs-template" type="text/x-handlebars-template">
  <div class="form-group">
<button onclick="myFunction()">{{label}}</button>
    <input type="{{type}}" class="form-control" name="{{name}}" placeholder="{{placeHolder}}" id="{{name}}" value="{{value}}" {{#if required}}required{{/if}}>
  </div>
</script>

<script id="jf-file-drag-drop-template"
	type="text/x-handlebars-template">
 		<div class="dropzone-wrapper">	
			<div class="row">
				<div class="col" id="addFile" >
				</div>
			<div id="browseId" class="text-center">
				<label for="{{name}}" class="form-label">{{label}}</label>
				<h6>or</h6>
 				<input type="file" id="fileElem" multiple onchange="handleFiles(this.files)" hidden>
   				<label class="button" for="fileElem">Browse files</label>
			</div>

			</div>
		</div>
</script>