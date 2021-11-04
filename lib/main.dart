import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Tune());
}

class Tune extends StatelessWidget {
  Expanded CreateNote(Color bg, var note, var nameNote) {
    final player = AudioCache(prefix: 'assets/notes/');

    return Expanded(
      child: FlatButton(
        color: bg,
        child: Text(nameNote),
        onPressed: () {
          player.play("$note.wav");
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CreateNote(Colors.red, "c", "Dó"),
              CreateNote(Colors.orange, "d", "Ré"),
              CreateNote(Colors.yellow, "e", "Mi"),
              CreateNote(Colors.green, "f", "Fa"),
              CreateNote(Colors.teal, "g", "Sol"),
              CreateNote(Colors.blue, "a", "Lá"),
              CreateNote(Colors.purple, "b", "Si"),
            ],
          ),
        ),
      ),
    );
  }
}
