import 'package:flutter/material.dart';
import 'package:doc/page_1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  int _currentIndex = 0;
  TextEditingController box1Controller = TextEditingController();
  TextEditingController box2Controller = TextEditingController();
  TextEditingController box3Controller = TextEditingController();
  TextEditingController box4Controller = TextEditingController();

  @override
  void dispose() {
    box1Controller.dispose();
    box2Controller.dispose();
    box3Controller.dispose();
    box4Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FA),
      appBar: MyAppBar(),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(_width * 0.07, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Evening',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),),
                    Row(
                      children: [
                        Text('4:00PM',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 27,
                          ),),
                        SizedBox(
                          width: _width * 0.07,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text('Token :',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28.sp,
                        ),),
                    ),
                    SizedBox(width: 25.w,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50.h,
                          width: 40.w,
                          child: TextField(
                            controller: box1Controller,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 5.w, // Set the width of the border to 2.0
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        SizedBox(
                          height: 50.h,
                          width: 40.w,
                          child: TextField(
                            controller: box1Controller,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 5.w, // Set the width of the border to 2.0
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        SizedBox(
                          height: 50.h,
                          width: 40.w,
                          child: TextField(
                            controller: box1Controller,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 5.w, // Set the width of the border to 2.0
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        SizedBox(
                          height: 50.h,
                          width: 40.w,
                          child: TextField(
                            controller: box1Controller,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 5.w, // Set the width of the border to 2.0
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20.h,),
                Container(
                  decoration: BoxDecoration(
                  ),
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/image/dp.png',
                      ),
                        width: 100.w,
                        height: 100.h,),
                      SizedBox(width: 16..w),
                      Text(
                        'Jhon Doe',
                        style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h,),
                Container(
                  decoration: BoxDecoration(
                  ),
                  child: Row(
                    children: [
                      Text(
                        '24/08/2020',
                        style: TextStyle(
                          fontSize: 27.sp,
                        ),
                      ),
                      SizedBox(width: 75.w),
                      Text(
                        '4:15 PM',
                        style: TextStyle(
                          fontSize: 27.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.h,),
                Center(
                  child: Text('Payment Done',
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                SizedBox(height: 170.h,),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {  },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFF5F8FA),
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.black, width: 2),
                        ),
                        fixedSize: Size(120.h, 50.w),
                      ),
                      child: Text(
                        'Done',
                        style: TextStyle(
                          fontSize: 25.sp,
                        ),
                      ),
                    ),
                    SizedBox(width: 100.w,),
                    ElevatedButton(
                      onPressed: () {  },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFF5F8FA),
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.black, width: 2),
                        ),
                        fixedSize: Size(120.h, 50.w),
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 25.sp,
                        ),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomArea(),

    );
  }
}
