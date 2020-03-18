import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tela de Login",
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FormBuilder(
            key: _fbKey,
            child: Column(
              children: <Widget>[
                FormBuilderTextField(
                  attribute: 'Usario',
                  decoration: InputDecoration(labelText: "Usário:"),
                  validators: [FormBuilderValidators.required()],
                ),
                FormBuilderTextField(
                  attribute: 'Password',
                  decoration: InputDecoration(labelText: "Senha:"),
                  obscureText: true,
                  validators: [FormBuilderValidators.required()],
                ),
                Row(
                  children: <Widget>[
                    MaterialButton(
                        child: Text("Entrar"),
                        onPressed: () {
                          if (_fbKey.currentState.saveAndValidate()) {
                            print(_fbKey.currentState.value);
                          }
                        })
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
