<?php
session_start();
if($_GET){
    $res=0;
    $res1=0;
    $res2=0;
    $res3=0;
    $res4=0;
    if($_GET["one"]==1){
        $res=0;
    }elseif($_GET["one"]==2){
     $res=3;
    }elseif($_GET["one"]==3){
       $res=5;
    }elseif($_GET["one"]==4){
    $res=10;
    }
    if($_GET["tow"]==5){
        $res1=0;
    }elseif($_GET["tow"]==6){
     $res1=3;
    }elseif($_GET["tow"]==7){
       $res1=5;
    }elseif($_GET["tow"]==8){
    $res1=10;
    }
    if($_GET["three"]==9){
        $res2=0;
    }elseif($_GET["three"]==10){
     $res2=3;
    }elseif($_GET["three"]==11){
       $res2=5;
    }elseif($_GET["three"]==12){
    $res2=10;
    }
    if($_GET["four"]==13){
        $res3=0;
    }elseif($_GET["four"]==14){
     $res3=3;
    }elseif($_GET["four"]==15){
       $res3=5;
    }elseif($_GET["four"]==16){
    $res3=10;
    }
    if($_GET["five"]==17){
        $res4=0;
    }elseif($_GET["five"]==18){
     $res4=3;
    }elseif($_GET["five"]==19){
       $res4=5;
    }elseif($_GET["five"]==20){
    $res4=10;
    }
    $sum=$res+$res1+$res2+$res3+$res4;
   /// echo $sum;
    $_SESSION['resu']= $sum;
    header("location:Result.php");die;  
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <br>
    <form action="">
<label for="">Are you satisfied with the level of cleanliness?</label>
<label for="">bad</label>
<input type="radio" name="one" id="" value=1 >
<label for="">good</label>
<input type="radio" name="one" id="" value=2 >
<label for="">veary good</label>
<input type="radio" name="one" id="" value=3 >
<label for="">exclnt</label>
<input type="radio" name="one" id="" value=4 >
<br>
<label for="">Are you satisfied with the prices of the services?</label>
<label for="">bad</label>
<input type="radio" name="tow" id="" value=5 >
<label for="">good</label>
<input type="radio" name="tow" id="" value=6  >
<label for="">veary good</label>
<input type="radio" name="tow" id="" value=7 >
<label for="">exclnt</label>
<input type="radio" name="tow" id="" value=8 >
<br>
<label for="">Are you satisfied with the nursing service</label>
<label for="">bad</label>
<input type="radio" name="three" id="" value=9 >
<label for="">good</label>
<input type="radio" name="three" id="" value=10 >
<label for="">veary good</label>
<input type="radio" name="three" id="" value=11 >
<label for="">exclnt</label>
<input type="radio" name="three" id="" value=12 >
<br>
<label for="">Are you satisfied with the level of the doctor?</label>
<label for="">bad</label>
<input type="radio" name="four" id="" value=13 >
<label for="">good</label>
<input type="radio" name="four" id="" value=14 >
<label for="">veary good</label>
<input type="radio" name="four" id="" value=15 >
<label for="">exclnt</label>
<input type="radio" name="four" id="" value=16 >
<br>
<label for="">Are you satisfied with the calmness in the hospital?</label>
<label for="">bad</label>
<input type="radio" name="five" id="" value=17 >
<label for="">good</label>
<input type="radio" name="five" id="" value=18 >
<label for="">veary good</label>
<input type="radio" name="five" id="" value=19 >
<label for="">exclnt</label>
<input type="radio" name="five" id="" value=20 >
<input type="submit" value="next">
</form>
<?php

?>
</body>
</html>