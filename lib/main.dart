import 'package:dio/dio.dart';
import 'package:firstproject/models/post_model.dart';
import 'package:firstproject/service/api_service.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: const Color(0xff1D1E22),
        title: Text('Retrofit'),
        centerTitle: true,
      ),
    );
  }
  FutureBuilder _body() {
    final apiService = ApiService(Dio(BaseOptions(contentType: "application/json")));
    return FutureBuilder(
      future: apiService.getPosts(),
      builder: (context,snapshot){
        if (snapshot.connectionState == ConnectionState.done){
          final List<PostModel> posts = snapshot.data!;
          return
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
  Widget _posts(List<PostModel> posts){
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context,index){
        return Container(
          margin: EdgeInsets,
        )
      },
    )
  }
}
