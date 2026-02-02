// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart' as sql;

// class Favsql {
//   static sql.Database? _db;

//   static Future<sql.Database> get database async {
//     if (_db != null) return _db!;
//     _db = await _initDB();
//     return _db!;
//   }

//   static Future<sql.Database> _initDB() async {
//     final dbPath = await sql.getDatabasesPath();
//     final path = join(dbPath, 'favorites.db');
//     return await sql.openDatabase(path, version: 1, onCreate: createTables);
//   }

//   static Future<void> createTables(sql.Database database, int version) async {
//     await database.execute('''CREATE TABLE favorites(
//         id INTEGER PRIMARY KEY NOT NULL,
//         name TEXT,
//         image TEXT,
//         price REAL,
//         description TEXT,
//       )
//       ''');
//   }

//   // static Future<sql.Database> db() async {
//   //   return sql.openDatabase(
//   //     'favoritesss',
//   //     version: 1,
//   //     onCreate: (database, version) async {
//   //       await createTables(database)
//   //     },
//   //   );
//   // }

//   static Future<void> insertFavorite(Map<String, dynamic> data) async {
//     final db = await database;
//     await db.insert(
//       'favorites',
//       data,
//       conflictAlgorithm: sql.ConflictAlgorithm.replace,
//     );
//   }

//   static Future<void> deleteFavorite(int id) async {
//     final db = await database;
//     await db.delete('favorites', where: 'id = ?', whereArgs: [id]);
//   }

//   static Future<List<Map<String, dynamic>>> getFavorites() async {
//     final db = await database;
//     return db.query('favorites');
//   }
// }
import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart';

class Favsql {
  static sql.Database? _db;

  // 🔴 SINGLE DB INSTANCE
  static Future<sql.Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  static Future<sql.Database> _initDB() async {
    final dbPath = await sql.getDatabasesPath();
    final path = join(dbPath, 'favorites.db'); // 🔴 FIXED

    return await sql.openDatabase(path, version: 1, onCreate: _createTables);
  }

  static Future<void> _createTables(sql.Database database, int version) async {
    await database.execute('''
      CREATE TABLE favorites(
        id INTEGER PRIMARY KEY NOT NULL,
        name TEXT,
        price REAL,
        image TEXT,
        description TEXT
      )
    ''');
  }

  static Future<void> insertFavorite(Map<String, dynamic> data) async {
    final db = await database;
    await db.insert(
      'favorites',
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
  }

  static Future<void> deleteFavorite(int id) async {
    final db = await database;
    await db.delete('favorites', where: 'id = ?', whereArgs: [id]);
  }

  static Future<List<Map<String, dynamic>>> getFavorites() async {
    final db = await database;
    return await db.query('favorites');
  }
}
