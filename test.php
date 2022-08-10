
<?php
$num=7;
$num2=5;
//echo $num==$num2 ? "<h1 style=color:green>equel</h1>":"<h1>not</h1>";
///isset///check if value defined or not
//$POST
//$GET
//$REQUSET
//SERVER///check requset type 
//define is fixed name  value define("test",14);
///array
///1 indexd array 

$users=["one","tow","three"];

$lastindex=count($users) -1;////get last index off array
///print_r($users);

///2 ascoited array///has key and value
$prod=[
   "number"=>25,
   "price"=>255,
   "test"=>2558999
];
//echo $prod["number"];

//////object
$prod1=(object)[
    "number"=>25,
    "price"=>255
    
 ];
 //echo $prod1->price;///get values from object

///multi dimantion array
$prod3=[
    [
    "number"=>25,
    "price"=>255,
    "test"=>["",""]
    ],

    [
        "number"=>25,
        "price"=>255,
        "test"=>["","55"]
        ]
 ];

 //echo $prod3[1]["test"][1];//get values from multi dimantion array
 ///loops

 for($i=0 ; $i <5 ;$i++){
    echo "test <br>";
 }
foreach ($prod as $key => $value) {///show acchoted array and index array
    echo $key."<br>".$value."<br>";
}
///
