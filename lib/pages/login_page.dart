import 'package:flutter/material.dart';
import 'package:flutter_todo_mobx/components/input_custom.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.purple, Colors.purple.shade50])),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: 600,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3, right: 4),
                          child: Text(
                            "Wellcome back to!",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Text(
                          "ToDo List",
                          style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Image.network(
                                "https://fossildigital.com.br/wordpress/wp-content/uploads/2017/01/check.png",
                                height: 100,
                                width: 100,
                                color: Colors.purple,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: InputCustom(
                                label: "Email",
                                icon: Icons.email_rounded,
                                isObscure: false,
                                type: TextInputType.emailAddress,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: InputCustom(
                                label: "Senha",
                                icon: Icons.lock,
                                type: TextInputType.name,
                                isObscure: true,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: _checkbox,
                                        onChanged: (value) {
                                          setState(() {
                                            _checkbox = !_checkbox;
                                          });
                                        },
                                      ),
                                      Text('Remember me'),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Forget Password?",
                                        style: TextStyle(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: SizedBox(
                                height: 50,
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.purple,
                                    shape: StadiumBorder(),
                                  ),
                                  onPressed: () {
                                    Navigator.popAndPushNamed(context, "/home");
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Text("Don't have an account?"),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text("Get Started"),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
