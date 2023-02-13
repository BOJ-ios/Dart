void main() {
  String name = "니꼬";
  bool b = false;
  int i = 0;
  double d = 0.0;
  num n = 1;

  var v1 = 1;
  v1 = 100;
  print(v1);

  //조심스럽게 쓸거
  //타입을 뭔지 모를 때
  late dynamic v2;
  v2 = '다이나믹';
  v2 = true;
  v2 = 1;
  if (v2 is String) {
    print(v2.length);
  } else if (v2 is int) {
    print(v2.isEven);
  }

  //? null도 가능하게 해중
  String? v3 = "null?";
  v3 = null;
  if (v3 != null) {
    v3.isNotEmpty;
  } else {
    print(v3);
  }

  //final은 한번만 수정 가능
  final f1 = "final variable";
  print(f1);

  //나중에 변수 값 설정 가능
  late final f2;
  f2 = "late final variable";
  print(f2);

  //compile time constant
  //이미 알고 있는 값
  //max_allowed_something
  const c1 = "const";
  print(c1);

  //List<int> list
  var list1 = [
    1,
    2,
    3,
    4,
  ];
  var nine = true;
  List<int> list2 = [
    4,
    8,
    2,
    if (nine) 9,
  ];
  list1.add(11);
  list2.sort();
  list1.first;
  list2.last;
  list1.length;

//리스트 합치기
  var brands1 = [
    'samsung',
    'lg',
  ];

  var brand2 = [
    'sony',
    'hp',
    for (var brand in brands1) "added $brand",
  ];
  print(brand2);

  //변수 이용
  var myname = "민규";
  var myage = 20;
  var hello = "안녕 $myname, and I'm ${myage + 4} years old";
  print(hello);

  //maps
  var player = {
    "name": "nico",
    "age": 28,
    "power": 23,
  };
  Map<String, int> m1 = {
    "v1": 1,
    "v2": 2,
  };
  Map<List<int>, bool> m2 = {
    [1, 2, 3, 4]: true,
  };

  //set
  var nums1 = {1, 2, 3, 4, 45};
  Set<int> num2 = {2, 45, 2352, 35, 246};
  nums1.add(234);

  //functions
  print(plus(1, 3));

  print(positional("민규", 24, "한국"));
  print(named1(
    name: "민규",
  ));
  print(named2(
    age: 24,
    name: "민규",
    country: "Korea",
  ));

  print(opa("민규", 23));

  //operator
  String? ntest;
  print(capitalize(ntest));
  ntest ??= "이제 null 아님";
  print(capitalize(ntest));
}

//fat arrow 한줄일때 바로 리턴
num plus(int a, int b) => a + b;

String positional(String name, int age, String country) =>
    "hello $name, you are $age, and you are from $country";

//defualt values
String named1({
  String name = 'anon',
  int age = 0,
  String country = "Earth",
}) =>
    "hello $name, you are $age, and you are from $country";

//required는 해당 parameter를 무조건 필요함
String named2({
  required String name,
  required int age,
  required String country,
}) =>
    "hello $name, you are $age, and you are from $country";

//optional positional arguments
//null일시 default return
String opa(String name, int age, [String? country = 'default']) =>
    "hello $name, you are $age, and you are from $country";

//name!= null ? name.toUpperCase() : "anonymous";
//?? if not null left,
//?? if null right
String capitalize(String? name) => name?.toUpperCase() ?? "anonymous";

typedef ListOfInts = List<int>;

ListOfInts reverse(ListOfInts list) {
  //toreverse 는 iterable이다.
  var revered = list.reversed;
  return revered.toList();
}
