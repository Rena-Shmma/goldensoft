import 'package:goldensoft/model/all_countries_model.dart';
import 'package:http/http.dart' as http;
//
// class RemoteServices{
//   static var client= http.Client();
//
//   static Future<List<AllCountriesModel>> fetchAllContries() async{
//     try{
//       var response= await client.get(Uri.parse('https://ofrlk.com/api/country/1'));
//       if(response.statusCode==200){
//         var jsonString= response.body;
//         return AllCountriesModel.fromJson(jsonString);
//       }
//     }
//     catch(e){
//       print(e);
//     }
//
//
// }
// }