// Annotation which generates the cat.mocks.dart library and the MockCat class.
import 'package:mockito/annotations.dart';
import 'package:movies_flutter/data/rest-client/interface/rest_client.dart';
import 'package:movies_flutter/data/service/interface/movie_service.dart';

@GenerateNiceMocks([
  MockSpec<MovieService>(),
  MockSpec<SomeClassWithFunction>(),
  MockSpec<RestClient>()
])
class SomeClassWithFunction {
  void call() {}
}
