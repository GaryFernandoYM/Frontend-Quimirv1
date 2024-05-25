import 'package:frontend_quimir/local/db/database.dart';
mixin ConexionDBL{
  Future<AppDatabase> conetion() async{
    return await $FloorAppDatabase.databaseBuilder('app_eventos.db').build();
  }
}