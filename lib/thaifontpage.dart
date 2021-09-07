import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class thaifont extends StatefulWidget {
  const thaifont({Key? key}) : super(key: key);

  @override
  _thaifontState createState() => _thaifontState();
}

class _thaifontState extends State<thaifont> {
  var font = GoogleFonts.chonburi(fontSize: 60.0,color: Colors.yellow);
  String currentfont = "Sarabun";
  List<String> allfont = ["Prompt","Kanit","Mitr","Taviraj","Mali","Pridi","Sriracha","Itim","Krub","Trirong"];

  Widget _button(fontname) {
    return

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {
        setState(() {
          currentfont = fontname;
        });
      },
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
          padding: EdgeInsets.symmetric(
              horizontal: 30.0, vertical: 10.0),
        ),
        child: Text(
          fontname, style: TextStyle(fontSize: 14.0, color: Colors.white),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('Thai Font Viewer'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Center(child: Text('อยากกินชาบู',style: GoogleFonts.getFont(currentfont,fontSize: 70.0),))),
            Text("Font: ,"+currentfont,style: TextStyle(fontSize: 15.0),),
            Card(
              child: Wrap(
                  alignment: WrapAlignment.center,
                  children: allfont.map((e) => _button(e)).toList()
              ),
            )
          ],
        ),
      ),
    );
  }
}
