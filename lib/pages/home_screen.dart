import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:goldensoft/controllers/home_controller.dart';

import '../controllers/allCategories_controller.dart';
import '../widgets/buildCategories_widget.dart';
import '../widgets/image_widget.dart';
import '../widgets/search_widget.dart';
import '../widgets/selectCoutry_widget.dart';
import 'data.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CategoriesController categoriesController= Get.put(CategoriesController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),

        body: ListView(
          children: [
            SelectCountry(),
            ImageWidget(),
            Search(),
           SizedBox(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    children: buildCategories(),
                  )

            ),

            const SizedBox(
              height: 10,
            ),
            Obx((){
              return HomeController.loading.value?
                  CircularProgressIndicator()
              :

            GridView.count(
              childAspectRatio: 0.9,
              crossAxisCount: 2,
              padding: const EdgeInsets.all(5.0),
              children: Data.generateProducts().map((e) => Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                elevation: 0,
                child: InkWell(
                  onTap: (){
                   // Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: DetailScreen()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       // Image.asset(e.image,height: 90,width: double.infinity,),
                        const SizedBox(height: 5,),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                              text: e.title,
                              style: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18.0)),
                        ),

                      ],
                    ),
                  ),
                ),
              ),).toList(),
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
            );})
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked, //specify the location of the FAB
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          onPressed: () {
            print('OK');
          },
          tooltip: "start FAB",
          child: Container(
            margin: EdgeInsets.all(15.0),
            child: Icon(Icons.home_outlined, color: Colors.white,),
          ),
          elevation: 4.0,
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(width: 30,),
              // IconButton(icon: Image.asset("assets/ic_shop.png"), onPressed: () {},),
              // IconButton(icon: Image.asset("assets/ic_wishlist.png"), onPressed: () {},),
              // IconButton(icon: Image.asset("assets/ic_notif.png"), onPressed: () {},),
              SizedBox(width: 2,),
            ],
          ),
        )
    );
  }
}
