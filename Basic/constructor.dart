//class에서는 변수타입을 지정해야함
class Player {
  late final String name;
  late String team;
  late int xp, age;

  //Player(this.name, this.xp, this.team, this.age);
  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  //   this.team = team;
  //   this.age = age;
  // }

  //named constructor parameters
  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = "Blue",
        this.xp = 0;

  Player.createRedPlayer(
    String name,
    int age,
  )   : this.age = age,
        this.name = name,
        this.team = "Red",
        this.xp = 0;

  void sayhello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player1 = Player(
    name: "민규",
    xp: 0,
    team: "Red",
    age: 24,
  );
  var player2 = Player.createBluePlayer(
    name: "민규블루",
    age: 24,
  );
  var player3 = Player.createRedPlayer("민규레드", 24);
}
