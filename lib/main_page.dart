import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uassist_v3/chat_ui.dart';
import 'package:uassist_v3/updateinfo_ui.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  var _selectedIndex = 0;
  final List<Widget> _windgetOption = <Widget>[
    const ChatUi(),
    const UpdateinfoUi(),
  ];
  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surface,
          elevation: 0,
          scrolledUnderElevation: 0,
          title: Row(children: [
            const Text('UAssist by '),
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
              ),
              child: Shimmer.fromColors(
                period: const Duration(milliseconds: 2000),
                baseColor: Theme.of(context).colorScheme.primary,
                highlightColor: Theme.of(context).colorScheme.tertiary,
                child: const Text(
                  'Gemini',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    //fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ]),
          leading: width > 680
              ? IconButton(
                  icon: const Icon(Icons.menu_rounded),
                  onPressed: openDrawer,
                )
              : null,
        ),
        drawer: NavigationDrawer(
          surfaceTintColor: Theme.of(context).colorScheme.surface,
          backgroundColor: Theme.of(context).colorScheme.surface,
          shadowColor: Theme.of(context).colorScheme.surface,
          onDestinationSelected: (i) => setState(() => _selectedIndex = i),
          selectedIndex: _selectedIndex,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 16, 16, 10),
              child: Text(
                'Menu',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const NavigationDrawerDestination(
              label: Text("AI Chatbot"),
              icon: Icon(Icons.hub_outlined),
              selectedIcon: Icon(Icons.hub_rounded),
            ),
            const NavigationDrawerDestination(
              label: Text("Updates"),
              icon: Icon(Icons.info_outline_rounded),
              selectedIcon: Icon(Icons.info_rounded),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
              child: Divider(),
            ),
            SizedBox.fromSize(
              size: const Size(10, 55),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                child: Material(
                  color: const Color.fromARGB(0, 255, 193, 7),
                  child: InkWell(
                    onTap: () => showLicensePage(
                      context: context,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Licenses",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            width > 680
                ? SizedBox(
                    width: 200,
                    child: NavigationDrawer(
                      surfaceTintColor: Theme.of(context).colorScheme.surface,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      shadowColor: Theme.of(context).colorScheme.surface,
                      onDestinationSelected: (i) =>
                          setState(() => _selectedIndex = i),
                      selectedIndex: _selectedIndex,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(28, 0, 16, 10),
                          child: Text(
                            ' ',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        const NavigationDrawerDestination(
                          label: Text("AI Chatbot"),
                          icon: Icon(Icons.hub_outlined),
                          selectedIcon: Icon(Icons.hub_rounded),
                        ),
                        const NavigationDrawerDestination(
                          label: Text("Updates"),
                          icon: Icon(Icons.info_outline_rounded),
                          selectedIcon: Icon(Icons.info_rounded),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
                          child: Divider(),
                        ),
                        SizedBox.fromSize(
                          size: const Size(10, 55),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            ),
                            child: Material(
                              color: const Color.fromARGB(0, 255, 193, 7),
                              child: InkWell(
                                onTap: () => showLicensePage(
                                  context: context,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Licenses",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSecondaryContainer,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  elevation: 3,
                  color: Theme.of(context).colorScheme.surface,
                  child: SizedBox(
                    height: width > 680 ? height - 100 : height - 20,
                    width: width > 680 ? width - 225 : width - 10,
                    child: _windgetOption.elementAt(_selectedIndex),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
