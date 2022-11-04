import 'package:ekhtbar_app/qustion.dart';

class AppBrain{
  int _qustionNum = 0;
  List<Qustion> _qustionGroup=[
    Qustion(
        q: "عدد الكواكب الشمسية هو ثمانية كواكب",
        i:"images/image-1.jpg",
        a: true
    ),
    Qustion(
        q:"القطط هي حيوانات أليفة",
        i:"images/image-2.jpg",
        a: true
    ),
    Qustion(
        q:"الصين موجودة في القارة الافريقية",
        i:"images/image-3.jpg",
        a: false
    ),
    Qustion(
        q:"الأرض مسطحة وليست كروية",
        i:"images/image-4.jpg",
        a: false
    ),
    Qustion(
        q:"باستطاعة الانسان البقاء على قيد الحياة من دون أكل اللحوم",
        i:"images/image-5.jpg",
        a: true,
    ),
    Qustion(
        q:"الشمس تدور حول الأرض والأرض تدور حول القمر",
        i:"images/image-6.jpg",
        a: false
    )
  ];

  String getQustionText (){
    return _qustionGroup[_qustionNum].qustionText;
  }
String getQustionImage(){
  return _qustionGroup[_qustionNum].qustionImage;
  }
  bool getQustionAnswer(){
    return _qustionGroup[_qustionNum].qustioAnswer;
  }
void nextQustion(){
  if(_qustionNum<_qustionGroup.length-1){
    _qustionNum++;
  }
  }
}