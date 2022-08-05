import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../page/authors_page.dart';
import '../page/post_carouselslider_and_listview.dart';

class PersistentBottomNavBarWidget extends StatefulWidget {
  const PersistentBottomNavBarWidget({ Key? key }) : super(key: key);

  @override
  State<PersistentBottomNavBarWidget> createState() => _PersistentBottomNavBarWidgetState();
}

class _PersistentBottomNavBarWidgetState extends State<PersistentBottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context, 
//        backgroundColor: Colors.black,
        screens: screens(),
        items: navBarIrem(),
        navBarStyle: NavBarStyle.style12,
        ),
    );
  }

  List<Widget> screens(){
    return [
      PostCarouselsliderAndLsitViewPage(),
      AuthorsPage(),

    ];
  }

  List<PersistentBottomNavBarItem> navBarIrem(){
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.image_outlined),
        title: "Show",
        activeColorPrimary: Colors.blueGrey,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person_add_alt_1_outlined),
        title: "Save",
        activeColorPrimary: Colors.blueGrey,
        inactiveColorPrimary: Colors.grey,
      ),

      
    ];
  }
}