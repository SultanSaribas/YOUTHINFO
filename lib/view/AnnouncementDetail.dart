import 'package:flutter/material.dart';

class AnnouncementDetail extends StatefulWidget {
  const AnnouncementDetail({Key? key}) : super(key: key);

  @override
  _AnnouncementDetailState createState() => _AnnouncementDetailState();
}

class _AnnouncementDetailState extends State<AnnouncementDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        leading: TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Icon(Icons.arrow_left, color: Colors.white,),),
        title: Center(child: Text("Duyuru")),
        actions: [TextButton(onPressed: (){}, child: Icon(Icons.arrow_left, color: Colors.transparent,),),],
      ),
      body: ListView(children: [
        Container(
          color: Color(0xcc5ac18e),
          height: MediaQuery.of(context).size.height*0.25,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue,),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.network("http://www.yereldeab.org.tr/Portals/0/EasyDNNnews/1179/EURODESK.jpg"),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text("Eurodesk Türkiye", style: TextStyle(fontSize: 20), maxLines: 1,),),
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: Text("24 - 30 Mayıs 2021 tarihleri arasında Eurodesk Türkiye temas noktaları olarak Avrupa Gençlik Haftası kapsamında yapılacak etkinliklerden biriside kurumumuz tarafından gerçekleştirilecektir.28 Mayıs 2021 tarihi Saat: 11.00'da zoom üzerinden yapılması planlanan etkinliğimizin konusu ESC (Avrupa Dayanışma Programı) ve Erasmus+ Programları olacaktır.", style: TextStyle(fontSize: 18),)
        )
      ],),
    );
  }
}