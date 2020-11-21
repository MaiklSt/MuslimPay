import 'package:flutter/material.dart';
import 'package:muslim_pay/widget_futter.dart';
import 'data.dart';

class Askary extends StatelessWidget {
  final String id;
  Askary(this.id);

  @override
  Widget build(BuildContext context) {
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
                      itemCount: dua,
                      
                      itemBuilder: (BuildContext context, int position) {
                        int s = position;
                        print(s);
                        print(position);

                        return new ListTile(
                          
                          contentPadding: EdgeInsets.zero,
                          title: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Утренний азкар №${s + 1} ',
                                        style: TextStyle(fontSize: 20.0)),
                                    Text(''),
                                    Image.asset('images/askarArab_$s.png'),
                                    Text(''),
                                    Text(data('rus', position)),
                                    Text(''),
                                    Text(data('translit', position), style: TextStyle(fontStyle: FontStyle.italic)),
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
