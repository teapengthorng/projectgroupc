import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/authors_model.dart';
import '../repository/authors_repository.dart';
class AuthorsPage extends StatefulWidget {
  @override
  _AuthorsPageState createState() => _AuthorsPageState();
}

class _AuthorsPageState extends State<AuthorsPage> {
  List<AuthorsModel> lstAuthormodel = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Authors"),
        centerTitle: true,
      ),
        body:  FutureBuilder(
            future:  AuthorAPI(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if(!snapshot.hasData)
                return Center(child:  CircularProgressIndicator(),);
              lstAuthormodel = snapshot.data ?? "";
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: lstAuthormodel.length,
                  itemBuilder: (context, index){
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(6, 6, 0, 0),
                          width: 140,
                          height: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(image: NetworkImage("https://codewithmey.herokuapp.com"+lstAuthormodel[index].attributes.profile.data[0].attributes.formats.thumbnail.url),fit: BoxFit.cover)

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
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Text(lstAuthormodel[index].attributes.fullname, style: TextStyle(fontSize: 20, color: Colors.blue),),
                                            ),
                                            Container(
                                              child: Icon(Icons.person, color: Colors.blue,),
                                            ),

                                          ],
                                        )
                                      ),
//                                      SizedBox(height: 10,),
                                      Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  child: Text(DateFormat.yMMMMd().format(DateTime.parse(lstAuthormodel[index].attributes.createdAt)
                                                  ))),
                                              Container(
                                                child: Icon(Icons.date_range,),
                                              ),

                                            ],
                                          )
                                      ),
                                      SizedBox(height: 5,),

                                    ],
                                  ),
                                )
                            )
                        )
                      ],
                    );
                  }
              );
            }
        )
    );
  }
}

