import 'package:mysql1/mysql1.dart';

class Mysql {
  static String host = 'localhost',
      user = 'root',
      password = 'mydarling@123',
      db = 'Profile_database.db';
  static int port = 3306;
  Mysql();

  Future<MySqlConnection> getConnection() async {
    // ignore: unnecessary_new
    var settings = new ConnectionSettings(
      host: host,
      port: port,
      user: user,
      password: password,
      db: db,
    );
    return await MySqlConnection.connect(settings);
  }
}
