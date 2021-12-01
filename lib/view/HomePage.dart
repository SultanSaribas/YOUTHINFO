import 'package:flutter/material.dart';
import 'package:youth_info/view/AnnouncementDetail.dart';
import 'package:youth_info/view/LoginScreen.dart';
import 'package:youth_info/view/europe_subhomepage.dart';
import 'package:youth_info/view/sdg/panelUi.dart';
import 'package:youth_info/viewmodel/FirebaseFunctions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Functions function = Functions();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xcc5ac18e),
          title: Center(child: Text("YouthInfo")),
          actions: [
            TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.person,
                  color: Colors.transparent,
                ))
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    UserAccountsDrawerHeader(
                      accountName: Text('Sultan Sarıbaş'),
                      accountEmail: Text('sultan.sarıbas@agu.edu.tr'),
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Text(
                          'S',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text("SDG"),
                      onTap: () => Navigator.of(context).push(
                          new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  new PanelUi())),
                    ),
                    ListTile(
                      title: const Text(
                        'Avrupa Fırsatları',
                      ),
                      onTap: () => Navigator.of(context).push(
                          new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  new EuropeSubHome())),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: const Text(
                    'Logout',
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {
                    function.signOut().then((value) {
                      return Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 8),
              child: Center(
                  child: Text(
                "Duyurular",
                style: TextStyle(fontSize: 25),
              )),
            ),
            Expanded(
              child: ListView(
                children: [
                  for (int i = 0; i < 15; i++)
                    AnnouncementCard(
                        "Bu hafta sonu gerçekleşek etkinlik hakkında bilgi almak için tıkla"),
                  Container(
                    height: 70,
                  )
                ],
              ),
            ),
          ],
        ),
        //bottomNavigationBar: BottomBar(),
      ),
    );
  }
}

class AnnouncementCard extends StatefulWidget {
  String text;
  AnnouncementCard(this.text);

  @override
  _AnnouncementCardState createState() => _AnnouncementCardState();
}

class _AnnouncementCardState extends State<AnnouncementCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AnnouncementDetail()),
        );
      },
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 5),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications,
                color: Colors.blue,
              ),
            ),
            Expanded(
                child: Container(
                    child: Text(
              widget.text,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ))),
          ],
        ),
      ),
    );
  }
}
