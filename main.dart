import 'package:flutter/material.dart';

void main() {
  runApp(GetirAppBarClone());
}

class GetirAppBarClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Getir App Bar Clone',
      home: MyHomePage(title: 'getirClone'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 41, 98, 255),
        title: Center(child: Text(widget.title)),
      ),
      body: Stack(
        children: [
          Container(
            height: 60.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.only(right:10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'TVS\n',
                        style: TextStyle(
                            color: Color.fromARGB(255, 41, 98, 255), fontSize: 14, fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(text: '10',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 41, 98, 255), fontSize: 20, fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(text: 'dk',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 41, 98, 255), fontSize: 14, fontWeight: FontWeight.bold),
                                      )
                                    ]
                              )
                          ]
                    ),
                  )],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    bottomRight: Radius.circular( 40.0)
                )
            ),
            height: 60.0,
            width: MediaQuery.of(context).size.width - 60,
            child:
            Row(
              children: [
              Icon(Icons.home, size: 22.0),
              SizedBox(width:10.0),
                  Text(
                    "Ev",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
                  ),
                  SizedBox(width:5.0),
                  Expanded(
                    child: Container(
                      width: 200.0,
                    child: 
                    Text(
                      "Tanburi Ali Efendi Sk. Etiler Mahallesi Daire 3",
                      maxLines: 1,
                      overflow:TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      softWrap: false,
                    ),
                    ),
                  ),
                  IconButton(icon: Icon(Icons.keyboard_arrow_right, size:28.0, color: Color.fromARGB(255, 41, 98, 255),), onPressed: null)
            ],)
          ),
        ],
      )
    );
  }
}
