import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flutter/material.dart';

class OnboardNotifier extends ChangeNotifier {
  int? index;
  OnboardNotifier() {
    index = 0;
  }
  List<Map<String, dynamic>> pages = [
    {
      'image': const ContainerImage(image: ImageConst.onboard1),
      'topic': 'Find your perfect\nplace to stay!',
      'description':
          'Plan your perfect trip with ease using our all-in-one booking app. Discover flights, compare prices, and secure the best deals.',
    },
    {
      'image': const ContainerImage(image: ImageConst.onboard2),
      'topic': 'Unlock the World of Travel with Wanderlust Booking',
      'description':
          'Simplify your travel planning with our intuitive app. Find the ideal accommodations, book flights hassle-free, and explore exciting activities.',
    },
    {
      'image': const ContainerImage(image: ImageConst.onboard3),
      'topic': 'Simplify Your Travel Experience with TripPlanner',
      'description':
          '"Discover the joy of hassle-free travel planning. Find the perfect place to stay, book flights effortlessly, and uncover amazing experiences. ',
    },
  ];
  Map<String, dynamic> get page => pages[index ?? 0];

  void changePage(int newIndex) {
    index = newIndex;

    notifyListeners();
  }
}

class ContainerImage extends StatelessWidget {
  final String image;
  const ContainerImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
