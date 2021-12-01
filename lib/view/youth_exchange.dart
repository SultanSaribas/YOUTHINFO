import 'package:flutter/material.dart';

class YouthExchange extends StatelessWidget {
  const YouthExchange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gençlik Değişimi'),
        backgroundColor: Colors.black54,
      ),
      backgroundColor:  Color(0xcc5ac18e),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: ListView(
              children: [
                Text(
                  'Gençlik Değişimleri',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  'Gençlik Değişimleri, farklı ülkelerden genç gruplarına bir araya gelme ve birbirlerinin kültürleri hakkında öğrenme fırsatı sunar. Gruplar, karşılıklı ilgi duyulan kültürel bir konu etrafında buluşur. Gençler bu program ile yurt dışındaki projelere katılabildikleri gibi yurt içinde de uluslararası projeler yapabiliyorlar. Gençlik değişimleri ortalama bir haftalık süreçlerdir.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  'Katılımcıların 18-25 yaş olması beklenir. İstisnai durumlar ve liderler için yaş şartları değişmektedir.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  'Katılımcı gençlerin proje süresince seyahat masrafları, vize ve vize ile ilgili masrafları, yeme-içme, konaklama, proje masrafları Ulusal Ajanslar tarafından verilen hibeler ile ev sahibi kurumlar tarafından karşılanır. Sigorta ve şahsi masraflar katılımcılar tarafından karşılanır.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
