import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/post_model.dart';


class PostDetailPage extends StatefulWidget {
  const PostDetailPage({ Key? key,required this.blogModel }) : super(key: key);
 final PostModel blogModel ;
  @override
  State<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
//        backgroundColor: Colors.grey[],
        title: Text(widget.blogModel.attributes.title),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 6,),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Expanded(
                          child: Container(
                          margin: EdgeInsets.fromLTRB(10, 6, 10, 0),
                          height: 170,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(image: NetworkImage("https://codewithmey.herokuapp.com"+widget.blogModel.attributes.thumnail.data[0].attributes.formats.medium.url), fit: BoxFit.fill)),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 6,),
              Container(
                margin: EdgeInsets.only(right: 10, ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 3),
                      child: Text(DateFormat.yMMMMd().format(DateTime.parse(widget.blogModel.attributes.publishedAt))
                        ,style: TextStyle(color: Colors.blue, fontSize: 17), overflow: TextOverflow.ellipsis, maxLines: 8,),),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 3),
                      child: Text(DateFormat.jm().format(DateTime.parse(widget.blogModel.attributes.publishedAt))
                        ,style: TextStyle(color: Colors.blue, fontSize: 17), overflow: TextOverflow.ellipsis, maxLines: 8,),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Description: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 20),),

                    ),
                    SizedBox(height: 6,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      margin: EdgeInsets.only(right: 6),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Text(widget.blogModel.attributes.description,style: TextStyle(color: Colors.black, fontSize: 18),),

                      ),
                    )
                  ],
                ),),

              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Content:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 20), )),
                    SizedBox(height: 6,),
                    Container(
                     decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20)
                     ),
                      margin: EdgeInsets.only(right: 6),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Text(widget.blogModel.attributes.content,style: TextStyle(color: Colors.black, fontSize: 18),),
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}