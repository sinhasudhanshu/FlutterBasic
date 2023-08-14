
import 'package:firstproject/models/post_model.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/posts')
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;
  @GET('posts')
  Future<List<PostModel>> getPosts();

}