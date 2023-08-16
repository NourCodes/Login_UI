import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var p;
  @override
  void initState() {
    // TODO: implement initState
    p = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/m.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(

                    child: Container(
                      height: 250,
                      child: Image.asset("images/logos.png"),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Milka",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontFamily: "Lugrasimo",
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey.shade800, //color of divider
                height: 10, //height spacing of divider
                thickness: 1, //thickness of divier line
                indent: 100, //spacing at the start of divider
                endIndent: 100, //spacing at the end of divider
              ),
              const SizedBox(
                height: 10.0,
              ),
                 Padding(
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      color: Colors.white,
                      child: const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: "Email Address"),
                      ),
                    ),
                  ),
                ),

               Padding(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    color: Colors.white,
                    child: TextField(
                      obscureText: p,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              icon: Icon(
                                  p ? Icons.visibility : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  p = !p; //it must be not equal so we can return it back if we set it to false we cant undo it
                                });
                              }),
                          prefixIcon: const Icon(Icons.password),
                          hintText: "Password"),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  child: const Text("Forgot password?",
                      style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  elevation: 10.0,
                  minimumSize: const Size(150.0, 50.0),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                child: const Text("Login"),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 5),
                      child: SignInButton(
                        elevation: 2,

                        Buttons.google,
                        text: "Sign In",
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: SignInButton(
                        elevation: 2,
                        Buttons.gitHub,
                        text: "Sign In",
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 10),
                      child: SignInButton(
                        elevation: 2,

                        Buttons.facebook,
                        text: "Sign In",
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
