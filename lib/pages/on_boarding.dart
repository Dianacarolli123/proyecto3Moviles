import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/styles/colors/colors_views.dart';
import 'package:flutter_application_1/widgets/ContentBoarding.dart';
class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int pages = 0;
  PageController controller = PageController(initialPage: 0);
  List<Map<String, String>> onBoardingDatas = [
    {
      "text": "ESPARCIMIENTO",
      "text1": "Brindamos todos los servicios para consentir a tu mascota",
      "image": "assets/image/B1.png",
    },
    {
      "text": "ADOPCIÓN",
      "text1": "Brindamos todos los servicios para consentir a tu mascota",
      "image": "assets/image/B2.png",
    },
    {
      "text": "HOSPITALIDAD",
      "text1": "Brindamos todos los servicios para consentir a tu mascota",
      "image": "assets/image/B3.png",
    },
    {
      "text": "VETERINARIA",
      "text1": "Brindamos todos los servicios para consentir a tu mascota",
      "image": "assets/image/B4.png",
    },
    {
      "text": "TIENDA",
      "text1": "Brindamos todos los servicios para consentir a tu mascota",
      "image": "assets/image/B5.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: PageView.builder(
                    controller: controller,
                    onPageChanged: (value) {
                      setState(() {
                        pages = value;
                      });
                    },
                    itemCount: onBoardingDatas.length,
                    itemBuilder: (context, index) {
                      return ContentBoarding(
                          text: onBoardingDatas[index]["text"]!,
                          text1: onBoardingDatas[index]["text1"]!,
                          image: onBoardingDatas[index]["image"]!);
                    },
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(onBoardingDatas.length,
                              (index) => newMethod(index: index)),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 100)),
                        Container(
                          width: 300,
                          height: 48,
                          margin: const EdgeInsets.only(top: 25),
                          child: _button(indexAll: onBoardingDatas.length - 1),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ElevatedButton _button({required int indexAll}) {
    return ElevatedButton(
      onPressed: () {
        if (pages == onBoardingDatas.length - 1) {
          Navigator.pushNamed(context, 'load');
        } else {
          controller.nextPage(
              duration: const Duration(milliseconds: 150),
              curve: Curves.easeIn);
        }
      },
      child: Text(
        pages == onBoardingDatas.length - 1 ? 'Continuar' : 'Siguiente',
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: pages == onBoardingDatas.length - 1
                ? ColorsSelect.btnBackgroundBo1
                : Colors.blueGrey),
      ),
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.blue,
        side: BorderSide(
            color: pages == onBoardingDatas.length - 1
                ? Colors.transparent
                : ColorsSelect.txtBoSubHe,
            width: 3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        primary: pages == onBoardingDatas.length - 1
            ? ColorsSelect.btnBackgroundBo2
            : ColorsSelect.btnBackgroundBo1,
      ),
    );
  }

  AnimatedContainer newMethod({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 8),
      duration: kThemeAnimationDuration,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color:
            pages == index ? ColorsSelect.paginatorNext : ColorsSelect.txtBoHe,
      ),
      height: 4,
      width: pages == index ? 20 : 12,
    );
  }
}
