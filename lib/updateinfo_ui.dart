import 'package:flutter/material.dart';

class UpdateinfoUi extends StatefulWidget {
  const UpdateinfoUi({super.key});
  @override
  State<UpdateinfoUi> createState() => _UpdateinfoUiState();
}

class _UpdateinfoUiState extends State<UpdateinfoUi> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
      child: ListView(
        children: const [
          Padding(
              padding: EdgeInsets.only(
                top: 0,
                left: 25,
                right: 25,
                bottom: 0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 5,
                      right: 5,
                      bottom: 20,
                    ),
                    child: Text(
                      'Release updates',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              )),
          Padding(
              padding: EdgeInsets.only(
                top: 0,
                left: 25,
                right: 25,
                bottom: 0,
              ),
              child: Card(
                elevation: 0,
                child: Padding(
                    padding: EdgeInsets.only(
                      top: 0,
                      left: 25,
                      right: 25,
                      bottom: 20,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                            left: 5,
                            right: 5,
                            bottom: 20,
                          ),
                          child: Text(
                            '24.4.2024',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            '• NEW UI Update - IRC(Information Resource Centre)',
                          ),
                        ),
                      ],
                    )),
              )),
          Padding(
              padding: EdgeInsets.only(
                top: 0,
                left: 25,
                right: 25,
                bottom: 0,
              ),
              child: Card(
                elevation: 0,
                child: Padding(
                    padding: EdgeInsets.only(
                      top: 0,
                      left: 25,
                      right: 25,
                      bottom: 20,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                            left: 5,
                            right: 5,
                            bottom: 20,
                          ),
                          child: Text(
                            '23.4.2024',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            '• Major UI Update - Screen size responsive, new drawer for Navigation Drawer, Material You Adaptive Color, NEW Loading animation widget, AppBar redesign, NEW animation on auto-scrolling when receiving data from AI model',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            '• Renew API key',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            '• Migrating to new Generative AI package',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            '• Migrating to new hosting addresses',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            '• Old model fixes (Data optimisation)',
                          ),
                        ),
                      ],
                    )),
              )),
          Padding(
              padding: EdgeInsets.only(
                top: 0,
                left: 25,
                right: 25,
                bottom: 0,
              ),
              child: Card(
                elevation: 0,
                child: Padding(
                    padding: EdgeInsets.only(
                      top: 0,
                      left: 25,
                      right: 25,
                      bottom: 20,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                            left: 5,
                            right: 5,
                            bottom: 20,
                          ),
                          child: Text(
                            '20.4.2024',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            "• Added 'Release updates' tracker page",
                          ),
                        ),
                      ],
                    )),
              )),
          Padding(
              padding: EdgeInsets.only(
                top: 0,
                left: 25,
                right: 25,
                bottom: 0,
              ),
              child: Card(
                elevation: 0,
                child: Padding(
                    padding: EdgeInsets.only(
                      top: 0,
                      left: 25,
                      right: 25,
                      bottom: 20,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                            left: 5,
                            right: 5,
                            bottom: 20,
                          ),
                          child: Text(
                            '1.3.2024',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            '• Added Licenses pages',
                          ),
                        ),
                      ],
                    )),
              )),
          Padding(
              padding: EdgeInsets.only(
                top: 0,
                left: 25,
                right: 25,
                bottom: 0,
              ),
              child: Card(
                elevation: 0,
                child: Padding(
                    padding: EdgeInsets.only(
                      top: 0,
                      left: 25,
                      right: 25,
                      bottom: 20,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                            left: 5,
                            right: 5,
                            bottom: 20,
                          ),
                          child: Text(
                            '26.2.2024',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            '• Minor UI Update',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            '• Bug fixes and performance optimisation',
                          ),
                        )
                      ],
                    )),
              )),
          Padding(
              padding: EdgeInsets.only(
                top: 0,
                left: 25,
                right: 25,
                bottom: 0,
              ),
              child: Card(
                elevation: 0,
                child: Padding(
                    padding: EdgeInsets.only(
                      top: 0,
                      left: 25,
                      right: 25,
                      bottom: 20,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                            left: 5,
                            right: 5,
                            bottom: 20,
                          ),
                          child: Text(
                            '16.2.2024',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            '• Minor UI Update',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            '• NEW AI Models - RV,SSD,SAS',
                          ),
                        )
                      ],
                    )),
              )),
          Padding(
              padding: EdgeInsets.only(
                top: 0,
                left: 25,
                right: 25,
                bottom: 0,
              ),
              child: Card(
                elevation: 0,
                child: Padding(
                    padding: EdgeInsets.only(
                      top: 0,
                      left: 25,
                      right: 25,
                      bottom: 20,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                            left: 5,
                            right: 5,
                            bottom: 20,
                          ),
                          child: Text(
                            '30.1.2024',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            '• Public trial release',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            '• Migrating from PaLM model to Gemini 1.0 Pro',
                          ),
                        )
                      ],
                    )),
              )),
          Padding(
              padding: EdgeInsets.only(
                top: 0,
                left: 25,
                right: 25,
                bottom: 0,
              ),
              child: Card(
                elevation: 0,
                child: Padding(
                    padding: EdgeInsets.only(
                      top: 0,
                      left: 25,
                      right: 25,
                      bottom: 20,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                            left: 5,
                            right: 5,
                            bottom: 20,
                          ),
                          child: Text(
                            '1.1.2024',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            '• Imported GenAI package (3rd party)',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            '• Integrating into web application',
                          ),
                        )
                      ],
                    )),
              )),
          Padding(
              padding: EdgeInsets.only(
                top: 0,
                left: 25,
                right: 25,
                bottom: 0,
              ),
              child: Card(
                elevation: 0,
                child: Padding(
                    padding: EdgeInsets.only(
                      top: 0,
                      left: 25,
                      right: 25,
                      bottom: 20,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                            left: 5,
                            right: 5,
                            bottom: 20,
                          ),
                          child: Text(
                            '9.10.2023',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            '• Internal preview',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            '• WE STARTED FROM HERE 🙃',
                          ),
                        )
                      ],
                    )),
              ))
        ],
      ),
    );
  }
}
