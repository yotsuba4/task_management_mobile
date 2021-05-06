import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:task_management_mobile/model/todo.dart';

class DBProvider {
  DBProvider._();
  static final DBProvider dataBase = DBProvider._();
  static Database _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await initDataBase();
    return _database;
  }

  initDataBase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'todo_app_db.db'),
      onCreate: (db, version) async {
        await db.execute('''
      CREATE TABLE todos (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, descriptions TEXT, photo TEXT)
       ''');
      },
      version: 1,
    );
  }

  Future<int> addNewToDo(ToDo toDo) async {
    final db = await database;
    return await db.insert('todos', toDo.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<ToDo>> getAllTodos() async {
    final db = await database;
    var res = await db.query('todos');
    return res.map((e) => ToDo.fromMap(e)).toList();
  }

  Future<int> update(ToDo todo) async {
    final db = await database;
    return await db
        .update('todos', todo.toMap(), where: 'id = ?', whereArgs: [todo.id]);
  }
}
