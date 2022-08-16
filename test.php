
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

///oop-encpaslation


///password_hash('rasmuslerdorf', PASSWORD_ARGON2I); to encript password

class info {
    public $name;
    private $password;
   public function getpasswordr(){


   }
   public function setpassword($password){

     $this->password=$password;
}

}

///oop-apstraction show neccasry info and hide unecery info 

abstract class  infor{///cant create object from it 

    public $name;
    private $password;
    public abstract function login();////used in abstract class if class extands from abstract class method shoul give it body
    

}

///interface
interface crad{///cant create object from containe abstract  method only 
    
     function log();
 
}

class nine implements crad {///inhernt from interface using implements and class can implements many interface
  public function log(){
      
    }
}



////polymartpisem allow obejcts fro defrant class     in same massge 

///trait  used becuse php single inheritance

trait test{

}
///namespace is virtual dir orgnize app file alllow you to use same class many time

////data-base

///entity
///attrbute
///Composite add atttr inside atrrr has companet 
////Multivalued in case is there many value 
///Derived calcleted atrr  

///relationship

///Associative entity 
///recrsive relation connect one entity to him self 

///rs relation scheme
////entity convert to table
///any attr convert to column
////1-if attr uniqie searach in entity how many uniqe attr take one of them prrimry key and leave other as uniqe

///2- attr Composite convert componts to column and ignore attr
///3- Derived attr cant convert to rs
///4- attr optinal convert to column optinal
///5- attr multivalue convert to new table include column forigin key names rename come form what table and renam it ex phons --> phone  

///relation one to many convert one to many primry ke in one go to forign key on many 
///one to one mandotry convert to optinal primary key on mandotry convert to forigin in optinal
///many to many convert to new table table name same realtion name has tow forign keys compist primary
///forigin key names rename come form what table and renam it ex phons --> phone
///attr multivalue 
///weak entity convert to table but has composit primry key id of weak entity pluss forigin key




















