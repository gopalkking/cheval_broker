import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class CommonDetailsContainer extends StatelessWidget {
  final String title;
  final Map<String, String> data;
  final bool isDriverInfo;
  const CommonDetailsContainer({
    super.key, required this.title, required this.data, required this.isDriverInfo
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [ 
            Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
          
        ),
        16.vspace,
          ...data.entries.map((entry) {
          if (entry.key == 'Driver Rating: ' ||
              entry.key == 'Broker Rating: ' || entry.key == 'Rating: '&& isDriverInfo) {
            return Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(entry.key,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.grey)),
                  ],
                ),
                Column(
                  children: [
                    RatingBarIndicator(
                      rating: double.parse(entry.value),
                      itemSize: 20,
                      itemBuilder: (context, index) =>
                          Icon(Icons.star, color: Theme.of(context).splashColor),
                      unratedColor: Colors.white,
                    ),
                  ],
                ),
              ],
            );
          }
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(entry.key,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.grey)),
                ],
              ),
              Column(
                children: [
                  Text(entry.value,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white),),
                ],
              ),
            ],
          );
        }),
        ]
      ),
    );
  }
}