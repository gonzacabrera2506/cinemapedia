import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/domain/datasources/actors_datasource.dart';
import 'package:dio/dio.dart';

class ActorMovieDbDatasource extends ActorsDatasource {
  final dio = Dio(BaseOptions(
    baseUrl: '',
    queryParameters: {
      'api_key': Environment.theMovieDbKey,
      'language': 'es-MX',
    },
  ));

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) async {
    return [];
  }
}
