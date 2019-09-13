import 'package:flutter_accounting/Models/CardModel.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

// Moor works by source gen. This file will all the generated code.
part "moor_database.g.dart";

class BankCards extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 50)();
  TextColumn get number => text().withLength(min: 1, max: 50)();
  TextColumn get bank => text().withLength(min: 1, max: 50)();
  IntColumn get available => integer()();
  TextColumn get currency => text().withLength(min: 1, max: 50)();
}

@UseMoor(tables: [BankCards])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      // Specify the location of the database file
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          // Good for debugging - prints SQL in the console
          logStatements: true,
        )));

  // Bump this when changing tables and columns.
  // Migrations will be covered in the next part.
  @override
  int get schemaVersion => 1;

  Stream<List<BankCard>> getAllCards() => select(bankCards).watch();
  Future<List<BankCard>> getLength() => select(bankCards).get();
  Future insertCard(BankCard bankCard) => into(bankCards).insert(bankCard);
}
