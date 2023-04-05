import 'package:flutter/material.dart';
import 'package:doc/profile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title=' Dr Arup';


  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: Color(0xFFF5F8FA),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      elevation: 0,
      toolbarHeight: 150,
      leading: Padding(
        padding: const EdgeInsets.only(left: 17.0),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/image/doc.png'),
          radius: 50,
        ),
      ),
      actions: [
        IconButton(
          icon: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
              size: 40,
            ),
          ),
          onPressed: () {
            // TODO: Implement action for three-dot icon
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(150);
}

class MyBottomArea extends StatefulWidget {
  const MyBottomArea();

  @override
  _MyBottomAreaState createState() => _MyBottomAreaState();
}

class _MyBottomAreaState extends State<MyBottomArea> {
  int _currentIndex = 0;
  List<String> _iconNames = ['home.png', 'help.png', 'dollar.png'];
  List<bool> _isSelected = [true, false, false];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      for (int i = 0; i < _isSelected.length; i++) {
        _isSelected[i] = i == index;
      }
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyPage()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HelpScreen()),
        );
        break;
      case 2:
      // Navigate to Dollar screen
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color(0xFFF5F8FA),
      elevation: 0,
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
      items: List.generate(
        _iconNames.length,
            (index) => BottomNavigationBarItem(
          icon: InkWell(
            onTap: () => _onItemTapped(index),
            child: Image.asset(
              'assets/image/${_iconNames[index]}',
              width: 35,
              height: 35,
              color: _isSelected[index] ? Colors.blue : null,
            ),
          ),
          label: '',
        ),
      ),
    );
  }
}

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
      appBar: MyAppBar(),
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
      bottomNavigationBar: MyBottomArea(),

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
      appBar: MyAppBar(),
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
      bottomNavigationBar: MyBottomArea(),
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