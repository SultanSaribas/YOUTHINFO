import 'package:flutter/material.dart';

class WorkersExchange extends StatelessWidget {
  const WorkersExchange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gençlik Çalışan Değişimi'),
        backgroundColor: Colors.black54,
      ),
      backgroundColor: Color(0xcc5ac18e),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            children: [
              Text(
                'Gençlik Eğitim Kursları (Gençlik Çalışanlarının Hareketliliği):',
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
                'Gençlik çalışanlarının hareketliliği, gençlik çalışmalarında ve kuruluşlarında aktif kişilerin eğitimini, özellikle deneyimlerin, uzmanlığın ve aralarında iyi uygulamaların yanı sıra uzun süreli kalite projeleri ile ortaklıklar ve ağların oluşmasını sağlayacak faaliyetlerin değişimini destekler. Eğitim kursları ortalama bir haftalık süreçlerdir.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                'Katılımcılar için her hangi bir yaş şartı bulunmamaktadır.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                'Katılımcı gençlerin proje süresince seyahat masrafları, vize ve vize ile ilgili masrafları, yeme-içme, konaklama, proje masrafları Ulusal Ajanslar tarafından verilen hibeler ile ev sahibi kurumlar tarafından karşılanır. Sigorta ve şahsi masraflar katılımcılar tarafından karşılanır. Bazı durumlarda katılımcıların eş-finansmanı ile proje katkısı beklenebilir.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
