import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1)),
        home: Scaffold(
          body: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 24, right: 24, top: 140),
                  height: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/splash.png')),
                  ),
                ),
                Container(
                  width: 300,
                  height: 48,
                  margin: const EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(49, 105, 245, 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.blur_circular_rounded,
                          size: 45,
                        ),
                        Text('Continuar con Google',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                            textAlign: TextAlign.center),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                    width: 300,
                    height: 48,
                    margin: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromRGBO(50, 79, 165, 1)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.facebook,
                            size: 35,
                          ),
                          Text('Continuar con Facebook',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center),
                        ],
                      ),
                      onPressed: () {},
                    )),
                Container(
                    width: 300,
                    height: 48,
                    margin: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromRGBO(255, 255, 255, 1)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                                side:
                                    const BorderSide(color: Color(0xFF64688f))),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.mail,
                            size: 35,
                            color: Color(0xFF64688f),
                          ),
                          Text('Registrarse con e-mail',
                              style: TextStyle(
                                color: Color(0xFF64688f),
                              ),
                              textAlign: TextAlign.center),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'Registro');
                      },
                    )),
                Container(
                  width: 300,
                  height: 48,
                  margin: const EdgeInsets.only(top: 20),
                  child: FlatButton(
                    child: const Text(
                      'Entrar como invitado',
                      style: TextStyle(
                        color: Color.fromRGBO(252, 20, 96, 1),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 300,
                  height: 48,
                  child: FlatButton(
                    child: const Text(
                      'Entrar como vendedor',
                      style: TextStyle(
                        color: Color(0xFF76a757),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 300,
                  height: 48,
                  margin: const EdgeInsets.only(left: 75, right: 24, top: 20),
                  child: Row(
                    children: [
                      const Text("¿Ya tienes una cuenta?",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.left),
                      TextButton(
                        child: const Text(
                          'Iniciar sesión',
                          style: TextStyle(
                            color: Color.fromRGBO(252, 20, 96, 1),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'Login');
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
