{div, h1, p, span, a, strong, h2, script} = React.DOM

@Pages = React.createClass

  displayName: 'Page'

  componentWillMount: ->
    scripta = document.createElement("script")
    scripta.text =
      "function initMap() {
              var myLatLng = {lat: 55.9438671, lng: -3.2041671};
              var mapDiv = document.getElementById('map');
              var map = new google.maps.Map(mapDiv, {
                  center: myLatLng,
                  zoom: 15
              });
              var marker = new google.maps.Marker({
                position: myLatLng,
                map: map,
                title: 'Central Hall'
              });
            }"
    document.body.appendChild(scripta);

    script = document.createElement("script")
    script.async = true
    script.defer = true
    script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyB0bvQXFr2cnnV7NYyksoiLkTnEptC_IQw&callback=initMap'
    document.body.appendChild(script);


  render: ->
    div null,
      div className: 'page main',
        h1 className: 'title',
          p className: 'name', 'Richard Bell'
          p null, 'and'
          p className: 'name', 'Stephanie Mann'
          p null, 'are getting married'
          p null, 'on'
          p className: 'important', 'Saturday 22nd October 2016'
          p null, 'at'
          p className: 'important', 'Central Hall'
        p null, 'Please let us know if you can make it by emailing '
        a href:'mailto:"thebellstobe@gmail.com"', 'thebellstobe@gmail.com'
        p null, ' by '
        strong null, '22nd September.'
      div className: 'page details',
        h2 null, 'Details:'
        p null, 'Ceremony begins: 1:30 pm'
        p null, 'Boogie woogie kicks off: 7:45 pm'
        p null, 'Carriages: 11:00 pm'
        p null, 'The whole wedding will take place at Central Hall, Edinburgh.'
        div className: 'address',
          p null, 'Central Hall'
          p null, '2 W Tollcross,'
          p null, 'Edinburgh'
          p null, 'EH3 9BP'
        div id:'map'
      div className: 'page transport',
        h2 null, 'Transport information:'
        p null, "Central Hall is a short walk from "
        a href:'https://www.google.co.uk/maps/place/Haymarket/@55.945597,-3.2204723,17z/data=!3m1!4b1!4m5!3m4!1s0x4887c7a5bdd4b393:0x6e7360c44f6f7caa!8m2!3d55.945597!4d-3.2182783', 'Edinburgh Haymarket Station'
        span null, " or a 15 minute bus ride from "
        a href:'https://www.google.co.uk/maps/place/Waverley+Railway+Station,+Edinburgh+EH1+1BB/@55.9519331,-3.1917618,17z/data=!3m1!4b1!4m5!3m4!1s0x4887c78fbef1f32b:0x7161189432e275bc!8m2!3d55.9519331!4d-3.1895678', 'Edinburgh Waverley Station'
        span null, ". Unfortunately there is no free parking on site, but there's plenty of parking nearby. "
        a href:'http://www.centralvenues.org/wp-content/uploads/2013/11/Central-Hall-how-to-find-us-access-details.pdf', 'Find out more here.'
      div className: 'page giftlist',
        h2 null, 'Giftlist:'
        p null, 'The most important gift to us is to have you share in our day, but if you really want to get us something we are registered at John Lewis with gift list number: 677417.',
        p null, "We're moving in to a small flat, so we'd really appreciate if you only got us stuff from the giftlist"
