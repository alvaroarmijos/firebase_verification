// coverage:ignore-file
import 'package:get_it/get_it.dart' show GetIt;
import 'package:verification_repository/verification_repository.dart';

/// Global [GetIt] instance
final getIt = GetIt.instance;

/// The global dependencies registration method
void registerGlobalDeps() {
  getIt.registerLazySingleton<VerificationRepository>(
    VerificationRepository.new,
  );
}
