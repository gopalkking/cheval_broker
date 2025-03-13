import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
class HomeContainer2 extends StatelessWidget {
    final ThemeData theme;
    final String id;
    final String bookingComapny;
    final String location;

  const HomeContainer2({
    super.key,
    required this.theme, required this.id, required this.bookingComapny, required this.location,
  });



  @override
  Widget build(BuildContext context) {
    return Container(
         margin: const EdgeInsets.all(6),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: theme.scaffoldBackgroundColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                id,
                style: theme.textTheme.headlineSmall!
                    .copyWith(fontSize: 22),
              ),
              8.vspace,
              Text(
                "Booking Comapny",
                style: theme.textTheme.bodyLarge,
              ),
              8.vspace,
              Text(
                "Location",
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
          Column(
            children: [
              36.vspace,
              Text(
                bookingComapny,
                style: theme.textTheme.labelMedium!.copyWith(
                  color: Colors.white,
                  fontSize: 16
                ),
              ),
              8.vspace,
              Text(
                location,
                style: theme.textTheme.labelMedium!.copyWith(
                  color: Colors.white,
                  fontSize: 16
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}



