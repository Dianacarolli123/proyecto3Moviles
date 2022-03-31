import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/styles/colors/colors_views.dart';

class RecuperarPage extends StatefulWidget {
  const RecuperarPage({Key? key}) : super(key: key);

  @override
  State<RecuperarPage> createState() => _RecuperarPageState();
}

class _RecuperarPageState extends State<RecuperarPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: ColorsSelect.paginatorNext),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Recuperar contraseña',
          style: TextStyle(fontSize: 15),
        ),
        iconTheme: const IconThemeData(color: ColorsSelect.paginatorNext),
        actions: [
          Container(
            padding: const EdgeInsets.only(left: 30),
            height: 5,
            width: 100,
            child: Image.asset('assets/image/splash.png'),
          )
        ],
        backgroundColor: ColorsSelect.txtBoHe,
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                  bottom: 50,
                  top: 30,
                  left: 20,
                  right: 20,
                ),
                child: const Text(
                  'Ingresa tu email para recuperar tu contraseña',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: ColorsSelect.txtBoSubHe,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 175),
                child: const Text(
                  'Correo electrónico',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 17),
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.black, width: 1)),
                    hintText: 'Dirección de correo',
                  ),
                  onChanged: (text) {},
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, top: 15),
                margin: const EdgeInsets.only(right: 45),
                child: const Text(
                  'Ingrese su correo electrónico registrado\ny le enviaremos un correo electrónico \nque contiene un enlace para restablecer \nsu contraseña.',
                  style: TextStyle(
                    fontSize: 13,
                    color: ColorsSelect.txtBoSubHe,
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 280)),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: size.width - 70,
                  height: 50,
                  child: ElevatedButton(
                      child: const Text(
                        'Enviar solicitud',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: ColorsSelect.btnBackgroundBo2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
