import 'package:flutter/material.dart';
import 'package:uassist/coming_soon.dart';
import 'package:uassist/uassist_services/utp_assist_v2.dart';
import 'package:animations/animations.dart';
import 'package:uassist/about_faq.dart';

/// Flutter code sample for [NavigationDrawer].

class PageRouter extends StatefulWidget {
  const PageRouter({super.key});

  @override
  State<PageRouter> createState() => _PageRouterState();
}

class _PageRouterState extends State<PageRouter> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  void openDrawer() {
    scaffoldKey.currentState!.openEndDrawer();
  }

  var _selectedIndex = 0;
  final List<Widget> _windgetOption = <Widget>[
    const SectionChat(),
    const ComingSoon(),
    const ComingSoon(),
    const AboutFaq(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 3,
        scrolledUnderElevation: 3,
        actions: [
          IconButton(
            onPressed: openDrawer,
            icon: const Icon(Icons.more_vert_rounded),
            tooltip: "Menu",
          ),
          //TextButton(onPressed: openDrawer, child: const Text('Menu')),
        ],
      ),
      body: PageTransitionSwitcher(
        transitionBuilder: (child, animation, secondaryAnimation) =>
            FadeThroughTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        ),
        child: _windgetOption.elementAt(_selectedIndex),
      ),
      endDrawer: NavigationDrawer(
        onDestinationSelected: (i) => setState(() => _selectedIndex = i),
        selectedIndex: _selectedIndex,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 24, 10, 5),
                child: Text(
                  'Menu',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),
          NavigationDrawerDestination(
            label: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Text(
                    'Project UAssist',
                    //style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1.5,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 1,
                        left: 5,
                        right: 5,
                        bottom: 1,
                      ),
                      child: Text(
                        "Gemini",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w900,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ))
              ],
            ),
            icon: const Icon(Icons.hub_outlined),
            selectedIcon: const Icon(Icons.hub_rounded),
          ),
          NavigationDrawerDestination(
            label: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Text(
                    'Project Tailwind',
                    //style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1.5,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 1,
                        left: 5,
                        right: 5,
                        bottom: 1,
                      ),
                      child: Text(
                        "PaLM2",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w900,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ))
              ],
            ),
            icon: const Icon(Icons.document_scanner_outlined),
            selectedIcon: const Icon(Icons.document_scanner_rounded),
          ),
          NavigationDrawerDestination(
            label: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Text(
                    'Project Look-Up',
                    //style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1.5,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 1,
                        left: 5,
                        right: 5,
                        bottom: 1,
                      ),
                      child: Text(
                        "Gemini",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w900,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ))
              ],
            ),
            icon: const Icon(Icons.filter_b_and_w_outlined),
            selectedIcon: const Icon(Icons.filter_b_and_w_rounded),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 8, 28, 8),
            child: Divider(),
          ),
          const NavigationDrawerDestination(
            label: Text("About/Help/FAQ"),
            icon: Icon(Icons.help_outline_rounded),
            selectedIcon: Icon(Icons.help_rounded),
          ),
          Padding(
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 15,
                left: 10,
                right: 10,
              ),
              child: Card(
                //color: Theme.of(context).colorScheme.tertiaryContainer,
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: SizedBox.fromSize(
                  size: const Size(400, 55),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    child: Material(
                      color: const Color.fromARGB(0, 255, 193, 7),
                      child: InkWell(
                        //splashColor:Color.fromARGB(255, 191, 217, 255),
                        onTap: () => showLicensePage(context: context),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Licences",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
