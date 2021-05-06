class ToDo {
  int id;
  String name;
  String descriptions;
  String photo;

  ToDo(this.id, this.name, this.descriptions, this.photo);

  Map<String, dynamic> toMap() {
    var map = {
      'id': id,
      'name': name,
      'descriptions': descriptions,
      'photo': photo
    };
    return map;
  }

  ToDo.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    descriptions = map['descriptions'];
    photo = map['photo'];
  }
}
