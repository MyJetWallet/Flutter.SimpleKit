import 'package:get_it/get_it.dart';
import 'package:simple_kit/core/simple_kit.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<SimpleKit>(SimpleKit());
}
