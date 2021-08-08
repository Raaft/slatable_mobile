// import 'dart:convert';
// import 'dart:io';
//
// import 'package:http/http.dart' as http;
//
// import 'package:dio/dio.dart';
//
// class HttpManager {
//   static const String BaseUrl =
//       'us-central1-cr-mobile-13fb4.cloudfunctions.net';
//
//   static Map<String, String> getHeader() {
//     return {
//       //'Authorization': 'Bearer ${Constants.accessToken}',
//       "Content-Type": "application/json",
//     };
//   }
//
//   static Dio dio = Dio(
//     BaseOptions(baseUrl: 'https://us-central1-cr-mobile-13fb4.cloudfunctions.net', headers: getHeader()));
//
//
//   ///POST Method
//   static Future<http.Response?> post({
//     String? baseUrl,
//     required String path,
//     required Map<String, dynamic> body,
//   }) async {
//     try {
//       print(body);
//       final response = await http.post(
//           Uri.https(baseUrl ?? BaseUrl, '/app/api/v1$path'),
//           headers: getHeader(),
//           body: json.encode(body));
//       return response;
//     } catch (error) {
//       return null;
//     }
//   }
//
//   ///GET Method
//   static Future<http.Response?> get({
//     String? baseUrl,
//     required String path,
//     required Map<String, dynamic> parameters,
//   }) async {
//     try {
//       final response = await http.get(
//           Uri.https(baseUrl ?? BaseUrl, '/app/api/v1$path', parameters),
//           headers: getHeader());
//       return response;
//     } catch (error) {
//       return null;
//     }
//   }
//
//   ///PUT Method
//   static Future<http.Response?> put({
//     String? baseUrl,
//     required String path,
//     required Map<String, dynamic> body,
//   }) async {
//     final uri = Uri.https(baseUrl ?? BaseUrl, '/app/api/v1$path');
//     try {
//       print(body);
//       final response = await http.put(
//           uri,
//           headers: getHeader(),
//           body: json.encode(body));
//       print(response.body);
//       return response;
//     } catch (error) {
//       print('Error in $uri: $error');
//       return null;
//     }
//   }
//
//   ///Upload Method
//   static Future<Response?> uploadAndPost({
//     String? baseUrl,
//     required String path,
//     required Map<String, dynamic> body,
//     List<File>? files
//   }) async {
//     try {
//       List<MultipartFile> multipartFiles = [];
//       if(files!=null)
//       for(File file in files){
//         multipartFiles.add(await MultipartFile.fromFile(file.path));
//       }
//       body.addAll({'files': multipartFiles});
//       print(body);
//       var formData = FormData.fromMap(body);
//       final response = await dio.post('/app/api/v1$path', data: formData);
//       return response;
//     } catch (error) {
//       return null;
//     }
//   }
// }
