import 'package:auto_route/annotations.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_clean_architecture/lib.dart';
import 'package:test_clean_architecture/presentations/home/get_home_controller/get_home_controller.dart';

@RoutePage()
class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1D1D),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.errorMessage.value.isNotEmpty) {
          return Center(
            child: Text(
              controller.errorMessage.value,
              style: const TextStyle(color: Colors.red),
            ),
          );
        }

        if (controller.bannerHomeList.value == null || controller.bannerHomeList.value!.isEmpty) {
          return const Center(
            child: Text("No banners available", style: TextStyle(color: Colors.white)),
          );
        }

        return SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [    
                _buildHeader(),
                const SizedBox(height: 20),
                _buildCarousel(),
                const SizedBox(height: 10),
                Center(child: _buildIndicator()), 
                const SizedBox(height: 20),
                _buildLoginInfo(),

                const SizedBox(height: 20),
                _buildFeatureGrid(), 

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text(
                    'My Favorite Outlets',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                  ),
                ),
                _buildFavoriteOutlets(),

                const SizedBox(height: 30),
                TopChartView()
              ],
            ),
          ),
        );
      }),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: 'Hi HWG People\n',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            TextSpan(
              text: 'Click to login',
              style: const TextStyle(
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {
                // TODO: Tambahkan navigasi ke login
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCarousel() {
    return CarouselSlider.builder(
      itemCount: controller.bannerHomeList.value!.length,
      options: CarouselOptions(
        height: 350,
        enlargeCenterPage: true,
        viewportFraction: 0.85,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        onPageChanged: (index, reason) {
          controller.currentPageIndex.value = index;
        },
      ),
      itemBuilder: (context, index, realIndex) {
        final banner = controller.bannerHomeList.value![index];
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            banner.imageUrl ?? '',
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              color: Colors.grey,
              child: const Center(child: Icon(Icons.image_not_supported, color: Colors.white)),
            ),
          ),
        );
      },
    );
  }

  Widget _buildIndicator() {
    return Obx(() {
      return AnimatedSmoothIndicator(
        activeIndex: controller.currentPageIndex.value,
        count: controller.bannerHomeList.value!.length,
        effect: const ExpandingDotsEffect(
          activeDotColor: Colors.yellow,
          dotColor: Colors.white30,
          dotHeight: 8,
          dotWidth: 8,
        ),
      );
    });
  }

  Widget _buildLoginInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: const Color(0xFF2C2C2C),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            ClipOval(
              child: SvgPicture.asset(
                "assets/images/ic_user_login.svg",
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            const Expanded(
              child: Text(
                "Login to see voucher and point information",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFavoriteOutlets() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: const Color(0xFF2C2C2C),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Text(
          "Your favorite outlets will be shown here. Add some for easier access to reservations and more. ⭐",
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }

  Widget _buildFeatureGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: featureItems.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          final item = featureItems[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(item["icon"]!, width: context.sizeWidth *0.3, height: context.sizeHeight *0.1, fit: BoxFit.contain),
              const SizedBox(height: 8),
              Text(
                item["label"]!,
                style: const TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF2C2C2C),
      selectedItemColor: Colors.amberAccent,
      unselectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.event), label: "Events"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }
}

final List<Map<String, String>> featureItems = [
  {"icon": "assets/images/ic_atlas_logo.svg", "label": "Atlas"},
  {"icon": "assets/images/ic_home_reservation.svg", "label": "Reservation"},
  {"icon": "assets/images/ic_home_outlets.svg", "label": "Outlet"},
  {"icon": "assets/images/ic_bottles.svg", "label": "My Bottles"},
  {"icon": "assets/images/ic_event.svg", "label": "What's On"},
  {"icon": "assets/images/ic_whatson.svg", "label": "Events"},
];
  
  
