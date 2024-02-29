import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking_app/pages/home_page.dart';
import 'package:mobile_banking_app/pages/invest_page.dart';
import 'package:mobile_banking_app/pages/message_page.dart';
import 'package:mobile_banking_app/pages/not_page.dart';
import 'package:mobile_banking_app/pages/profile_page.dart';
import 'package:mobile_banking_app/widgets/my_icon.dart';

class HomeScreen extends StatefulWidget {
  //index of the current page
  int current_icon = 0;
  //our pages
  //for nav bar
  List<Widget> pages = [
    HomePage(),
    InvestPage(),
    MessagePage(),
    NotPage(),
    ProfilePage()
  ];

  //here is our page controller needed for animation and other
  //customization of page scrolling
  PageController controller = PageController();

  int current_page = 0;

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void onItemTapped(int index){
    setState(() {
      widget.current_icon = index;
    });
    widget.controller.animateToPage(index, duration: Duration(milliseconds: 400), curve: Curves.linear);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
      width: double.infinity,
      height: 70,
      child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
        GestureDetector(child: MyIcon(icon_path: widget.current_icon==0 ? 'assets/home.png':'assets/unhome.png'),onTap: (){
          onItemTapped(0);
        },),

        GestureDetector(child: MyIcon(icon_path: widget.current_icon==1 ? 'assets/invest.png':'assets/uninvest.png'),onTap: (){
          onItemTapped(1);
        },),

        GestureDetector(child: MyIcon(icon_path: widget.current_icon==2 ? 'assets/message.png':'assets/unmessage.png'),onTap: (){
          onItemTapped(2);
        },),

        GestureDetector(child: MyIcon(icon_path: widget.current_icon==3? 'assets/not.png':'assets/unnot.png'),onTap: (){
          onItemTapped(3);
        },),

        GestureDetector(child: MyIcon(icon_path: widget.current_icon==4?'assets/profile.png':'assets/unprofile.png'),onTap: (){
          onItemTapped(4);
        },),
      ]),
    ),




      body: PageView(
        controller: widget.controller,
        children: widget.pages,
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}




