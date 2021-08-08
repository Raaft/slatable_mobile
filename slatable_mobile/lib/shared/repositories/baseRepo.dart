// import 'dart:convert';
//
// import 'package:slatable_mobile/shared/services/http_manager.dart';
// import 'package:slatable_mobile/shared/utils/model_mapper.dart';
//
//
//
// class BaseRepo<T>{
//
//   Future<List<T>>getListOfData(Map<String,dynamic> body,String data,String path)async{
//
//     final response = await HttpManager.post(
//         path: path, body: body);
//     if (response == null || response.statusCode != 200)
//       return [];
//     else{
//       return  (json.decode(response.body)[data] as List).map<T>((e) => models[T](e) as T).toList();
//     }
//   }
//
//
// }