/**
 * 
 */
$(document).ready(function() {
	if ($("#alertSuccess").text().trim() == "") {
		$("#alertSuccess").hide();
	}
	$("#alertError").hide();
});

$(document).on("click", "#bookingBtn", function(event){
	$("#alertSuccess").text("");
	$("#alertSuccess").hide("");
	$("#alertError").text("");
	$("#alertError").hide("");
	
	var status = validateAppoForm();
	if(systus != true){
		$("alertError").text(status);
		$("alertError").show();
		return;
	}
	
	$("#booingForm").submit();
});

