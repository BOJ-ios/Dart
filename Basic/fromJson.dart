class Player {
  final String name;
  int xp;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson["name"],
        team = playerJson["team"],
        xp = playerJson["xp"];

  void sayhello() {
    print("Hi my name is $name");
  }
}

void main() {
  var apiData = [
    {
      "name": "민규",
      "team": "Blue",
      "xp": 0,
    },
    {
      "name": "세원",
      "team": "Red",
      "xp": 0,
    },
    {
      "name": "태현",
      "team": "Blue",
      "xp": 0,
    },
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayhello();
  });
}
