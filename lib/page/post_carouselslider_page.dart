import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../detail/post_detail_page.dart';
import '../model/post_model.dart';
import '../repository/post_repository.dart';

class PostCarouselSliderPage extends StatefulWidget {
  @override
  _PostCarouselSliderPageState createState() => _PostCarouselSliderPageState();
}

class _PostCarouselSliderPageState extends State<PostCarouselSliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<PostModel>>(
        future: PostAPI(),
        builder: (context, snapshot) {
          if(!snapshot.hasData)
            return Center(
              child: CircularProgressIndicator()
            );
          return CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.8,
              aspectRatio: 2,
              initialPage: 1,
             ),
             items: snapshot.data!.map(
              (item) => GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PostDetailPage(blogModel: item)));
                },
                child: Container(
                margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    image: DecorationImage(
                    image: NetworkImage("https://codewithmey.herokuapp.com"+item.attributes.thumnail.data[0].attributes.formats.medium.url),
                    fit: BoxFit.cover)
                  ),
                 ),
              )
             ) .toList(),
          );
        }
      )
    );
  }
}