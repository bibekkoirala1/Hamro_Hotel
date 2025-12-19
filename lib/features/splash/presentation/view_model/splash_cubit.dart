import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:sajilobihe_event_venue_booking_system/features/booking/presentation/view/admin_booking_page.dart';

class SplashCubit extends Cubit<void> {
  SplashCubit() : super(null);

  Future<void> init(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));

    if (context.mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const AdminBookingPage(),
        ),
      );
    }
  }
}
