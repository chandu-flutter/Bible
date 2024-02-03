import 'package:flutter/material.dart';
import 'package:thandri_sannidhi/pages/Bible/English_Bible/bible_helper.dart';
import 'package:thandri_sannidhi/pages/Bible/English_Bible/books.dart';

import 'package:thandri_sannidhi/pages/Bible/Telugu_bible/bible_helper.dart';
import 'package:thandri_sannidhi/pages/Bible/Telugu_bible/books.dart';
import 'package:thandri_sannidhi/pages/home.dart';

class BibleIndex extends StatefulWidget {
  const BibleIndex({super.key});

  @override
  State<BibleIndex> createState() => _BibleIndexState();
}

class _BibleIndexState extends State<BibleIndex> {
  EngBibleHelper enghelper = EngBibleHelper();
  TelBibleHelper telhelper = TelBibleHelper();
  @override
  void initState() {
    super.initState();
    enghelper.readengBible(context);
    telhelper.readtelBible(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        title: const Text('Bible'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TelBooks(telhelper.bibleData)),
                    );
                  },
                  child: Linked(
                    icon: Icons.auto_stories,
                    label1: "Telugu",
                    label2: "Bible",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EngBooks(enghelper.bibleData)),
                    );
                  },
                  child: Linked(
                    icon: Icons.auto_stories,
                    label1: "English",
                    label2: "Bible",
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
