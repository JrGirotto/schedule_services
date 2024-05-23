import 'package:schedule_service_core/schedule_service_core.dart';

abstract interface class UserLoginService {
  Future<Either<ServiceException, Unit>> execute(String email, String password);
}
