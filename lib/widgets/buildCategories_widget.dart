import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:goldensoft/controllers/home_controller.dart';



List<Widget> buildCategories() {
  return HomeController.allContries.value.map(
        (e) => Container(
      padding: const EdgeInsets.only(left: 15, bottom: 10),
      child: ElevatedButton(
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(e.name.toString(), style: const TextStyle(fontSize: 14)),
            ],
          ),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(
                  e.id == 1 ? Colors.white : Colors.black38),
              backgroundColor: MaterialStateProperty.all<Color>(
                  e.id == 1 ? Colors.deepOrange : Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)))),
          onPressed: () {}),
    ),
  )
      .toList();
}
