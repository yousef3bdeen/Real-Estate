import 'package:flutter/material.dart';
import 'package:real_estate/constants.dart';
import 'package:real_estate/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Responsive.isMobileLarg(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildIconIfo(
                        context: context,
                        icon: Icons.supervisor_account,
                        text: '78+',
                        lable: 'Clients',
                      ),
                    ),
                    Expanded(
                      child: buildIconIfo(
                        context: context,
                        icon: Icons.location_on,
                        text: '139+',
                        lable: 'Projects',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: kDefaultPadding * 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildIconIfo(
                        context: context,
                        icon: Icons.public,
                        text: '40+',
                        lable: 'Countries',
                      ),
                    ),
                    Expanded(
                      child: buildIconIfo(
                        context: context,
                        icon: Icons.star,
                        text: '12k+',
                        lable: 'Star',
                      ),
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconIfo(
                  context: context,
                  icon: Icons.supervisor_account,
                  text: '78+',
                  lable: 'Clients',
                ),
                buildIconIfo(
                  context: context,
                  icon: Icons.location_on,
                  text: '139+',
                  lable: 'Projects',
                ),
                buildIconIfo(
                  context: context,
                  icon: Icons.public,
                  text: '40+',
                  lable: 'Countries',
                ),
                buildIconIfo(
                  context: context,
                  icon: Icons.star,
                  text: '12k+',
                  lable: 'Star',
                ),
              ],
            ),
    );
  }

  Column buildIconIfo({
    required BuildContext context,
    required IconData icon,
    required String text,
    required String lable,
  }) {
    return Column(
      children: [
        Icon(
          icon,
          size: 50,
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: kPrimaryColor, fontSize: 30),
        ),
        Text(
          lable,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
