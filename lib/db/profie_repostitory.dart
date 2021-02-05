
import 'package:sqflite/sqflite.dart';
import 'package:the_flutter_app/db/sql.dart';
import 'package:the_flutter_app/models/Profile.dart';

class ProfileRepository {
  final Sql sql;

  ProfileRepository({this.sql});

  Future<Profile> load() async {
    Profile profile = Profile();

    // Referencia az adatbázisunkra
    final Database database = await sql.database;

    // Egy elem betöltése a profile táblából
    List<Map<String, dynamic>> result =
    await database.query('profile', limit: 1);

    if (result.length > 0) {
      // Volt találat, betöltjük az adatokat
      var data = result.first;
      profile.id = data['id'];
      profile.name = data['name'];
      profile.phone = data['phone'];
      profile.email = data['email'];

    }
    return profile;
  }


  Future<void> save(Profile profile) async {
    final Database database = await sql.database;
    // Profil mentése az adazbázisba. Ha már létezett, akkor felülírjuk
    profile.id = await database.insert('profile', profile.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);

  }

}