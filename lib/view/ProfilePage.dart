import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}


class _ProfilePageState extends State<ProfilePage> {
  bool isTapped = false;


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:  Color(0xcc5ac18e),
          leading: TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Icon(Icons.arrow_left, color: Colors.white,),),
          title: Center(child: Text("Profile Page")),

        ),
        body: Container(
          //color:  Color(0xcc5ac18e),

          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 1,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.45,

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR26rd8sLFJdPnEcttEbwEWG0BAPbPHABxuaQ&usqp=CAU"),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                    Container(
                      height: MediaQuery.of(context).size.height*0.05,
                      width: MediaQuery.of(context).size.width*0.66,
                      decoration: BoxDecoration(
                        color:  Color(0xcc5ac18e),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Color(0xcc5ac18e)),
                      ),
                      child: Center(child: Text("Sultan", style: TextStyle(fontSize: 20),)),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                    Container(
                      height: MediaQuery.of(context).size.height*0.05,
                      width: MediaQuery.of(context).size.width*0.66,
                      decoration: BoxDecoration(
                        color:  Color(0xcc5ac18e),

                        borderRadius: BorderRadius.circular(5),

                        border: Border.all(width: 1, color: Color(0xcc5ac18e),),

                      ),
                      child: Center(child: Text("Sarıbaş",style: TextStyle(fontSize: 20),)),
                    ),


                  ],),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              Expanded(
                child: Container(
                  // height: 200,
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 4,
                    children: [
                      for(int i=0; i<5; i++) // give the length of array
                        SDG_Card(isTapped: isTapped),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
class SDG_Card extends StatefulWidget {
  bool isTapped = false ;

  SDG_Card({required isTapped});

  @override
  SDG_Card_State createState() => SDG_Card_State();
}

class SDG_Card_State extends State<SDG_Card> {
  @override
  Widget build(BuildContext context) {
    return    GestureDetector(
      onTap: (){
        setState(() {
          if(widget.isTapped == false){
            widget.isTapped  = true;
          }
          else {
            widget.isTapped  = false;
          }
        });
      },
      child: Card(
        child: Stack(children: [
          Container(

              child: Image.network("https://sika.scene7.com/is/image/sika/glo-sdg-6?wid=466",)
          ),
          widget.isTapped? Center(child: Container(
              child: Icon(Icons.add_task, size: 50, color:  Colors.green,)
          )): Container(),
        ],),

      ),
    );
  }
}