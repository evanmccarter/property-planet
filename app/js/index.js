$(document).ready(function() {

	$("button.set").click(function() {
		var lat1 = parseInt($("input.lat1").val(), 10);
		var lat2 = parseInt($("input.lat2").val(), 10);
		var long1 = parseInt($("input.long1").val(), 10);
		var long2 = parseInt($("input.long2").val(), 10);
		SimpleStorage.set(lat1, lat2, long1, long2);
		addToLog("SimpleStorage.set("+lat1+", "+lat2+", "+long1+", "+long2+")");
	});

	document.getElementsByClassName("get")[0].addEventListener('click', function() {
		var glat1 = SimpleStorage.getla1().toNumber();
		var glat2 = SimpleStorage.getla2().toNumber();
		var glon1 = SimpleStorage.getlo1().toNumber();
		var glon2 = SimpleStorage.getlo2().toNumber();
		$(".value").html(glat1+", "+glat2+", "+glon1+", "+glon2);
		addToLog("SimpleStorage.get()");
	});

	var addToLog = function(txt) {
		$(".logs").append("<br>" + txt);
	}

});
