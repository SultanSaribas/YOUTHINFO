import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SDGPanel extends StatefulWidget {
  const SDGPanel(
      {Key? key,

        required this.url,
        required this.title,
        required this.color,
        required this.onPressed})
      : super(key: key);

  final String title;
  final VoidCallback onPressed;
  final String url;
  final int color;
  @override
  _SDGPanelState createState() => _SDGPanelState();
}


class _SDGPanelState extends State<SDGPanel> {
  @override
  Widget build(BuildContext context) {

    return  Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        /*   color: Colors.deepPurple.shade700,*/
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 10,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35.0),
              side: BorderSide(color: Color(widget.color))
          ),
          color: Color(widget.color),
          child: Image.network(widget.url,
            alignment: Alignment.center,
          ),

          /*  Text(widget.title,
            textAlign: TextAlign.center,
            style: GoogleFonts.zillaSlab(
              textStyle: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),*/
          onPressed: widget.onPressed
      ),
    );

  }
}