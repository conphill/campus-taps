$(document).ready(function(){
	tinyMCE.init({
        mode : "textareas",
		theme : "advanced",
		editor_selector : "tinymce",
		plugins : "autolink,lists,pagebreak,advlink,nonbreaking",
		// Theme options
		theme_advanced_buttons1 : "bold,italic,underline,strikethrough,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink",
		theme_advanced_buttons2 : "",
		theme_advanced_buttons3 : "",		
		theme_advanced_toolbar_location : "top",
		theme_advanced_toolbar_align : "left",
		theme_advanced_statusbar_location : "bottom",
		// theme_advanced_blockformats:"p,h3",
		// theme_advanced_resizing : false,
		// Example content CSS (should be your site CSS)
		content_css : "/stylesheets/style.css",
		// Drop lists for link/image/media/template dialogs
		template_external_list_url : "lists/template_list.js",
		external_link_list_url : "lists/link_list.js",
		external_image_list_url : "lists/image_list.js",
		media_external_list_url : "lists/media_list.js"
	});
})