import 'package:sqflite_common/sqlite_api.dart';
import 'package:todo_provider_list/app/core/database/migrations/migration.dart';

class Migrationv2 implements Migration {
  @override
  void create(Batch batch) {
    batch.execute('create table teste(id integer)');
  }

  @override
  void update(Batch batch) {
    batch.execute('create table teste(id integer)');
  }
}
