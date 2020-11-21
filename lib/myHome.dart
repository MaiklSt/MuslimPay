import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muslim_pay/widget_futter.dart';
import 'askary.dart';
import 'data.dart';
import 'media_dq.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    myW = MediaQuery.of(context).size.width;
    myH = MediaQuery.of(context).size.height;
    Sizee(myW, myH);
    print(myW);
    print(myH);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white24,

          title: Center(
              child: Text(widget.title, style: TextStyle(color: Colors.black))),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.green),
            onPressed: () {
              //Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.greenAccent),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Divider(
                height: 10.0,
                color: Colors.black,
              ),
              futter, ////////////////////////////          FUTER       //////////////////////////////////////
              Divider(
                height: 10.0,
                color: Colors.black,
              ),
              Expanded(
                child: Container(                 
                  width: double.infinity,                  
                  child: new ListView.builder(
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int position) {
                        final index = position;
                        return new ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: myW / 20.55,
                                    vertical: myW / 82.2),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: myW / 2.74,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          image: DecorationImage(
                                            image:
                                                AssetImage('images/$index.png'),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.all(myW / 51.375), // 8
                                      height: myW / 2.74,
                                      child: Padding(
                                        padding: EdgeInsets.all(myW / 51.375),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 10.0,
                                              height: 10.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  askar[index],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: myW / 16.44),
                                                ),
                                                SizedBox(height: 5.0),
                                                RichText(
                                                    text: TextSpan(
                                                        text: 'Посмотреть >',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .green[200],
                                                            fontSize:
                                                                myW / 27.21),
                                                        recognizer:
                                                            TapGestureRecognizer()
                                                              ..onTap = () {
                                                                Navigator.of(
                                                                        context)
                                                                    .push(
                                                                  MaterialPageRoute(
                                                                    builder:
                                                                        (context) {
                                                                      return Askary(
                                                                          '$index');
                                                                    },
                                                                  ),
                                                                );
                                                              })),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 8.0,
                              ),
                              Divider(
                                height: 5.0,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
