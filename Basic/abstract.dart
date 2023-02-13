abstract class Human {
  void walk();
}

enum Team { Red, Blue }

class Player extends Human {
  String name;
  int xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayhello() {
    print("Hi my name is $name");
  }

  void walk() {
    print("im walking");
  }
}

void main() {
  //cascade operation
  var nico = Player(name: 'nico', xp: 1200, team: Team.Blue)
    ..name = 'mingyu'
    ..xp = 0
    ..team = Team.Red
    ..sayhello();
}
