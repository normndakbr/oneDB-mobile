import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_health_app_ui/constants.dart';
import 'package:mental_health_app_ui/home/bloc/home_bloc.dart';
import 'package:mental_health_app_ui/home/widgets/notification_icon.dart';

class Greet extends StatelessWidget {
  const Greet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Akbar! ${state.mood}',
                  style: greetText,
                ),
                SizedBox(height: 2.0),
                Text(
                  'PT Ganesha Coalindo Utama',
                  style: TextStyle(color: Colors.white70),
                ),
                SizedBox(height: 4.0),
              ],
            );
          },
        ),
        const NotificationIcon()
      ],
    );
  }
}
