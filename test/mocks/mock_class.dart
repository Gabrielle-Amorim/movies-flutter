// Annotation which generates the cat.mocks.dart library and the MockCat class.
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([MockSpec<SomeClassWithFunction>()])
class SomeClassWithFunction {
  void call() {}
}
