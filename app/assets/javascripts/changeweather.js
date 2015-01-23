$("select").on("change", function(e){
	e.preventDefault();
	var city = $(":selected").val().split(",")[0]
	var state = $(":selected").val().split(",")[1]
	console.log(city);
	console.log(state);
})

$("#weather_search").on("submit", function(e){
	e.preventDefault();
	var city = $("#weather_search_city").val();
	var state = $("#weather_search_state").val()
	console.log(city)
	console.log(state)
})