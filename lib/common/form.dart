import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  static final name = "FormPage";
  static final title = "Form";
  @override
  Widget build(BuildContext context) {}

  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginPageState extends State<FormPage> {
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();

  String userName;

  String password;

  void login() {
    var loginForm = loginKey.currentState;

    if (loginForm.validate()) {
      loginForm.save();
      print('userName:' + userName + ' password:' + password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Form表单示例',
        home: Scaffold(
            appBar: AppBar(
              leading: new BackButton(
                onPressed: () {Navigator.pop(context);},
              ),
              title: Text('Form表单示例'),
            ),
            body: new Column(
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.all(16.0),
                  child: new Form(
                      key: loginKey,
                      child: new Column(
                        children: <Widget>[
                          new TextFormField(
                            decoration:
                                new InputDecoration(labelText: '请输入用户名'),
                            onSaved: (value) {
                              userName = value;
                            },
                            onFieldSubmitted: (value) {},
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(labelText: '请输入密码'),
                            onSaved: (value) {
                              password = value;
                            },
                            obscureText: true,
                            validator: (value) {
                              return value.length < 6 ? "密码长度不够6位" : null;
                            },
                          )
                        ],
                      )),
                ),
                new SizedBox(
                  width: 400.0,
                  height: 42.0,
                  child: new RaisedButton(
                    onPressed: login,
                    child: new Text(
                      '登录',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                )
              ],
            )));
  }
}
