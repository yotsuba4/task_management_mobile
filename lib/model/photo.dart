class Photo {
  String id;
  String url;
  String todoID;

  Photo(this.id, this.url, this.todoID);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{'id': id, 'url': url, 'todoID': todoID};
    return map;
  }

  Photo.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    url = map['url'];
    todoID = map['todoID'];
  }
}
