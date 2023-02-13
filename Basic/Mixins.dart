enum Team { blue, red }

//생성자 없는 class
class Strong {
  final double strengthLevel = 12312.12321;
}

class QuickRunner {
  void runQuick() {
    print("RRRRRRRRRRRRRRun");
  }
}

class Tall {
  final double height = 190.2;
}

class Human {
  final String name;
  Human(this.name);
  void say_Hello() {
    print("Hi my name is $name");
  }
}

class Player extends Human with Strong, QuickRunner, Tall {
  final Team team;
  Player({
    required this.team,
    required String name,
  }) : super(name);

  @override
  void say_Hello() {
    super.say_Hello();
    print("You are $team Player");
  }
}

void main() {
  var player = Player(
    team: Team.red,
    name: "민규",
  );
  player.say_Hello();
  player.runQuick();
}
