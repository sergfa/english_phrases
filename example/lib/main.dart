import 'package:english_phrases/english_phrases.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final phrases = PhraseProvider.all;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(
        phrases: phrases,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Phrase> phrases;
  MyHomePage({this.phrases});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('english_phrases Demo Home Page'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: phrases.length,
            itemBuilder: (context, i) {
              final item = phrases[i];
              return Card(
                child: ListTile(
                  title: Text(item.categories[0].name),
                  subtitle: Text(item.text),
                ),
              );
            }),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
