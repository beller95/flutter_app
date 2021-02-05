import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

// Adatbázis kapcsolatok kezelése
class Sql {
  Database _database;

  // Ez a getter létrehozza a kapcsolatot az adatázissal és eltárolja azt
  // későbbi felhasználás céljából.
  Future<Database> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await openDatabase(
      // Az adatbázis fájl alapú. Ennek a fájlnak a helyét állítjuk elő
      join(
        await getDatabasesPath(),
        'flutter_app.db',
      ),
      version: 1,
      onCreate: (db, version) async {
        // Fontos, hogy ha többb táblára van szükség, akkor azokat külön
        // execute hívásban hozzuk létre.
        await db.execute('''
        CREATE TABLE profile(
          id INTEGER PRIMARY KEY,
          name TEXT,
          email TEXT,
          phone TEXT
        );
        ''');
        await db.execute('''
        CREATE TABLE cart(
          id INTEGER PRIMARY KEY
        );
        ''');
        await db.execute('''
        CREATE TABLE products(
          id INTEGER PRIMARY KEY
          image TEXT,
          title TEXT,
          price INTEGER,
          description TEXT,
          size INTEGER,
          color TEXT
        );
        ''');
      },
    );
    return _database;
  }
}