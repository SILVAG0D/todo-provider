import 'package:todo_provider_list/app/core/database/migrations/migration.dart';
import 'package:todo_provider_list/app/core/database/migrations/migration_v1.dart';
import 'package:todo_provider_list/app/core/database/migrations/migration_v2.dart';
import 'package:todo_provider_list/app/core/database/migrations/migration_v3.dart';

class  SqliteMigrationFactory{
  
  List<Migration> getCreateMigration() => [
    MigrationV1(),
    Migrationv2(),
    Migrationv3(),
  ];

  List<Migration> getUpgradeMigration(int version)  {
    final migrations = <Migration>[];

    if(version == 1 ){
      migrations.add(Migrationv2());
      migrations.add(Migrationv3());
    }

    if(version == 2 ) {
      migrations.add(Migrationv3());
    }

    return migrations;
  }

}