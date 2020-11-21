import 'package:flutter/material.dart';
import 'data.dart';
import 'media_dq.dart';


final Widget futter = Column(
  children: [
    //SizedBox(height: 5.0),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: myW / 20.55), // 20
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              //color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      //color: Colors.blue,
                      width: myW / 20,
                      height: myW / 20,
                      child: Image.asset('images/gps.png'),
                    ),
                  ),
                  Container(
                    width: myW / 60,
                    height: myW / 60,
                    //color: Colors.white,
                  ),
                  //Icon(Icons.add_location),
                  Text(
                    'Москва',
                    style: TextStyle(
                        fontSize: myW / 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              //height: 20.0,
              //color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Flexible(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text('7:12',
                            style: TextStyle(
                                fontSize: myW / 25,
                                color:
                                    time == 1 ? Colors.green : Colors.black)),
                      ),
                    ),
                    //margin: const EdgeInsets.all(30.0),
                    padding: time == 1
                        ? const EdgeInsets.all(5.0)
                        : const EdgeInsets.all(0),
                    decoration: time == 1
                        ? BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(myW / 27.4)))
                        : BoxDecoration(
                            border: Border.all(color: Colors.white)),
                  ),
                  SizedBox(width: myW / 82),
                  Container(
                    child: Flexible(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text('12:25',
                            style: TextStyle(
                                fontSize: myW / 25,
                                color:
                                    time == 2 ? Colors.green : Colors.black)),
                      ),
                    ),
                    padding: time == 2
                        ? const EdgeInsets.all(5.0)
                        : const EdgeInsets.all(0),
                    decoration: time == 2
                        ? BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(myW / 27.4)))
                        : BoxDecoration(
                            border: Border.all(color: Colors.white)),
                  ),
                  SizedBox(width: myW / 82),
                  Container(
                    child: Flexible(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text('17:12',
                            style: TextStyle(
                                fontSize: myW / 25,
                                color:
                                    time == 3 ? Colors.green : Colors.black)),
                      ),
                    ),
                    padding: time == 3
                        ? const EdgeInsets.all(5.0)
                        : const EdgeInsets.all(0),
                    decoration: time == 3
                        ? BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(myW / 27.4)))
                        : BoxDecoration(
                            border: Border.all(color: Colors.white)),
                  ),
                  SizedBox(width: myW / 82),
                  Container(
                    child: Flexible(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text('20:42',
                            style: TextStyle(
                                fontSize: myW / 25,
                                color:
                                    time == 4 ? Colors.green : Colors.black)),
                      ),
                    ),
                    padding: time == 4
                        ? const EdgeInsets.all(5.0)
                        : const EdgeInsets.all(0),
                    decoration: time == 4
                        ? BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(myW / 27.4)))
                        : BoxDecoration(
                            border: Border.all(color: Colors.white)),
                  ),
                  SizedBox(width: myW / 82),
                  Container(
                    child: Flexible(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text('22:52',
                            style: TextStyle(
                                fontSize: myW / 25,
                                color:
                                    time == 5 ? Colors.green : Colors.black)),
                      ),
                    ),
                    padding: time == 5
                        ? const EdgeInsets.all(5.0)
                        : const EdgeInsets.all(0),
                    decoration: time == 5
                        ? BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(myW / 27.4)))
                        : BoxDecoration(
                            border: Border.all(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
          //Icon(Icons.add_alert),
          Expanded(
            flex: 2,
            child: Flexible(
              child: Container(
                //color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 1.0,
                      height: 1.0,
                    ),
                    Container(
                      width: myW / 16.44,
                      height: myW / 16.44,
                      child: Image.asset('images/col.png'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    //SizedBox(height: 5.0),
  ],
);
