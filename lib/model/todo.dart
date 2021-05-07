import 'package:task_management_mobile/data/task_check_lisk.dart';
import 'package:task_management_mobile/model/tag.dart';

class ToDo {
  String name;
  Tag descriptions;

  ToDo(
    this.name,
    this.descriptions,
  );

  ToDo.input(String nameInput, String descriptionsInput) {
    name = nameInput;
    descriptions = descriotionTag(descriptionsInput);
  }

  Map<String, dynamic> toMap() {
    var map = {
      'name': name,
      'descriptions': descriptions.tagName,
    };
    return map;
  }

  ToDo.fromMap(Map<String, dynamic> map) {
    name = map['name'];
    descriptions = descriotionTag(map['descriptions']);
  }

  Tag descriotionTag(String input) {
    switch (input) {
      case 'Branding':
        return branding;
        break;
      case 'UI/UX':
        return uiux;
        break;
      case 'Digital':
        return digital;
        break;
      case 'Strategist':
        return strategist;
        break;
      default:
        return branding;
    }
  }
}
