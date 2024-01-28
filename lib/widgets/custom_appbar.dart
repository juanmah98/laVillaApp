import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:lavilla/widgets/custom_widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  void displayCard(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Center(child: Text("The Orange House")),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () => _openGoogleMaps(context),
                  child: const Card(
                    elevation: 30,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          child: Image(
                              fit: BoxFit.cover,
                              width: double.maxFinite,
                              height: 400,
                              image: NetworkImage('https://cdn.autobild.es/sites/navi.axelspringer.es/public/media/image/2016/05/543113-asi-funciona-google-maps-conexion-internet.jpg?tf=3840x')),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.5, //400 sino
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(179, 118, 118, 118).withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[],
            ),
            Container(
              width: double.infinity,
              height: size.height * 0.36,
              child: Swiper(
                itemCount: 6,
                layout: SwiperLayout.DEFAULT,
                itemWidth: size.width * 0.6,
                itemHeight: size.height * 0.8,
                indicatorLayout: PageIndicatorLayout.COLOR,
                autoplay: true,
                pagination: const SwiperPagination(margin: EdgeInsets.symmetric(vertical: 5),
                builder: DotSwiperPaginationBuilder(
                      color: Colors.grey, // Color de los indicadores cuando no están seleccionados
                      activeColor: Color.fromARGB(255, 106, 106, 106), // Color de los indicadores cuando están seleccionados
                      space: 8, // Espaciado entre los indicadores
                      activeSize: 10, // Tamaño del indicador seleccionado
                      size: 8, // Tamaño de los indicadores no seleccionados
                    )),
                itemBuilder: (_, int index) {
                  return GestureDetector(
                    /* onTap: () => Navigator.push(context, _), */
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            child: InkWell(
                              onTap: () => displayCard(context),
                              child: Card(
                                elevation: 0,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                                  child: ImageFiltered(
                                     imageFilter: ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                                    child: const Image(
                                      alignment: Alignment.topCenter,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                        height: 93,
                                        image: NetworkImage('https://img.freepik.com/fotos-premium/hermosa-casa-naranja-exterior-increible-vista-frente-casa_884986-88.jpg')),
                                  ),
                                ),
                              ),
                            ),
                          ),
                           Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            child: InkWell(
                              onTap: () => _driveFotos(context),
                              child: const Card(
                                elevation: 0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                  child: Image(
                                    alignment: Alignment.center,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                      height: 148,
                                      image: NetworkImage('https://drive.google.com/uc?export=view&id=1HlqLtPlyIeWc1G_v1YAfCfcZIELubnAd')),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


  void _openGoogleMaps(BuildContext context) async {
    const String mapUrl = "https://maps.app.goo.gl/x3nY7ZzNXsY4iF7UA";

    // ignore: deprecated_member_use
    if (await canLaunch(mapUrl)) {
      // ignore: deprecated_member_use
      await launch(mapUrl);
    } else {
      // No se puede abrir la URL
      print("No se pudo abrir la aplicación de Google Maps");
    }
  }

  void _driveFotos(BuildContext context) async {
    const String url = "https://drive.google.com/drive/folders/18hNZqdmp0aL-GuEadGDaWIUTjlQviZnO";

    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      // No se puede abrir la URL
      print("No se pudo abrir la web");
    }
  }
}
