import 'package:flutter/material.dart';

import '../detail/post_detail_page.dart';
import '../model/post_model.dart';
import '../repository/post_repository.dart';

class PostListViewPage extends StatefulWidget {
  @override
  _PostListViewPageState createState() => _PostListViewPageState();
}

class _PostListViewPageState extends State<PostListViewPage> {

  List<PostModel> lstPostmodel = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  FutureBuilder(
          future:  PostAPI(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if(!snapshot.hasData)
              return Center(child:  CircularProgressIndicator(),);
            lstPostmodel = snapshot.data ?? "";
            return ListView.builder(
              shrinkWrap: true,
              itemCount: lstPostmodel.length,
              itemBuilder: (context, index){
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PostDetailPage(blogModel: lstPostmodel[index])));
                },
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                    margin: EdgeInsets.fromLTRB(6, 6, 0, 0),
                    width: 140,
                    height: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(image: NetworkImage("https://codewithmey.herokuapp.com"+ lstPostmodel[index].attributes.thumnail.data[0].attributes.formats.medium.url),fit: BoxFit.cover)
                      ),
                    ),
                    Flexible(
                     child:  Container(
                      margin: EdgeInsets.fromLTRB(0, 6, 6, 0),
                      width: 260,
                      height: 90,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),),
                      child: Container(
                      padding: EdgeInsets.all(6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(lstPostmodel[index].attributes.title, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.blue[900], ),),
                              ),
                              // SizedBox(height: 5,),
                            Container(
                               child: Text(lstPostmodel[index].attributes.content,maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.blue),),
                            )
                          ],
                        ),
                      )
                     )
                    )
                  ],
                ),
              );
            }
          );
        }
      )
    );
  }
}

