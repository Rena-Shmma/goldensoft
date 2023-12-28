import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 4,
                color: Colors.black.withOpacity(0.2),
              )
            ]
        ),
        child: TextField(
          textAlign: TextAlign.end,
          style: TextStyle(color: Colors.deepOrange),
          cursorColor: Colors.deepOrange,
          decoration: InputDecoration(
            suffixIcon: const Icon(Icons.search, color: Colors.black26,),

            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(width: 1, color: Colors.transparent),
            ) ,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(color: Colors.deepOrange)
            ),
            hintText: "بحث",
            hintStyle: const TextStyle(color: Colors.black26),
          ),
        ),
      ),
    );
  }
}

