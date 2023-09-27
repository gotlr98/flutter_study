// void main(){
//   dynamic name;
  
//   if(name is String){
    
//   }
//   else if (name is int){
//     name.isEven;
//   }

//   String? sik = 'haesik';
//   // sik = null;



//   final y = 'w';
//   final String x = 'aw';

//   late final haesik;
//   // late -> without Initialize

//   const API = '1212123';
//   // compile know value

//   num a = 12;
//   a = 1.1;

//   var giveMeFive = true;
//   var numbers = [1,2,3,4,
//   if (giveMeFive) 5];
//   // collection for

//   print(numbers);

//   var age = 10;
//   var greeting = 'Hello everyone I\'m $sik and ${age+2} years old';
//   print(greeting);

//   var oldFriends = ['sik', 'eee'];
//   var newFriends = [
//     'lewis',
//     'ralph',
//     'darren',
//     for(var friend in oldFriends) "with $friend",
//   ];
//   print(newFriends);

//   var player = {
//     'name': 'sik',
//     'xp': 19.99,
//     'superpower': false,
//   };

//   Map<int, bool> pla = {
//     1: true,
//     2: false,
//   };

//   // Set
//   var numbers2 = {1,2,3,4};

//   sayHello("sik");
// }

// void sayHello(String name){
//   print('Hello $name nice to meet you!');
// }

// String say(String potato) => "Hello $potato nice to meet you";

// named parameters
String namedHello({
      required String name,
      required int age,
      required String country}){

  return "Hello $name, you are $age, you from ";
}

String sayHello({
      String name = "anon",
      int age = 0,
      String country = "korea"}){

  return "Hello $name, you are $age, you from ";
}

String optionalNamedHello({
      String? name,
      int? age,
      String? country}){

  return "Hello $name, you are $age, you from ";
}

String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';

void main(){

  print(namedHello(name: "sik", age: 21, country: "korea"));
  print(sayHello());

  String? name;
  name ??= 'sik';


}