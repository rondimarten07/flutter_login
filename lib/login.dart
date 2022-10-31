import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? SingleChildScrollView(child: ContentArea())
          : ContentArea(),
    );
  }
}

class ContentArea extends StatelessWidget {
  const ContentArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FormLogin(),
        Flexible(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "Social Login",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Divider(),
                SocialButton()
              ],
            ),
          ),
        )
      ],
    );
  }
}

class FormLogin extends StatelessWidget {
  const FormLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool visibilityPass = false;

    final String user = 'rondi';
    final String pass = '12345';

    TextEditingController cUser = TextEditingController();
    TextEditingController cPass = TextEditingController();

    void CekLogin() {
      if (cUser.text == user && cPass.text == pass) {
        Navigator.pushReplacementNamed(context, '/home_page');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('User atau Password Anda Salah...'),
            backgroundColor: Colors.black,
          ),
        );
      }
    }

    return Flexible(
      flex: 2,
      child: Stack(
        children: <Widget>[
          Container(height: MediaQuery.of(context).size.height / 1.4),
          Container(
            height: MediaQuery.of(context).size.height / 2.4,
            decoration: BoxDecoration(
              color: Colors.white10,
              image: DecorationImage(
                image: AssetImage('images/header.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3.6,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        child: Text(
                          "Login Form",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      TextField(
                        controller: cUser,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1.5)),
                            labelText: 'User Name',
                            hintText: 'Input User Name Anda',
                            prefixIcon: Icon(Icons.person)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: cPass,
                        obscureText: !visibilityPass,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.5)),
                          labelText: 'Password',
                          hintText: 'Input Password Anda',
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 5, right: 15.0),
                        child: Row(
                          children: [
                            Checkbox(
                              onChanged: (_) {},
                              value: false,
                            ),
                            Text(
                              "Remember Me",
                              style: TextStyle(),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  color: Colors.blue[400],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          // user = 'rondi';
                          // pass = '12345';
                          CekLogin();
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0),
                        ),
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFF13E3D2),
                                Color(0xFF5D74E2)
                              ],
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(80.0),
                            ),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 150.0,
                            minHeight: 40.0,
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 20))
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 10),
          child: FloatingActionButton(
            heroTag: null,
            onPressed: () {},
            child: Image.asset(
              'images/facebook.png',
            ),
            backgroundColor: Color(0xFF5D74E2),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          child: FloatingActionButton(
            heroTag: null,
            onPressed: () {},
            child: Image.asset(
              'images/twitter.png',
            ),
            backgroundColor: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          child: FloatingActionButton(
            heroTag: null,
            onPressed: () {},
            child: Image.asset(
              'images/google.png',
            ),
            backgroundColor: Colors.white,
          ),
        ),
        FloatingActionButton(
          heroTag: null,
          onPressed: () {},
          child: Image.asset(
            'images/linkedin.png',
          ),
          backgroundColor: Color(0xFF5D74E2),
        ),
      ],
    );
  }
}
