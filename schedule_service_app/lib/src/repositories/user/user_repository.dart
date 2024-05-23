import 'package:schedule_service_core/schedule_service_core.dart';

abstract interface class UserRepository {
  Future<Either<AuthException, String>> login(String email, String password);
}
