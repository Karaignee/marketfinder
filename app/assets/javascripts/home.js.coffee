# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  mapOptions = {
    center: new google.maps.LatLng(53.346862, -6.264267),
    zoom: 12,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }

  map = new google.maps.Map(document.getElementById("mf-map"), mapOptions)
  
  for event in eventData
    new google.maps.Marker({
      position: new google.maps.LatLng(event.latitude, event.longitude),
      map: map,
      title: event.title
    })