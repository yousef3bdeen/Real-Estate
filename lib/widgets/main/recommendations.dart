import 'package:flutter/material.dart';
import 'package:real_estate/constants.dart';
import 'package:real_estate/models/ecommendation.dart';

import 'recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Client Recommendations:',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: kDefaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demoRecommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: RecommendationCard(
                    recommendation: demoRecommendations[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
