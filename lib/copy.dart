import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muslim_pay/widget_futter.dart';

import 'data.dart';
import 'media_dq.dart';

void main() {
  runApp(MyApp());
}

int time = 2;
// double myH;
// double myW;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Азкары'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;
  var im = Image.asset('images/3-6.jpg');
  // List<String> askar = [
  //   'Утром',
  //   'Вечером',
  //   'После молитвы',
  //   'Важные Дуа. Часть 1',
  //   'Важные Дуа. Часть 2'
  // ];

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
          //shadowColor: Colors.white,
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
              futter,
              Divider(
                height: 10.0,
                color: Colors.black,
              ),
              Expanded(
                child: Container(
                  //color: Colors.blue,
                  width: double.infinity,
                  // height: double.infinity,
                  child: new ListView.builder(
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int position) {
                        final index = position;
                        //String num = 'images/' + index + '.png';
                        return new ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: myW / 20.55, vertical: myW / 82.2),
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
                                      padding: EdgeInsets.all(myW / 51.375), // 8
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
                                                            fontSize: myW / 27.21),
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

// class _widget extends StatelessWidget {
//   const _widget({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 2,
//       padding: const EdgeInsets.all(8.0),
//       itemBuilder: (BuildContext context, int index) {
//         return Container(
//           color: Colors.cyan,
//           //width: 20.0,
//           height: 100.0,
//           child: Column(
//             children: [
//               // Text('index'),
//               // Divider(color: Colors.black,),
//               Image.asset('images/1.png', fit: BoxFit.fill),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

class Askary extends StatelessWidget {
  final String id;
  Askary(this.id);

  @override
  Widget build(BuildContext context) {
    print('000000000000000000000000000000000000000000000000000');

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
              child: Text('Азкары', style: TextStyle(color: Colors.black))),
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
              futter,
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
                        return new ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Утренний азкар №$id',
                                        style: TextStyle(fontSize: 20.0)),
                                    Text(''),
                                    Image.asset('images/askarArab.png'),
                                    Text(''),
                                    Text(askarRus[0]),
                                    Text(''),
                                    Text(askarTrans[1]),
                                  ],
                                ),
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

// final Widget futter = Column(
//   children: [
//     //SizedBox(height: 5.0),
//     Padding(
//       padding: EdgeInsets.symmetric(horizontal: myW / 20.55), // 20
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Expanded(
//             flex: 3,
//             child: Container(
//               //color: Colors.red,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Flexible(
//                     child: Container(
//                       //color: Colors.blue,
//                       width: myW / 20,
//                       height: myW / 20,
//                       child: Image.asset('images/gps.png'),
//                     ),
//                   ),
//                   Container(
//                     width: myW / 60,
//                     height: myW / 60,
//                     //color: Colors.white,
//                   ),
//                   //Icon(Icons.add_location),
//                   Text(
//                     'Москва',
//                     style: TextStyle(
//                         fontSize: myW / 22, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 8,
//             child: Container(
//               //height: 20.0,
//               //color: Colors.blue,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     child: Flexible(
//                       child: FittedBox(
//                         fit: BoxFit.contain,
//                         child: Text('7:12',
//                             style: TextStyle(
//                                 fontSize: myW / 25,
//                                 color:
//                                     time == 1 ? Colors.green : Colors.black)),
//                       ),
//                     ),
//                     //margin: const EdgeInsets.all(30.0),
//                     padding: time == 1
//                         ? const EdgeInsets.all(5.0)
//                         : const EdgeInsets.all(0),
//                     decoration: time == 1
//                         ? BoxDecoration(
//                             border: Border.all(
//                               color: Colors.green,
//                             ),
//                             borderRadius: BorderRadius.all(Radius.circular(myW / 27.4)))
//                         : BoxDecoration(
//                             border: Border.all(color: Colors.white)),
//                   ),
//                   SizedBox(width: myW / 82),
//                   Container(
//                     child: Flexible(
//                       child: FittedBox(
//                         fit: BoxFit.contain,
//                         child: Text('12:25',
//                             style: TextStyle(
//                                 fontSize: myW / 25,
//                                 color:
//                                     time == 2 ? Colors.green : Colors.black)),
//                       ),
//                     ),
//                     padding: time == 2
//                         ? const EdgeInsets.all(5.0)
//                         : const EdgeInsets.all(0),
//                     decoration: time == 2
//                         ? BoxDecoration(
//                             border: Border.all(
//                               color: Colors.green,
//                             ),
//                             borderRadius: BorderRadius.all(Radius.circular(myW / 27.4)))
//                         : BoxDecoration(
//                             border: Border.all(color: Colors.white)),
//                   ),
//                   SizedBox(width: myW / 82),
//                   Container(
//                     child: Flexible(
//                       child: FittedBox(
//                         fit: BoxFit.contain,
//                         child: Text('17:12',
//                             style: TextStyle(
//                                 fontSize: myW / 25,
//                                 color:
//                                     time == 3 ? Colors.green : Colors.black)),
//                       ),
//                     ),
//                     padding: time == 3
//                         ? const EdgeInsets.all(5.0)
//                         : const EdgeInsets.all(0),
//                     decoration: time == 3
//                         ? BoxDecoration(
//                             border: Border.all(
//                               color: Colors.green,
//                             ),
//                             borderRadius: BorderRadius.all(Radius.circular(myW / 27.4)))
//                         : BoxDecoration(
//                             border: Border.all(color: Colors.white)),
//                   ),
//                   SizedBox(width: myW / 82),
//                   Container(
//                     child: Flexible(
//                       child: FittedBox(
//                         fit: BoxFit.contain,
//                         child: Text('20:42',
//                             style: TextStyle(
//                                 fontSize: myW / 25,
//                                 color:
//                                     time == 4 ? Colors.green : Colors.black)),
//                       ),
//                     ),
//                     padding: time == 4
//                         ? const EdgeInsets.all(5.0)
//                         : const EdgeInsets.all(0),
//                     decoration: time == 4
//                         ? BoxDecoration(
//                             border: Border.all(
//                               color: Colors.green,
//                             ),
//                             borderRadius: BorderRadius.all(Radius.circular(myW / 27.4)))
//                         : BoxDecoration(
//                             border: Border.all(color: Colors.white)),
//                   ),
//                   SizedBox(width: myW / 82),
//                   Container(
//                     child: Flexible(
//                       child: FittedBox(
//                         fit: BoxFit.contain,
//                         child: Text('22:52',
//                             style: TextStyle(
//                                 fontSize: myW / 25,
//                                 color:
//                                     time == 5 ? Colors.green : Colors.black)),
//                       ),
//                     ),
//                     padding: time == 5
//                         ? const EdgeInsets.all(5.0)
//                         : const EdgeInsets.all(0),
//                     decoration: time == 5
//                         ? BoxDecoration(
//                             border: Border.all(
//                               color: Colors.green,
//                             ),
//                             borderRadius: BorderRadius.all(Radius.circular(myW / 27.4)))
//                         : BoxDecoration(
//                             border: Border.all(color: Colors.white)),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           //Icon(Icons.add_alert),
//           Expanded(
//             flex: 2,
//             child: Flexible(
//               child: Container(
//                 //color: Colors.green,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   //crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       width: 1.0,
//                       height: 1.0,
//                     ),
//                     Container(
//                       width: myW / 16.44,
//                       height: myW / 16.44,
//                       child: Image.asset('images/col.png'),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//     //SizedBox(height: 5.0),
//   ],
// );
