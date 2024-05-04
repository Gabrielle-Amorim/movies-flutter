// Mocks generated by Mockito 5.4.4 from annotations
// in movies_flutter/test/mocks/mock_class.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:mockito/mockito.dart' as _i1;
import 'package:movies_flutter/data/rest-client/interface/rest_client.dart'
    as _i7;
import 'package:movies_flutter/data/rest-client/model/model.dart' as _i3;
import 'package:movies_flutter/data/service/interface/movie_service.dart'
    as _i4;
import 'package:movies_flutter/domain/model/model.dart' as _i2;

import 'mock_class.dart' as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeMovieDetailsModel_0 extends _i1.SmartFake
    implements _i2.MovieDetailsModel {
  _FakeMovieDetailsModel_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRestClientResponse_1<T1> extends _i1.SmartFake
    implements _i3.RestClientResponse<T1> {
  _FakeRestClientResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [MovieService].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieService extends _i1.Mock implements _i4.MovieService {
  @override
  _i5.Future<List<_i2.GenreModel>> getGenre() => (super.noSuchMethod(
        Invocation.method(
          #getGenre,
          [],
        ),
        returnValue: _i5.Future<List<_i2.GenreModel>>.value(<_i2.GenreModel>[]),
        returnValueForMissingStub:
            _i5.Future<List<_i2.GenreModel>>.value(<_i2.GenreModel>[]),
      ) as _i5.Future<List<_i2.GenreModel>>);

  @override
  _i5.Future<List<_i2.MovieModel>> popularMovies() => (super.noSuchMethod(
        Invocation.method(
          #popularMovies,
          [],
        ),
        returnValue: _i5.Future<List<_i2.MovieModel>>.value(<_i2.MovieModel>[]),
        returnValueForMissingStub:
            _i5.Future<List<_i2.MovieModel>>.value(<_i2.MovieModel>[]),
      ) as _i5.Future<List<_i2.MovieModel>>);

  @override
  _i5.Future<_i2.MovieDetailsModel> getDetails({required String? id}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getDetails,
          [],
          {#id: id},
        ),
        returnValue:
            _i5.Future<_i2.MovieDetailsModel>.value(_FakeMovieDetailsModel_0(
          this,
          Invocation.method(
            #getDetails,
            [],
            {#id: id},
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.MovieDetailsModel>.value(_FakeMovieDetailsModel_0(
          this,
          Invocation.method(
            #getDetails,
            [],
            {#id: id},
          ),
        )),
      ) as _i5.Future<_i2.MovieDetailsModel>);
}

/// A class which mocks [SomeClassWithFunction].
///
/// See the documentation for Mockito's code generation for more information.
class MockSomeClassWithFunction extends _i1.Mock
    implements _i6.SomeClassWithFunction {
  @override
  void call() => super.noSuchMethod(
        Invocation.method(
          #call,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [RestClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockRestClient extends _i1.Mock implements _i7.RestClient {
  @override
  _i5.Future<_i3.RestClientResponse<T>> get<T>({
    required String? route,
    Map<String, dynamic>? queryParameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [],
          {
            #route: route,
            #queryParameters: queryParameters,
          },
        ),
        returnValue: _i5.Future<_i3.RestClientResponse<T>>.value(
            _FakeRestClientResponse_1<T>(
          this,
          Invocation.method(
            #get,
            [],
            {
              #route: route,
              #queryParameters: queryParameters,
            },
          ),
        )),
        returnValueForMissingStub: _i5.Future<_i3.RestClientResponse<T>>.value(
            _FakeRestClientResponse_1<T>(
          this,
          Invocation.method(
            #get,
            [],
            {
              #route: route,
              #queryParameters: queryParameters,
            },
          ),
        )),
      ) as _i5.Future<_i3.RestClientResponse<T>>);
}
