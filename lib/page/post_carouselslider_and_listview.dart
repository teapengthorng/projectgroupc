import 'package:flutter/material.dart';


import 'post_carouselslider_page.dart';
import 'post_listview_page.dart';

class PostCarouselsliderAndLsitViewPage extends StatefulWidget {
  @override
  _PostCarouselsliderAndLsitViewPageState createState() => _PostCarouselsliderAndLsitViewPageState();
}

class _PostCarouselsliderAndLsitViewPageState extends State<PostCarouselsliderAndLsitViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(flex: 1, child: PostCarouselSliderPage()),
            Expanded(flex: 2, child: PostListViewPage())
          ],
        ),
      ),
    );
  }
}
