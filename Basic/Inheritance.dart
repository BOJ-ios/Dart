enum Team { blue, red }

class Human {
  final String name;
  Human({required this.name});
  void say_Hello() {
    print("Hi my name is $name");
  }
}

class Player extends Human {
  final Team team;
  Player({
    required this.team,
    required String name,
  }) : super(name: name);

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
}
