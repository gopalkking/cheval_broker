import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
      ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppbarWidget(title:Text("Booking",style: theme.textTheme.headlineSmall,) , actions:[
                 IconButton(onPressed: (){}, icon:   const CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.search,
                size: 25,
                color: Colors.white,
              ),
            ),),
      ],),
    );
  }
}