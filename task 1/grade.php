<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>gradeCalc</title>
</head>
<body>
    <?php
     if ($_GET) {
        
     
      $sum=$_GET["phy"]+$_GET["chemi"]+$_GET["bilo"]+$_GET["math"]+$_GET["cimp"];
      
      $percant= $sum/500*100;

}
    ?>
     
     <div class="container">

     <div class="row">
                <div class="col-12">
                    <br>
                    <h1>gradeCalc</h1>
                    <form >
                        <div class="form-group">
                            <input  class="form-control" name="phy" placeholder="name">
                        </div>
                        <div class="form-group">
                            <input class="form-control" name="chemi" placeholder="price">
                        </div>
                        <div class="form-group">
                            <input class="form-control" name="bilo" placeholder="address">
                        </div>
                        <div class="form-group">
                            <input class="form-control" name="math" placeholder="address">
                        </div>
                        <div class="form-group">
                            <input class="form-control" name="cimp" placeholder="address">
                        </div>
                        
                        <div class="form-group">

                            <input type="submit" class="btn btn-success"  value="getYearPersantage" id="clo">

                            </div>
                            </form>
       
</div>
<?php
if (isset($percant)) {
    
 
  
   echo $percant."%"." " ;

   if ($percant >= 90) {
    echo "A";
   }elseif ($percant >= 80){
    echo "B";
   }elseif ($percant >= 70){
    echo "C";
   }elseif ($percant >= 60){
    echo "D";
   }elseif ($percant >= 40){
    echo "E";
   }elseif ($percant < 40){
    echo "a";
   }

}
?>
</div>
</body>
</html>