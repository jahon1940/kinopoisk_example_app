import 'package:dio/dio.dart';
import 'package:empty_feature_folder/core/constants/constants.dart';
import 'package:empty_feature_folder/features/home/data/models/get_search_results_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/error/server_error.dart';
import '../../data/models/get_movie_response.dart';
import '../../data/models/get_movies_response.dart';

class HomeRepository {
  final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();
  final dio = Dio()
    ..options = BaseOptions(
      headers:  {
        'X-API-KEY': 'Q694VGC-Q4F4SRS-HHJ6VS2-AT2NXWQ'
      },
      contentType: 'application/json',
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      connectTimeout: const Duration(seconds: 30),
    )
    ..interceptors.addAll(
      [
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      ],
    );

  Future<GetMoviesResponse> getMovies() async {
    try {
      final response = await dio.get<dynamic>(
        'https://api.kinopoisk.dev/v1.3/movie?page=1&limit=10',
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return GetMoviesResponse.fromJson(response.data);
      }
      throw ServerException.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException.fromJson(e.response?.data);
    } on FormatException {
      throw ServerException(message: 'Something went wrong!');
    }
  }

  Future<GetMovieResponse> getMovie(String id) async {
    try {
      final response = await dio.get<dynamic>(
        '${BaseUrl.baseUrl}/v1.3/movie/$id',
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return GetMovieResponse.fromJson(response.data);
      }
      throw ServerException.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException.fromJson(e.response?.data);
    } on FormatException {
      throw ServerException(message: 'Something went wrong!');
    }
  }

  Future<GetSearchResponse> getSearchResults(String value) async {
    try {
      final response = await dio.get<dynamic>(
        'https://api.kinopoisk.dev/v1.2/movie/search?query=$value',
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return GetSearchResponse.fromJson(response.data);
      }
      throw ServerException.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException.fromJson(e.response?.data);
    } on FormatException {
      throw ServerException(message: 'Something went wrong!');
    }
  }
}
