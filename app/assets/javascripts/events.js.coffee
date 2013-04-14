# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $('.date').datepicker()
  $('.date').datepicker("option", "dateFormat", "dd/mm/yy")
  
  for date in $('.date')
  	$(date).datepicker("setDate", $(date).attr('data-value'))
  
  mapEl = document.getElementById('indiv-map')
  
  if mapEl
    mapOptions = {
      center: new google.maps.LatLng(latitude, longitude),
      zoom: 12,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    
    map = new google.maps.Map(mapEl, mapOptions)
    
    marker = new google.maps.Marker({
      position: new google.maps.LatLng(latitude, longitude),
      map: map
    })