import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../model/city_category_model.dart';

class CategoriesController extends GetxController{
  CityCategoryModel? categoryModel;
  //var CategoryList= List<CityCategoryModel>().obs();
var isloading=false.obs();

@override
Future<void> onInit()async{
  super.onInit();
  fetchCategories();
}

fetchCategories ()async{
  try{
    isloading=true;
    http.Response response= await http.get(Uri.parse("https://ofrlk.com/api/country/1"));
    if(response.statusCode ==200){
      var result =jsonDecode(response.body);
      categoryModel= CityCategoryModel.fromJson(result);
    }
    else{
      //error
    }

  }
  catch(e){

  }
  finally{
    isloading=false;
  }
}
}