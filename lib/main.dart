import 'package:flutter/material.dart';
import 'package:doc/page_1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context , child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            //home: MyPage(),
            home: Home(),
          );
        }
    );
  }
}



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentIndex = 0;
  final screens = [
    MyPage(),
    const HelpScreen(),
    Center(
      child: Text("under construction"),
    ),
  ];

  String title=' Dr Arup';

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FA),
      appBar:  AppBar(
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
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: Container(
        color: Color(0xFFF5F8FA),
        child: NavigationBarTheme(
          data: const NavigationBarThemeData(
            //indicatorColor: Color(0x09FA5463),
            shadowColor: Colors.transparent,
            // splashColor: Colors.transparent,
            // highlightColor: Colors.transparent,
            indicatorColor: Colors.transparent,
             backgroundColor: Color(0xFFF5F8FA),
          ),
          child: NavigationBar(
            height: 60,
            selectedIndex: currentIndex,
            backgroundColor: Colors.white,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            onDestinationSelected: (index)=>setState(() {
              currentIndex=index;
            }),

            destinations: [
              NavigationDestination(
                icon: Image(
                  height: 26.sp,
                  width: 26.sp,
                  fit: BoxFit.fill,
                  image: const AssetImage('assets/image/home.png',),
                ),
                //shadow.pn
                selectedIcon: Image(
                    height: 26.sp,
                    width: 26.sp,
                    //fit: BoxFit.fill,
                    color: Colors.blue,
                    image: const AssetImage('assets/image/home.png',)
                ),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Image(
                    height: 26.sp,
                    width: 26.sp,
                    fit: BoxFit.fill,
                    image: const AssetImage('assets/image/help.png',)
                ),
                //adoption_selected_icon.png
                selectedIcon: Image(
                    height: 26.sp,
                    width: 26.sp,
                    color: Colors.blue,
                    fit: BoxFit.fill,
                    image: const AssetImage('assets/image/help.png',)
                ),
                label: 'Help',
              ),
              NavigationDestination(
                icon: Image(
                    height: 26.sp,
                    width: 26.sp,
                    fit: BoxFit.fill,
                    image: const AssetImage('assets/image/dollar.png',)
                ),
                selectedIcon: Image(
                    height: 26.sp,
                    width: 26.sp,
                    fit: BoxFit.fill,
                    color: Colors.blue,
                    image: const AssetImage('assets/image/dollar.png',)
                ),
                label: 'Dollar',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

