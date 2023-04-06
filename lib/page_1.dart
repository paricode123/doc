import 'package:flutter/material.dart';
import 'package:doc/profile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FA),
      body: Container(
        padding: EdgeInsets.all(16.0),
        // margin: EdgeInsets.fromLTRB(_width * 0.07, 0, 0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Evening',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
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
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text('Payment',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),),
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            Expanded(child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index){
                  return MyTile();
                }))
          ],
        ),
      ),
    );
  }
}

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();

}

class _HelpScreenState extends State<HelpScreen> {
  int _currentIndex = 0;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FA),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context,index){
                  return TileTwo();
                }))
          ],
        ),
      ),
    );
  }
}

class MyTile extends StatelessWidget {
  const MyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20.h, 0, 35.h),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Text('Jhon Doe',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.sp,
                  ),),
              ),
              SizedBox(width: 150.w,),
              Container(
                child: Text('600/-',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                  ),),
              ),
              SizedBox(width: 23.w,),
            ],
          ),
          SizedBox(height: 10.h,),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('Payment Status :',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
          ),
          SizedBox(height: 10.h,),
          Row(
            children: [
              Container(
                child: Text('Appointment ID:',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),),
              ),
              SizedBox(width: 10.w,),
              Container(
                child: Text('2597452368',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.black,
                    fontSize: 18.sp,
                  ),),
              ),
            ],
          ),
          SizedBox(height: 10.h,),
          Row(
            children: [
              Container(
                child: Text('Date:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              Container(
                child: Text(' dd/mm/yyyy',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.black,
                    fontSize: 18.sp,
                  ),),
              ),
              SizedBox(width: 70.w,),
              Container(
                child: Text('Time: ',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),),
              ),
              Container(
                child: Text('8:00AM',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.black,
                    fontSize: 18.sp,
                  ),),
              ),
            ],
          ),
        ],
      ) ,
    );
  }
}

class TileTwo extends StatelessWidget {
  const TileTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20.h, 0, 0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage('assets/image/dp.png'),
                        width: 110.w,
                        height: 110.h,
                      ),
                      SizedBox(width: 16.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jhon Doe',
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            '4:10PM',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/image/tick.png'),
                        iconSize: 40.sp,
                      ),
                      SizedBox(width: 16.w),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/image/cross.png'),
                        iconSize: 32.sp,
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ),
        ],
      ) ,
    );
  }
}