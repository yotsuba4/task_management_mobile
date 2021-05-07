class ToDo {
  String name;
  String descriptions;

  ToDo(
    this.name,
    this.descriptions,
  );

  Map<String, dynamic> toMap() {
    var map = {
      'name': name,
      'descriptions': descriptions,
    };
    return map;
  }

  ToDo.fromMap(Map<String, dynamic> map) {
    name = map['name'];
    descriptions = map['descriptions'];
  }
}
