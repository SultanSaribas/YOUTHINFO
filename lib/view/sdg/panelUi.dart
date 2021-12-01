import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:youth_info/view/sdg/SDG.dart';
import 'package:youth_info/view/sdg/SDGContent.dart';
import 'package:youth_info/view/sdg/SDGPanel.dart';
import 'package:youth_info/viewmodel/FirebaseFunctions.dart';
import 'package:youth_info/data.dart';

String title_1=" ";
String title_2=" ";
String manifest=" ";
int hexcode= 0;

Data data = new Data();

var SDG1 = new Sdg(data.Sdg1Title, data.Sdg1Title2, data.Sdg1Manifest, hexcode=0xFFE5243B, data.Sdg1Content);
var SDG2 = new Sdg(data.Sdg2Title, data.Sdg2Title2, data.Sdg2Manifest, hexcode=0xFFDDA63A,data.Sdg2Content);
var SDG3 = new Sdg(data.Sdg3Title, data.Sdg3Title2, data.Sdg3Manifest, hexcode=0xFF4C9F38,data.Sdg3Content);
var SDG4 = new Sdg(data.Sdg4Title, data.Sdg4Title2, data.Sdg4Manifest, hexcode=0xFFC5192D,data.Sdg4Content);
var SDG5 = new Sdg(data.Sdg5Title, data.Sdg5Title2, data.Sdg5Manifest, hexcode=0xFFFF3A21,data.Sdg5Content);
var SDG6 = new Sdg(data.Sdg6Title, data.Sdg6Title2, data.Sdg6Manifest, hexcode=0xFF26BDE2,data.Sdg6Content);
var SDG7 = new Sdg(data.Sdg7Title, data.Sdg7Title2, data.Sdg7Manifest, hexcode=0xFFFCC30B,data.Sdg7Content);
var SDG8 = new Sdg(data.Sdg8Title, data.Sdg8Title2, data.Sdg8Manifest, hexcode=0xFFA21942,data.Sdg8Content);
var SDG9 = new Sdg(data.Sdg9Title, data.Sdg9Title2, data.Sdg9Manifest, hexcode=0xFFFD6925,data.Sdg9Content);
var SDG10 = new Sdg(data.Sdg10Title, data.Sdg10Title2, data.Sdg10Manifest, hexcode=0xFFDD1367,data.Sdg10Content);
var SDG11 = new Sdg(data.Sdg11Title, data.Sdg11Title2, data.Sdg11Manifest, hexcode=0xFFFD9D24,data.Sdg11Content);
var SDG12 = new Sdg(data.Sdg12Title, data.Sdg12Title2, data.Sdg12Manifest, hexcode=0xFFBF8B2E,data.Sdg12Content);
var SDG13 = new Sdg(data.Sdg13Title, data.Sdg13Title2, data.Sdg13Manifest, hexcode=0xFF3F7E44,data.Sdg13Content);
var SDG14 = new Sdg(data.Sdg14Title, data.Sdg14Title2, data.Sdg14Manifest, hexcode=0xFF0A97D9,data.Sdg14Content);
var SDG15 = new Sdg(data.Sdg15Title, data.Sdg15Title2, data.Sdg15Manifest, hexcode=0xFF56C02B,data.Sdg15Content);
var SDG16 = new Sdg(data.Sdg16Title, data.Sdg16Title2, data.Sdg16Manifest, hexcode=0xFF00689D,data.Sdg16Content);
var SDG17 = new Sdg(data.Sdg17Title, data.Sdg17Title2, data.Sdg17Manifest,hexcode=0xFF19486A,data.Sdg17Content);

class PanelUi extends StatefulWidget {

  @override
  _PanelUiState createState() => _PanelUiState();
}

class _PanelUiState extends State<PanelUi> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YOUTHINFO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //  accentColor: Colors.orangeAccent,
      ),

      home: Scaffold(
        appBar: AppBar(
          backgroundColor:  Color(0xcc5ac18e),

          title: Text('YOUTHINFO'),
        ),
        body: Container(
            color: Color(0x6ec6ff),
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
              crossAxisCount: 2,

              children: <Widget>[
                SDGPanel(url: data.Sdg1Url, title: "SDG1", onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SDGContent(title: "SDG1",color: SDG1.hexcode, manifest: data.Sdg1Manifest, title2: data.Sdg1Title2, content: data.Sdg1Content )
                  ),
                  );
                }, color: SDG1.hexcode),
                SDGPanel(url: data.Sdg2Url, title: "SDG2", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SDGContent(title: "SDG2", color: SDG2.hexcode, manifest: data.Sdg2Manifest, title2: data.Sdg2Title2, content: data.Sdg2Content)
                ),
                );}, color: SDG2.hexcode),
                SDGPanel(url: data.Sdg3Url, title: "SDG3", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SDGContent(title: "SDG3", color: SDG3.hexcode, manifest: data.Sdg3Manifest, title2: data.Sdg3Title2, content: data.Sdg3Content)
                ),
                );}, color: SDG3.hexcode),
                SDGPanel(url: data.Sdg4Url, title: "SDG4", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SDGContent(title: "SDG4", color: SDG4.hexcode, manifest: data.Sdg4Manifest, title2: data.Sdg4Title2, content: data.Sdg4Content)
                ),
                );}, color: SDG4.hexcode),
                SDGPanel(url: data.Sdg5Url,title: "SDG5", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SDGContent(title: "SDG5", color: SDG5.hexcode, manifest: data.Sdg5Manifest, title2: data.Sdg5Title2, content: data.Sdg5Content)
                ),
                );}, color: SDG5.hexcode),
                SDGPanel(url: data.Sdg6Url,title: "SDG6", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SDGContent(title: "SDG6", color: SDG6.hexcode, manifest: data.Sdg6Manifest, title2: data.Sdg6Title2, content: data.Sdg6Content)
                ),
                );}, color: SDG6.hexcode),
                SDGPanel(url: data.Sdg7Url,title: "SDG7", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SDGContent(title: "SDG7", color: SDG7.hexcode, manifest: data.Sdg7Manifest, title2: data.Sdg7Title2, content: data.Sdg7Content)
                ),
                );}, color: SDG7.hexcode),
                SDGPanel(url: data.Sdg8Url,title: "SDG8", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SDGContent(title: "SDG8", color: SDG8.hexcode, manifest: data.Sdg8Manifest, title2: data.Sdg8Title2, content: data.Sdg8Content)
                ),
                );}, color: SDG8.hexcode),
                SDGPanel(url: data.Sdg9Url,title: "SDG9", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SDGContent(title: "SDG9", color: SDG9.hexcode, manifest: data.Sdg9Manifest, title2: data.Sdg9Title2, content: data.Sdg9Content)
                ),
                );}, color: SDG9.hexcode),
                SDGPanel(url: data.Sdg10Url,title: "SDG10", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SDGContent(title: "SDG10", color: SDG10.hexcode, manifest: data.Sdg10Manifest, title2: data.Sdg10Title2, content: data.Sdg10Content)
                ),
                );}, color: SDG10.hexcode),
                SDGPanel(url: data.Sdg11Url,title: "SDG11", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SDGContent(title: "SDG11", color: SDG11.hexcode, manifest: data.Sdg11Manifest, title2: data.Sdg11Title2, content: data.Sdg11Content)
                ),
                );}, color: SDG11.hexcode),
                SDGPanel(url: data.Sdg12Url,title: "SDG12", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SDGContent(title: "SDG12", color: SDG12.hexcode, manifest: data.Sdg12Manifest, title2: data.Sdg12Title2, content: data.Sdg12Content)
                ),
                );}, color: SDG12.hexcode),
                SDGPanel(url: data.Sdg13Url,title: "SDG13", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SDGContent(title: "SDG13", color: SDG13.hexcode, manifest: data.Sdg13Manifest, title2: data.Sdg13Title2, content: data.Sdg13Content)
                ),
                );}, color: SDG13.hexcode),
                SDGPanel(url: data.Sdg14Url,title: "SDG14", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SDGContent(title: "SDG14", color: SDG14.hexcode, manifest: data.Sdg14Manifest, title2: data.Sdg14Title2, content: data.Sdg14Content)
                ),
                );}, color: SDG14.hexcode),
                SDGPanel(url: data.Sdg15Url,title: "SDG15", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SDGContent(title: "SDG15", color: SDG15.hexcode, manifest: data.Sdg15Manifest, title2: data.Sdg15Title2, content: data.Sdg15Content)
                ),
                );}, color: SDG15.hexcode),
                SDGPanel(url: data.Sdg16Url,title: "SDG16", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SDGContent(title: "SDG16", color: SDG16.hexcode, manifest: data.Sdg16Manifest, title2: data.Sdg16Title2, content: data.Sdg16Content)
                ),
                );}, color: SDG16.hexcode),
                SDGPanel(url: data.Sdg17Url,title: "SDG17", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SDGContent(title: "SDG17", color: SDG17.hexcode, manifest: data.Sdg17Manifest, title2: data.Sdg17Title2, content: data.Sdg17Content)
                ),
                );}, color: SDG17.hexcode),


              ],
            )
        ),
      ),
    );
  }


}
