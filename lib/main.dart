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
          Flexible(

            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FormBuilder(
                    key: _fbKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FormBuilderTextField(
                          attribute: 'Usuario',
                          decoration: InputDecoration(labelText: "Usário:"),
                        ),
                        FormBuilderTextField(
                          attribute: 'Password',
                          decoration: InputDecoration(labelText: "Senha:"),
                          ///obscureText:true,
                        ),
                        Row(
                          children: <Widget>[
                            MaterialButton(
                                child: Text("Entrar"),
                                textColor: Colors.white,
                                color: Colors.blue,

                                )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
