import 'dart:convert';

import 'package:google_clone/config/api_key.dart';
import 'package:http/http.dart'as http;

import '../config/api_dummy.dart';
class ApiServices {
  bool isDummyData = true;



  Future<Map<String,dynamic>> fetchData({required String query,String start = "0"}) async{
    try{
      if(!isDummyData){
       String q = query.contains(' ')? query.split(' ').join('%20'): query;
       final response = await http.get(Uri.parse('http://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$contextKey&q=$q&start=$start'));
       if(response.statusCode==200){
         final jsonData = response.body;
         final responseData = jsonDecode(jsonData);
         return responseData;
       }
      }

    }catch(e){
      print(e.toString());
    }
 return apiResponse;
  }
}