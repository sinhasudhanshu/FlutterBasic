import 'package:dio/dio.dart';

void main() async {
  final dio = Dio();
  try {
    final response = await dio.get(
        'https://gist.githubusercontent.com/sinhasudhanshu/b669cf91b3c0f983174b323e7c7d088d/raw/20aa166df50b2c691d0551ac9461fae961b818fd/testdata.json');
    print(response.data);
  } catch (e) {
    print(e);
  }
}
