import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:task_management_mobile/model/photo.dart';
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
      CREATE TABLE todos (name TEXT PRIMARY KEY, descriptions TEXT)
       ''');
      },
      version: 1,
    );
  }

  createPhotoTable() async {
    final db = await database;
    await db.execute('''
      CREATE TABLE photos (id TEXT, url TEXT, todoID TEXT)
    ''');
  }

  Future<int> addNewPhoto(Photo photo) async {
    final db = await database;
    return await db.insert('photos', photo.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Photo>> getPhotoByTodoID(String todoID) async {
    final db = await database;
    List<Map> maps = await db.query('photos',
        columns: ['id', 'url', 'todoID'],
        where: 'todoID = ?',
        whereArgs: [todoID]);
    if (maps.length > 0) {
      return maps.map((e) => Photo.fromMap(e)).toList();
    }
    return null;
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
    return await db.update('todos', todo.toMap(),
        where: 'name = ?', whereArgs: [todo.name]);
  }

  Future<ToDo> getTodo(String name) async {
    final db = await database;
    List<Map> maps = await db.query('todos',
        columns: ['name', 'descriptions'],
        where: 'name = ?',
        whereArgs: [name]);
    if (maps.length > 0) {
      return ToDo.fromMap(maps.first);
    }
    return null;
  }
}
