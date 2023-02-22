import 'package:fenix/screens/profile/selling_list.dart';
import 'package:fenix/screens/profile/wishlist.dart';
import 'package:fenix/screens/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../onboarding/constants.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

  List title = [
    "Your Account",
    "Your Message",
    "Create Selling Post",
    "Subscribe",
    "Your Wishlist",
    "Your Selling",
    "Language",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: SizedBox(
            height: 46.h,
            child: Image.asset("assets/images/fenixWhite2.png",fit: BoxFit.fill,),
          ),
          automaticallyImplyLeading: false,
          actions: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.notifications_none, color: Colors.white, size: 27.w,),
                  Icon(Icons.search, color: Colors.white, size: 27.w,),
                  Icon(Icons.logout, color: Colors.white, size: 27.w,),
                ],
              ),
            ),
          ],
          elevation: 0,
          centerTitle: false,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: gradient2(Color(0xFF46E0C4),
                Color(0xFF59B5C0),),
            ),
          )),
      body: Container(
        color: Color(0xFFE4EFF9),
        child: ListView(
          children: [
            Container(
              height: 50.w,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              margin: EdgeInsets.only(bottom: 20.w),
              decoration: BoxDecoration(
                gradient: gradient2(Color(0xFF41F0D1),
                  Color(0xFF4A9A9E),),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hello, Khasan",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.w,
                    shadows: [
                      Shadow(color: Colors.black.withOpacity(0.2), offset: Offset(2,2))
                    ]
                  ),),

                  Image.asset("assets/images/icons/personIcon.png",fit: BoxFit.fill, height: 60, width: 60,),
                ],
              ),
            ),


            GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3.2 / 1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10),
                itemCount:7,
                shrinkWrap: true,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                    onTap: (){
                      if(index == 5){
                        Get.to(() => SellingList());
                      }
                      if(index == 4){
                        Get.to(() => Wishlist());
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.w),
                      decoration: BoxDecoration(
                          color: Color(0xFFE4EFF9),
                          borderRadius: BorderRadius.circular(17.w),
                        border: Border.all(color: Color(0xFf334669), width: 0.1),
                        gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              Color(0xFFDBE6F2).withOpacity(0.2),
                              Color(0xFF8F9FAE).withOpacity(0.2),
                            ],
                            stops: [0.0,0.5, 1.0],
                            begin: FractionalOffset.topLeft,
                            end: FractionalOffset.bottomRight,
                            tileMode: TileMode.repeated
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 0,
                            blurRadius: 5,
                            offset: Offset(1, 0), // changes position of shadow
                          ),
                          BoxShadow(
                            color: Colors.white.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(1, 1), // changes position of shadow
                          ),


                        ],
                      ),

                      child: Text(title[index],
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 15.w,
                          fontWeight: FontWeight.w700
                      ),),
                    ),
                  );
                }),



            Divider(color: Color(0xFF1994F5).withOpacity(0.22),thickness: 5, height: 50.w,),


            Padding(
              padding: EdgeInsets.all(14.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recently Viewed Items",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.w,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Text("See all",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.w,
                        fontWeight: FontWeight.w400,
                    ),)
                ],
              )
            ),


            GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 1.3 / 1,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0),
                itemCount:9,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    children: [
                      Container(
                        height: 66.w,
                        width: MediaQuery.of(context).size.width * 0.3,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.w),
                        decoration: BoxDecoration(
                          color: Color(0xFFE4EFF9),
                          borderRadius: BorderRadius.circular(17.w),
                          border: Border.all(color: Color(0xFf334669), width: 0.1),
                          gradient: LinearGradient(
                              colors: [
                                Colors.white,
                                Color(0xFFDBE6F2).withOpacity(0.2),
                                Color(0xFF8F9FAE).withOpacity(0.2),
                              ],
                              stops: [0.0,0.5, 1.0],
                              begin: FractionalOffset.topLeft,
                              end: FractionalOffset.bottomRight,
                              tileMode: TileMode.repeated
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 0,
                              blurRadius: 5,
                              offset: Offset(1, 0), // changes position of shadow
                            ),
                            BoxShadow(
                              color: Colors.white.withOpacity(0.4),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(1, 1), // changes position of shadow
                            ),


                          ],
                        ),
                      ),
                      Text("Iphone 14 Pro",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 11.w,
                            fontWeight: FontWeight.w300,
                          color: Colors.black
                        ),),
                    ],
                  );
                }),

            SizedBox(height: 20.w,),


            Padding(
                padding: EdgeInsets.all(14.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Your Post List",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.w,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    Text("See all",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.w,
                        fontWeight: FontWeight.w400,
                      ),)
                  ],
                )
            ),


            GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 1.3 / 1,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0),
                itemCount:9,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    children: [
                      Container(
                        height: 66.w,
                        width: MediaQuery.of(context).size.width * 0.3,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.w),
                        decoration: BoxDecoration(
                          color: Color(0xFFE4EFF9),
                          borderRadius: BorderRadius.circular(17.w),
                          border: Border.all(color: Color(0xFf334669), width: 0.1),
                          gradient: LinearGradient(
                              colors: [
                                Colors.white,
                                Color(0xFFDBE6F2).withOpacity(0.2),
                                Color(0xFF8F9FAE).withOpacity(0.2),
                              ],
                              stops: [0.0,0.5, 1.0],
                              begin: FractionalOffset.topLeft,
                              end: FractionalOffset.bottomRight,
                              tileMode: TileMode.repeated
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 0,
                              blurRadius: 5,
                              offset: Offset(1, 0), // changes position of shadow
                            ),
                            BoxShadow(
                              color: Colors.white.withOpacity(0.4),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(1, 1), // changes position of shadow
                            ),


                          ],
                        ),
                      ),
                      Text("great house for...",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 11.w,
                            fontWeight: FontWeight.w300,
                            color: Colors.black
                        ),),
                    ],
                  );
                }),

          ],
        ),
      ),
    );
  }
}
