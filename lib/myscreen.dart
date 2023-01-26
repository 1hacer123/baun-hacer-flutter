import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manavuyg/widget/my_box_widget..dart';

import 'SecondScreen.dart';
import 'name.dart';

List<String>nameList=[
  "domates",
  "patlıcan",
  "biber",
  "soğan",
  "patates",
  "marul",
  "havuç",
  "maydanoz",
  "çilek",
  "karnabahr",
  "pırasa",
  "muz",
  "elma",
  "mandalina",
  "portakal",
  "armut",


];
List<String>fiyatList=[
  "19,99",
  "12",
  "15",
  "20",
  "13,45",
  "8,99",
  "10,25",
  "14,45",
  "10",
  "18",
  "16",
  "15",
  "12,99",
  "9,99",
  "17",
  "19"
];
List<String>urlList=[
  "assets/images/domates.png.png",
  "assets/images/patlıcan.png",
  "assets/images/yesilbiber.png",
  "assets/images/sogan.png",
  "assets/images/patates.png",
  "assets/images/marul.png",
  "assets/images/havuc.png",
  "assets/images/maydanoz.png",
  "assets/images/çilek.png",
  "assets/images/karnabahar.png",
  "assets/images/pırasa.png",
  "assets/images/muz.png",
  "assets/images/elma.png",
  "assets/images/mandalina.png",
  "assets/images/portakal.png",
  "assets/images/armut.png",


];
List<String>ozellikList=[
      "Domatesin A ve C vitamini ile potasyum miktarı bakımından zengindir domatesin kalori ve yağ oranının düşüktür ve kolesterol içermez.",
      "Anavatanı Hindistan olan patlıcan, patates ve domatesin de akrabasıdır.",
      "biber, patlıcangillerden bir cins.Amerika kıtasına özgüdür, dünya çapında yetiştirilmektedir.",
      "sebze türüdür. ",
      "Bitkinin toprak altında kalan yumruları patates olarak bilinir.",
          "papatyagiller ailesinden geniş yeşil yapraklı, yıllık veya altı aylık bir ılıman iklim sebzesidir.",
      "Vitamin ve mineral kaynağı olan havuç, potasyum, A vitamini B6 içermektedir. Büyüme ve gelişme çağında tüketilmesi önerilmektedir.",
      "Klorofil içeren maydanoz, anti bakteriyel anti mantar özelliklere sahiptir. mide bulantısına iyi gelir.",
      "çilek üzümsü meyveler grubuna girmektedir. Meyvesi gerçek bir meyve olmayıp çiçek tablasıdır.",
      "turpgillerden , çiçekleri etli ve tanecikli bir görünüşte olan, yaprakları lahana yaprağına benzeyen, sebze olarak kullanılan bir bitki.",
      "bağışıklık sistemi için oldukça önemlidir. Pırasa tüketmek, kronik iltihap riskini azaltmada yardımcı olur.",
  "Güneydoğu Asya'nın tropikal bölgelerinde doğal olarak yetişen bir ağaçsı bitkiye denir.",
      "Elma bol vitamininden dolayı çok sevilen meyvelerden biridir. Vitaminlerden A oldukça fazla miktarlarda bulunur.",
      "ılıman iklimde yetişmekte olan Turunçgiller familyasına ait bir meyve türüdür.",
      "Bir portakal ortalama olarak sadece 85 kalori içerir ve yağ, kolesterol içermez. portakal, C vitamini, A vitamini, içeren kaynaktır",
  "ağaç nitelikli bitki türüdür, bu türlerden bazılarının aynı adlı pomaceous yenilebilir meyvesidir.",

];


class myscreen extends StatelessWidget {
  const myscreen({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: nameList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index){
        return Padding(
        padding:const EdgeInsets.all(8.0),
    child:GestureDetector(
      onTap:(){
        Navigator.push(context, MaterialPageRoute(builder:(context){
          return SecondScreen(productName:ozellikList[index]);
        }));
      },
    child:MyBox(
    productName: nameList[index],
    url: urlList[index],
    price: fiyatList[index],
        )
    ),
        );

    })
    );
  }
}

