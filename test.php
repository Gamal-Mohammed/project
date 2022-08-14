
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
  ///  echo "test <br>";
 }
foreach ($prod as $key => $value) {///show acchoted array and index array
   /// echo $key."<br>".$value."<br>";
}
///


////include ///usess to include same code in all pages 

///include_once //////usess to include same code in all pages one time 
///requird///usess to include same code in all pages  defrance btewwen include in error defantion
///session_start();////put file seacin on server 
///$_SESSION['counter'] = 1;
///headr///// transfer to other page . 

///oop///

//1- class include proprty and methode
///compine simler tasks
//object acces class data in global scope/
class dat {
    public $name;///define varable in class
    public static $name2;///to convert it from object to give it to class
    public const number=55;

    public function login(){////define methode
      
       return $this;///return object use it when make chain function
        //dat::number;////get conset value inside class
     ///   self ////refer to current class

    }
}
//$use = new dat;///define class in global scope as object
//$user->login;////call methode inside calss 
////$user->name="55";
//dat::number;////get conset value from class
///this refer to current object
//$use->name="new";
//print_r ($use);
///return ///return object 
///inhertince 
class nt extends dat{////inhertince 

    ///final ////make function final and no override if it put in classs no inhertince happend



}
///acseess modifrs --> puplic protected privte


///__CLASS__	 used inside classs


///ClassName::class	 used inside and outside class 




