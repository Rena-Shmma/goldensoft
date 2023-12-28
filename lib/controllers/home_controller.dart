import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;

import '../constants/constants.dart';
import '../model/all_countries_model.dart';

class HomeController extends GetxController{
static RxBool loading= false.obs;
static Rx<List<AllCountriesModel>> allContries=Rx<List<AllCountriesModel>>([]);

  @override
  void oninit(){
    super.onInit();
    getAllContries();
  }

  Future getAllContries()async{
    try{
      allContries.value.clear();
      var response = await http.get(url,
          headers: {
            'Accept':'Application/json'
          },
      ) ;
      if(response.statusCode ==200){
        print("success");
        loading.value=false;
        final content= json.decode(response.body)['data'];
        for(var item in content){
          allContries.value.add(AllCountriesModel.fromJson(item));
        }
      }
      else{
        loading.value=false;
      }

    }
    catch(e){
      print(e.toString());
      loading.value=false;
    }
  }
}



// class HomeController extends GetxController {
//   String? city;
//   String? searchText;
//
//   CurrentWeatherData currentWeatherData = CurrentWeatherData();
//   List<CurrentWeatherData> dataList = [];
//   List<FiveDayData> fiveDaysData = [];
//
//   HomeController({required this.city});
//
//   @override
//   void onInit() {
//     initState();
//     getTopFiveCities();
//     super.onInit();
//   }
//
//   void updateWeather() {
//     initState();
//   }
//
//   void initState() {
//     getCurrentWeatherData();
//     getFiveDaysData();
//   }
//
//   void getCurrentWeatherData() {
//     WeatherService(city: '$city').getCurrentWeatherData(
//         onSuccess: (data) {
//           currentWeatherData = data;
//           update();
//         },
//         onError: (error) => {
//           print(error),
//           update(),
//         });
//   }
//
//   void getTopFiveCities() {
//     List<String> cities = [
//       'zagazig',
//       'cairo',
//       'alexandria',
//       'ismailia',
//       'fayoum'
//     ];
//     cities.forEach((c) {
//       WeatherService(city: '$c').getCurrentWeatherData(onSuccess: (data) {
//         dataList.add(data);
//         update();
//       }, onError: (error) {
//         print(error);
//         update();
//       });
//     });
//   }
//
//   void getFiveDaysData() {
//     WeatherService(city: '$city').getFiveDaysThreeHoursForcastData(
//         onSuccess: (data) {
//           fiveDaysData = data;
//           update();
//         }, onError: (error) {
//       print(error);
//       update();
//     });
//   }
// }
