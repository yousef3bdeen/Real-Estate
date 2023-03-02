import 'package:flutter/material.dart';
import 'package:real_estate/constants.dart';
import 'package:real_estate/responsive.dart';
import 'package:real_estate/widgets/menu/side_menu_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.mainSection}) : super(key: key);
  final Widget mainSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: Builder(
                builder: ((context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(Icons.menu),
                    )),
              ),
            ),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints:  BoxConstraints(maxWidth: 1444.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(Responsive.isDesktop(context))
                 Expanded(
                  flex: 2,
                  child: SideMenuSection(),
                ),
                const SizedBox(width: kDefaultPadding),
                Expanded(
                  flex: 7,
                  child: mainSection,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
