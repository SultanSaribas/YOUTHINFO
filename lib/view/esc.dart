import 'package:flutter/material.dart';

class ESC extends StatelessWidget {
  const ESC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avrupa Gönüllülük Birlikleri'),
        backgroundColor: Colors.black54,
      ),
      backgroundColor:Color(0xcc5ac18e),
      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            children: [
              Text(
                'Avrupa Gönüllülük Birlikleri (ESC)',
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
                'Katılımcıların 18-30 yaş arası olması beklenir. Katılımcıların oturma izni olması önemli, vatandaşlık şart değil. Kısa dönem faaliyete gitmiş bir kişi 12 aylık bir projeye daha katılabilir. Katılımcıların toplamda 14 ayı geçmeme şartı vardır.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                'Katılımcı gençlerin temel ihtiyaçları ve seyahat masrafları karşılanır, cep harçlığı, vize konsolosluk masrafları, Covid testleri ödenir. (Cep harçlığı ülkeden ülkeye değişim gösterir.)',
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
