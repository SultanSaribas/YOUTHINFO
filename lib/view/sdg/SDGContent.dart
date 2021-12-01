import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youth_info/view/sdg/SDG.dart';


class SDGContent extends StatefulWidget {
  String title;
  String title2;
  String manifest;
  String content;
  int color;
  //Sdg sdg;


  SDGContent({
    required this.color,
    required this.title,
    required this.title2,
    required this.manifest,
    required this.content,
    //required this.sdg;

});

  @override
  _SDGContentState createState() => _SDGContentState();
}

class _SDGContentState extends State<SDGContent> {
  bool isButtonPressed = false;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        debugShowCheckedModeBanner: false,
        title: 'YOUTHINFO',
        theme: ThemeData(
        //  accentColor: Colors.orangeAccent,
        ),
        home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(widget.color),
        title: Text('YOUTHINFO'),
    ),
          body: SafeArea(
            child: Center(
              child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
                    child: Text(widget.title,
                textAlign: TextAlign.center,
                style: GoogleFonts.zillaSlab(
                    textStyle: TextStyle(
                      fontSize: 25,
                      color: Color(widget.color),
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    ),
                  ),
                  ElevatedButton(onPressed: () async {

                    setState(() {
                      isButtonPressed = !isButtonPressed;
                    });
                  },
                    style: isButtonPressed ? ElevatedButton.styleFrom(
                      onPrimary: Color(widget.color),
                      primary: Color(widget.color),
                    ) :
                    ElevatedButton.styleFrom(
                      primary: Color(widget.color),
                      onPrimary: Color(widget.color),
                    ),
                        child: isButtonPressed ? Text(
                            "Following",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            )
                        ) :
                        Text(
                            "Follow",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            )
                        )
                  ),
                    /*  style: TextButton.styleFrom(
                        alignment: Alignment.center,
                        backgroundColor: Color(widget.color)
                      ),
                      child: const Text('Follow',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                      ),)*/
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
                    child: Text(widget.manifest,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.zillaSlab(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Color(widget.color),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
                    child: Text(widget.content,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.zillaSlab(
                        textStyle: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],

              ),
              ),
            ),
          ),
    ),
    );
  }
}
