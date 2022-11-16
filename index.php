 <?php
    if(isset($_POST['donate'])) {
        require 'PHPMailerAutoload.php';
        require 'credential.php';

        $mail = new PHPMailer;

        // $mail->SMTPDebug = 4;                               // Enable verbose debug output

        $mail->isSMTP();                                      // Set mailer to use SMTP
        $mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
        $mail->SMTPAuth = true;                               // Enable SMTP authentication
        $mail->Username = EMAIL;                 // SMTP username
        $mail->Password = PASS;                           // SMTP password
        $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
        $mail->Port = 587;                                    // TCP port to connect to

        $mail->setFrom(EMAIL, 'Lisha Mkenya Initiative');
        $mail->addAddress($_POST['email']);     // Add a recipient

        $mail->addReplyTo(EMAIL);
        // print_r($_FILES['file']); exit;
        for ($i=0; $i < count($_FILES['file']['tmp_name']) ; $i++) {
            $mail->addAttachment($_FILES['file']['tmp_name'][$i], $_FILES['file']['name'][$i]);    // Optional name
        }
        $mail->isHTML(true);                                  // Set email format to HTML

        $mail->Subject = $_POST['subject'];
        $mail->Body    = '<div style="border:2px solid red;"><b>Thank you for your donation</b></div>';
        $mail->AltBody = $_POST['message'];

        if(!$mail->send()) {
            echo 'Message could not be sent.';
            echo 'Mailer Error: ' . $mail->ErrorInfo;
        } else {
            echo 'Message has been sent';
        }
    }
    ?>
<?php 
require_once('dbconnection.php');
session_start();

//Code for donation 
// if(isset($_POST['donate']))
if (isset($_POST['fname']) && isset($_POST['lname']) /*...*/)
{
  
      $fname=$_POST['fname'];
      $lname=$_POST['lname'];
    $email=$_POST['email'];
    $contact=$_POST['contact'];
      $food=$_POST['food'];
      $lat=$_POST['lat'];
        $lng=$_POST['lng'];
        $location=$_POST['location'];
		$donationtime=$_POST['donationtime'];
    $trn_date = date("Y-m-d H:i:s");
        
  
  $msg=mysqli_query($con,"insert into donations(fname,lname,email,contact,food,place_lat,place_lng,place_location,collection_time,donation_date,donation_status) values('$fname','$lname','$email','$contact','$food','$lat','$lng','$location','$donationtime','$trn_date','Pending')");

if($msg)
{
  header('location:thanks.php');
  
}
}
?>

<!DOCTYPE html>
<html>
  <head>
  ja
   <link rel="stylesheet" type="text/css" href="css/style.css">
   <link rel="shortcut icon" type="image/png" href="img/fav.png">
  <title>Lisha Mkenya</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
 <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAgYO1sZci59Bn4XK5vBtQyg7luiklHx_o"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  
  </head>
  <body>
<div class="container">
    <div class="container">
  <form id="form" method="post" action="">
    <h1>Lisha Mkenya Initiative</h1>
    <ul>
	<table>
  <tr>
   <td>Types of food accepted will be dry foods only e.g Maize flour and beans.</td> 
  </tr>
   <tr>
   <td>Hotels and eateries can also donate readymade food that will go directly to street families.</td> 
  </tr>
   <tr>
   <td>Donations will be picked from designated pickup points.</td> 
  </tr>
   <tr>
   <td>Non-food donations such as sanitizers and masks are also accepted.</td> 
  </tr>
   <tr>
   <td>Donation desciptions should be kept short and precise e.g 3kg of maize flour and 2 litre cooking oil.</td> 
  </tr>
</table>
      
     
          </ul> 
		  <ul>
      <h3
	  
	  
	  
	  
	  
	  
	  >National Drought Government Statistics</h3>
	  <h3><a href="https://www.ndma.go.ke/">National Drought and Management Authority</a></h3>
      
          </ul> 
     
    <div class="row100">
      <div class="col">
        <div class="inputBox">  
          <input type="text" name="fname" required>
          <span class="text">First Name</span>
          <span class="line"></span>
        </div>
      </div>
      <div class="col">
        <div class="inputBox">
          <input type="text" name="lname" required>
          <span class="text">Last Name</span>
          <span class="line"></span>
        </div>
      </div>
    </div>
    <div class="row100">
      <div class="col">
        <div class="inputBox">
          <input type="text" name="email" type="email" required>
          <span class="text">Email</span>
          <span class="line"></span>
        </div>
      </div>
      <div class="col">
        <div class="inputBox">
          <input type="number" number="number" required="required" name="contact">
          <span class="text">Phone Number</span>
          <span class="line"></span>
        </div>
      </div>
    </div>
    <div class="row100">
    <div class="col">
        <div class="inputBox">
          <input type="text" name="food" required>
          <span class="text">Donation Description</span>
          <span class="line"></span>
        </div>
      </div>
      </div>
             <div class="col col-lg-6">
                <input id="pac-input" class="controls" type="text"
                    placeholder="Enter your location" required style="height: 50px; width: 1050px; font-size: 16px; border-radius: 15px;">
                <div id="type-selector" class="controls">
                  <input type="radio" name="type" id="changetype-all" checked="checked">
                  <label for="changetype-all">All</label>
                </div>
                <div id="map" style="height: 165px;width: 500px;  border-radius: 15px;"></div>
                <br>
                <input type="hidden" name="lat" id="lat">
                <input type="hidden" name="lng" id="lng">
                <input type="hidden" name="location" id="location">
<div class="row100">
      <div class="col">
                  <label for="donationtime"style= "color:#fff; width: 100%; font-size: 20px;">Donation Pick-Up Time (date and time):</label>
  <input type="datetime-local" id="donationtime" name="donationtime">

  </div>
  </div>
  <div class="row100">
      <div class="col">
        <input type="submit" value="Donate" name="donate" style= "color:#00FF00;"> 
      </div>
    </div>
    <img src="img/lshaa.jpg" alt="lisha" width="300" height="200">
            </div>
        </form>
    </div><!--End of row-->
</div><!--End of conatiner-->
<script>
  $('#form').on('submit', function (e) {
    this.submit()
    this.reset()
    e.preventDefault()
})

</script>

<script>
if ( window.history.replaceState ) {
  window.history.replaceState( null, null, window.location.href );
}
</script>
    <script>
      
      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          center: {
            lat: -1.2921, lng: 36.8219}, 
          zoom: 9
        });
        var input = /** @type {!HTMLInputElement} */(
            document.getElementById('pac-input'));

        var types = document.getElementById('type-selector');
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(types);

        var autocomplete = new google.maps.places.Autocomplete(input);
        autocomplete.bindTo('bounds', map);

        var infowindow = new google.maps.InfoWindow();
        var marker = new google.maps.Marker({
          map: map,
          anchorPoint: new google.maps.Point(0, -29)
        });

        autocomplete.addListener('place_changed', function() {
          infowindow.close();
          marker.setVisible(false);
          var place = autocomplete.getPlace();

          if (!place.geometry) {
            // User entered the name of a Place that was not suggested and
            // pressed the Enter key, or the Place Details request failed.
            window.alert("No details available for input: '" + place.name + "'");
            return;
          }

          // If the place has a geometry, then present it on a map.
          if (place.geometry.viewport) {
            map.fitBounds(place.geometry.viewport);
          } else {
            map.setCenter(place.geometry.location);
            map.setZoom(17);  
          }
          marker.setIcon(/** @type {google.maps.Icon} */({
            url: place.icon,
            size: new google.maps.Size(71, 71),
            origin: new google.maps.Point(0, 0),
            anchor: new google.maps.Point(17, 34),
            scaledSize: new google.maps.Size(35, 35)
          }));
          marker.setPosition(place.geometry.location);
          marker.setVisible(true);
var item_Lat =place.geometry.location.lat()
var item_Lng= place.geometry.location.lng()
var item_Location = place.formatted_address;
//alert("Lat= "+item_Lat+"_____Lang="+item_Lng+"_____Location="+item_Location);
        $("#lat").val(item_Lat);
        $("#lng").val(item_Lng);
        $("#location").val(item_Location);
          var address = '';
          if (place.address_components) {
            address = [
              (place.address_components[0] && place.address_components[0].short_name || ''),
              (place.address_components[1] && place.address_components[1].short_name || ''),
              (place.address_components[2] && place.address_components[2].short_name || '')
            ].join(' ');
          }

          infowindow.setContent('<div><strong>' + place.name + '</strong><br>' + address);
          infowindow.open(map, marker);
        });

        // Sets a listener on a radio button to change the filter type on Places
        // Autocomplete.
        function setupClickListener(id, types) {
          var radioButton = document.getElementById(id);
          radioButton.addEventListener('click', function() {
            autocomplete.setTypes(types);
          });
        }

        setupClickListener('changetype-all', []);
        setupClickListener('changetype-address', ['address']);
        setupClickListener('changetype-establishment', ['establishment']);
        setupClickListener('changetype-geocode', ['geocode']);
      }
    </script>

    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAgYO1sZci59Bn4XK5vBtQyg7luiklHx_o&callback=initMap"></script>

  </body>
</html>
