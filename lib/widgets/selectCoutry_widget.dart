import 'package:flutter/material.dart';
import 'package:goldensoft/controllers/home_controller.dart';
import 'package:goldensoft/model/all_countries_model.dart';

class SelectCountry extends StatefulWidget {
  const SelectCountry({Key? key}) : super(key: key);

  @override
  State<SelectCountry> createState() => _SelectCountryState();
}

class _SelectCountryState extends State<SelectCountry> {

  String valueChoose="السعودية";
 List listItems= ["السعودية","الإمارات" ,"الأردن" ,"العراق"];
 //List<AllCountriesModel> listItems= HomeController.allContries.value;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Text("اختر بلدك"),
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 18,
        style: TextStyle(
          color: Colors.black
        ),
       value: valueChoose,
        onChanged: (newValue){
        setState(() {
          valueChoose =newValue.toString();
        });
        },
      items: listItems.map((e)  {
        return DropdownMenuItem(
            value: e,
            child: Text(e));
      }).toList(),
    );
  }
}
