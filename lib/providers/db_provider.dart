

import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBProvider{
  static Database _database;
  static final DBProvider db = DBProvider._();
  DBProvider._();

  Future<Database> get database async{
    if(_database!=null)return _database;
    _database = await initDb();

    return _database;
  }

  Future<Database> initDb() async{

    //ruta de donde almacenamos la bd
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path,'ScansDB.db');
    print(path);

    return await openDatabase(
        path,
      version: 1,
      onOpen: (db){},
      onCreate: (Database db, int version)async{
          await db.execute('''
          CREATE TABLE SCANS(
            id INTEGER PRIMARY KEY,
            tipo TEXT,
            valor TEXT
          );
          ''');
      }
    );

  }


}

