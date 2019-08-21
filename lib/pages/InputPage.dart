import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  final String title;

  InputPage({Key key, this.title}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int _counter = 0;

  // Globaler Schluessel für das Formular
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  // Formularfelder
  String _vorname;
  String _nachname;
  DateTime _geburtstag;
  String _handynummer;
  String _email;

  String _strasse;
  String _hausnummer;
  String _ort;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _showSnack = (message) =>
        _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(message)));

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    hintText: "Vorname",
                    labelText: "Vorname *",
                    icon: Icon(Icons.person),
                  ),
                  onSaved: (value) {
                    this._vorname = value;
                  },
                  validator: _validateVorname,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    hintText: "Nachname",
                    labelText: "Nachname *",
                    icon: Icon(Icons.person),
                  ),
                  onSaved: (value) {
                    this._nachname = value;
                  },
                  validator: _validateNachname,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 200,
                      child: TextFormField(
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          filled: true,
                          hintText: "Geburtstag",
                          labelText: "Geburtstag *",
                          icon: Icon(Icons.cake),
                        ),
                        onSaved: (value) {
                          //this._geburtstag = value;
                        },
                        validator: _validateGeburtstag,
                      ),
                    ),
                    RaisedButton(
                      child: Text("4"),
                      onPressed: () {
                        showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2019),
                                lastDate: DateTime(2020))
                            .then<DateTime>((DateTime value) {});
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    hintText: "Email",
                    labelText: "Email *",
                    icon: Icon(Icons.email),
                  ),
                  onSaved: (value) {
                    this._email = value;
                  },
                  validator: _validateEmail,
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                    child: Text("Speichern"),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _showSnack("jippieh!");
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _validateVorname(String value) {
    if (value.isEmpty) return "Bitte gib den Vornamen ein";
    // TODO Vorname Regex Check
  }

  String _validateNachname(String value) {
    if (value.isEmpty) return "Bitte gib den Nachnamen ein";
    // TODO Nachname Regex Check
  }

  String _validateEmail(String value) {
    if (value.isEmpty) return "Bitte gib die Email ein";
    // TODO Email Regex Check
  }

  String _validateGeburtstag(String value) {
    if (value.isEmpty) return "Bitte wähle den Geburtsag aus ein";
    // TODO Geburtstag Regex Check
  }
}
