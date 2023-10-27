import 'package:flutter/material.dart';

class KayitSayfa extends StatefulWidget {
  const KayitSayfa({super.key});

  @override
  State<KayitSayfa> createState() => _KayitSayfaState();
}

class _KayitSayfaState extends State<KayitSayfa> {
  var tfKisiadi = TextEditingController();
  var tfKisiTel = TextEditingController();

  Future<void> kaydet(String kisi_ad,String kisi_tel) async {
    print("Kişi Kaydet : $kisi_ad - $tfKisiTel");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kişi Kayıt"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 58.0,right: 50),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             TextField(controller: tfKisiadi,decoration: const InputDecoration(hintText: "Kişi Ad"),),
              TextField(controller: tfKisiTel,decoration: const InputDecoration(hintText: "Kişi Tel"),),
              ElevatedButton(onPressed: (){
                 kaydet(tfKisiadi.text, tfKisiTel.text);

              }, child: const Text("Kaydet"))
            ],
          ),
        ),
      ),

    );
  }
}
