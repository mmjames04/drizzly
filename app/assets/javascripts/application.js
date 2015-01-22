// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

//http://api.wunderground.com/api/8eff5076b5830486/conditions/q/ "+ state +" / "+ city +" .json

current_observation

jQuery(document).ready(function($) {
  
  $("#search").on('submit', function(event{
  	event.preventDefault();

  var url : "http://api.wunderground.com/api/8eff5076b5830486/geolookup/conditions/q/"+ state +" / "+ city +".json",
  input.val('');
  $.ajax({
  	url: url,
  dataType : "jsonp",
  success : function(parsed_json) {
  	var location = parsed_json['location']['city'];
 	var temp_f = parsed_json['current_observation']['temp_f'];
	var weather = parsed_json['current_observation']['weather'];	
  	console.log("Current weather in "+ city +", "+ state + temp_f + weather);
  }
  });
});






// the 10 day api information: 

// http://api.wunderground.com/api/8eff5076b5830486/forecast10day/q/"+ state +" / "+ city +" .json


// <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
// <script>
// jQuery(document).ready(function($) {
//   $.ajax({
//   url : "http://api.wunderground.com/api/8eff5076b5830486/geolookup/forecast10day/q/"+state +"/"+ city +".json",
//   dataType : "jsonp",
//   success : function(parsed_json) {
//   var location = parsed_json['location']['city'];
//   var temp_f = parsed_json['forecast']['temp_f'];
// 	var weather = parsed_json['forecast']['weather'];
//   alert("Current forcast in " + location + " is: " + temp_f);
//   }
//   });
// });
// </script>



// international cities

// replace state with country name

// http://api.wunderground.com/api/8eff5076b5830486/geolookup/q/ "+ country_name +" / "+ city +" .json

// searching by zipcode 

// http://api.wunderground.com/api/8eff5076b5830486/geolookup/q/"+ zipcode + " .json

// each location as an ID

// Auto IP lookup
// http://api.wunderground.com/api/8eff5076b5830486/geolookup/q/autoip.json


// <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
// <script>
// jQuery(document).ready(function($) {
//   $.ajax({
//   url : "http://api.wunderground.com/api/8eff5076b5830486/geolookup/q/autoip.json",
//   dataType : "jsonp",
//   success : function(parsed_json) {
//   var location = parsed_json['location']['city'];
//   var temp_f = parsed_json['forecast']['temp_f'];
// 	var weather = parsed_json['forecast']['weather'];
//   alert("Current forcast in " + location + " is: " + temp_f);
//   }
//   });
// });
// </script>

// CurrentLocation => IPLookup=/Autoip.json =>  pws => station => 1st child => id: "KDCWASHI18"

// => pws = /pws:[:id].json => var location - parsed.json['location']['city'],
// vartemp=parsed.json['']


// <script> 
// jQuery(document).ready(function($) {
// $.ajax({
// url : "http://api.wunderground.com/api/8eff5076b5830486/geolookup/q/autoip.json",
// datatype : "jsonp"
// success : function(parsed_json){
// 	var city = parsed_json['location']['city'];
// 	var state = parsed_json['location']['state'];
// }

// conditions/q/"state"/"city".json

// they want
// feels like

// var temp_f = parsed_json['current_observation']['temp_f'];
// var weather = parsed_json['current_observation']['weather'];


// forcast1/10day/q/"state"/"city".json

// they want
// temp, (possibly high and low)
// one word weather

// var day_one_title = parsed_json['forecast']['txt_forcast']['forcastday']['title'];
// var day_one_forcast = parsed_json['forecast']['txt_forcast']['forcastday']['fcttext'];




// });
// }
//  </script>