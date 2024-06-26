import 'dart:convert';
import 'package:flutter/cupertino.dart';

class TelBibleHelper {
  late Map bibleData;

  Future<void> readtelBible(BuildContext context) async {
    String data =
        await DefaultAssetBundle.of(context).loadString("assets/bible.json");
    bibleData = jsonDecode(data);
    debugPrint('Got Bible Data...');
    // print(jsonResult['Book'].length);
    // print(bibleData['Book'][0]['Chapter'][0]['Verse'].length);
  }

  // int getChapterLen(Map data){
  //  return bibleData['Book'][bookIndex]['Chapter'].length;
  // }

  String getBookByIndex(int index) {
    List<String> telugu = getBooks();
    return index < telugu.length ? telugu[index] : '';
  }

  List<String> getBooks() {
    return [
      'ఆదికాండము',
      'నిర్గమకాండము',
      'లేవీయకాండము',
      'సంఖ్యాకాండము',
      'ద్వితీయోపదేశకాండమ',
      'యెహొషువ',
      'న్యాయాధిపతులు',
      'రూతు',
      'సమూయేలు మొదటి గ్రంథము',
      'సమూయేలు రెండవ గ్రంథము',
      'రాజులు మొదటి గ్రంథము',
      'రాజులు రెండవ గ్రంథము',
      'దినవృత్తాంతములు మొదటి గ్రంథము',
      'దినవృత్తాంతములు రెండవ గ్రంథము',
      'ఎజ్రా',
      'నెహెమ్యా',
      'ఎస్తేరు',
      'యోబు గ్రంథము',
      'కీర్తనల గ్రంథము',
      'సామెతలు',
      'ప్రసంగి',
      'పరమగీతము',
      'యెషయా గ్రంథము',
      'యిర్మీయా',
      'విలాపవాక్యములు',
      'యెహెజ్కేలు',
      'దానియేలు',
      'హొషేయ',
      'యోవేలు',
      'ఆమోసు',
      'ఓబద్యా',
      'యోనా',
      'మీకా',
      'నహూము',
      'హబక్కూకు',
      'జెఫన్యా',
      'హగ్గయి',
      'జెకర్యా',
      'మలాకీ',
      'మత్తయి సువార్త',
      'మార్కు సువార్త',
      'లూకా సువార్త',
      'యోహాను సువార్త',
      'అపొస్తలుల కార్యములు',
      'రోమీయులకు',
      '1 కొరింథీయులకు',
      '2 కొరింథీయులకు',
      'గలతీయులకు',
      'ఎఫెసీయులకు',
      'ఫిలిప్పీయులకు',
      'కొలొస్సయులకు',
      '1 థెస్సలొనీకయులకు',
      '2 థెస్సలొనీకయులకు',
      '1 తిమోతికి',
      '2 తిమోతికి',
      'తీతుకు',
      'ఫిలేమోనుకు',
      'హెబ్రీయులకు',
      'యాకోబు',
      '1 పేతురు',
      '2 పేతురు',
      '1 యోహాను',
      '2 యోహాను',
      '3 యోహాను',
      'యూదా',
      'ప్రకటన గ్రంథము'
    ];
  }
}
