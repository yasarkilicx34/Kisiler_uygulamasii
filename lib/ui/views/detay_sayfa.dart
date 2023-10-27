import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/data/entitiy/kisiler.dart';

class DetaySayfa extends StatefulWidget {
Kisiler kisi;

DetaySayfa({required this.kisi});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  var tfKisiadi = TextEditingController();
  var tfKisiTel = TextEditingController();

  Future<void> guncelle(int kisi_id,String kisi_ad,String kisi_tel) async {
    print("Kişi Güncelle :$kisi_id - $kisi_ad - $tfKisiTel");

  }

  @override
  void initState() {
    super.initState();
    var kisi = widget.kisi;
    tfKisiadi.text = kisi.kisi_ad;
    tfKisiTel.text = kisi.kisi_tel;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detay Sayfa"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 58.0,right: 50),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tfKisiadi,decoration: const InputDecoration(hintText: "Kişi Ad"),),
              TextField(controller: tfKisiTel,decoration: const InputDecoration(hintText: "Kişi Tel"),),
              ElevatedButton(onPressed: (){
               
                guncelle(widget.kisi.kisi_id, tfKisiadi.text, tfKisiTel.text);

              }, child: const Text("Güncelle"))
            ],
          ),
        ),
      ),

    );
  }
}



