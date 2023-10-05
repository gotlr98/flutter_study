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

List<int> reverseListOfNumbers(List<int> list){

  var reversed = list.reversed;

  return reversed.toList();
}

// typedef listint = List<int>;

// enum Team{red, blue}

// class Player{
//   String name;
//   int xp;
//   Team team;
//   int age;

//   Player({required this.name,
//           required this.xp,
//           required this.team, 
//           required this.age});

//   Player.createBluePlayer({
//     required String name, 
//     required int age})
//   : this.age = age,
//     this.name = name,
//     this.team = Team.blue,
//     this.xp = 0;

//   Player.createRedPlayer({
//     required String name, 
//     required int age})
//   : this.age = age,
//     this.name = name,
//     this.team = Team.red,
//     this.xp = 0;

//   Player.fromJson(Map<String, dynamic> playerJson) :
//     name = playerJson['name'],
//     xp = playerJson['xp'],
//     team = playerJson['team'],
//     age = playerJson['age'];

//   void sayHello(){
//     print("hello my name is $name");
//   }
// }



// void main(){
  

  // String? name;
  // name ??= 'sik';


  // var sik = Player.createBluePlayer(
  //   name: "sik",
  //   age: 21,
  // );

  // var hae = Player.createRedPlayer(
  //   name: "hae",
  //   age: 21,
  // );

  // sik.sayHello();

  // var apiEX = [
  //   {
  //     "name":"sik",
  //     "team":"red",
  //     "xp":0,
  //     "age":0,
  //   },
  //   {
  //     "name":"hae",
  //     "team":"red",
  //     "xp":0,
  //     "age":0,
  //   },
  //   {
  //     "name":"jang",
  //     "team":"red",
  //     "xp":0,
  //     "age":0,
  //   }
  // ];

  // apiEX.forEach((playerJson){
  //   var player = Player.fromJson(playerJson);
  //   player.sayHello();
  // });

  // var haea = Player(name: 'sik', xp: 1, team: 'e', age: 1)

  // ..name = 'sss'
  // ..xp = 1
  // ..age = 3;

// }

// abstract class Human{

//   void walk();

// }

// class exHuman extends Human{

//   late String name;

//   exHuman(this.name);

//   void walk(){
//     print("walk");
//   }
  
// }

class Human{
  final String name;
  Human(this.name);
  void sayHello(){
    print("Hi my name is $name");
  }
}
enum Team{
  blue, red
}

class Player extends Human{
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name);

  @override 
  void sayHello() {
    super.sayHello();
    print('and I play for $team');
  }
}
void main(){
  // var me = exHuman("sik");
  var me = Player(team: Team.blue, name: 'sik');
  me.sayHello();

}