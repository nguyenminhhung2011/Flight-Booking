import 'package:flight_booking/core/dependency_injection/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
// import 'di.config.dart';

GetIt injector = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
  externalPackageModulesBefore: [
    // ExternalModule(DesktopServicesPackageModule),
  ],
)
GetIt configureDependencies({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) =>
    init(
      injector,
      environment: environment,
      environmentFilter: environmentFilter,
    );
