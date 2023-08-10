import 'dart:convert' as convert;
import 'package:http/http.dart' as http;


void main() async {
  final siteurl = "gist.githubusercontent.com";
  final suburl = "/sinhasudhanshu/b669cf91b3c0f983174b323e7c7d088d/raw/20aa166df50b2c691d0551ac9461fae961b818fd/testdata.json";
  final url = Uri.http(siteurl, suburl, {});
  try{

    final response = await http.get(url);
    print(response);
    print(response.body);
    print(response.statusCode);
  } catch (e) {
    print(e);
  }
}