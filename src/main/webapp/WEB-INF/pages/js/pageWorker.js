function setHeaderLink(){
	$("#myNavbar a[href]").each(function() {    	
    	
        if (this.href.split("?")[0] == window.location.href.split("?")[0]) {
        	$(this).css("background-color", "#F9E79F").css("color", "#000000");
            
        }

    });
} 
