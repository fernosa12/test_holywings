import 'package:auto_route/annotations.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_clean_architecture/presentations/home/get_home_controller/get_home_controller.dart';

@RoutePage()
class HomeView extends GetView<HomeController> {
   HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D1D1D),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Padding(
  padding: const EdgeInsets.all(16.0),
  child: RichText(
   
    text: TextSpan(
      children: [
        TextSpan(
          text: 'Hi HWG People\n', 
          style: const TextStyle(
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
           
          },
        ),
      ],
    ),
  ),
),

              const SizedBox(height: 50),
              _buildCarousel(), 
              const SizedBox(height: 20),
              _buildIndicator(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: const Text(
                  "Popular Events",
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              _buildEventList(), 
            ],
          ),
        );
      }),
    );
  }
  final _carouselController = PageController();
  /// **Widget: Carousel Slider**
  Widget _buildCarousel() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
      ),
      items: controller.bannerHomeList.value!.map((banner) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              Image.network(
                banner.imageUrl ?? '',
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: Colors.grey,
                  child: const Center(child: Icon(Icons.image_not_supported, color: Colors.white)),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Text(
                  banner.title ?? '',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
 Widget _buildIndicator() {
    return Obx(() {
      return SmoothPageIndicator(
        controller: _carouselController, // Kontrol halaman
        count: controller.bannerHomeList.value!.length,
        effect: const ExpandingDotsEffect(
          activeDotColor: Colors.yellow, // Warna titik aktif
          dotColor: Colors.white30, // Warna titik non-aktif
          dotHeight: 8,
          dotWidth: 8,
        ),
      );
    });
  }
  /// **Widget: List View untuk Event**
  Widget _buildEventList() {
    return Expanded(
      child: ListView.builder(
        itemCount: controller.bannerHomeList.value!.length,
        itemBuilder: (context, index) {
          final banner = controller.bannerHomeList.value![index];
          return Card(
            color: Colors.black54,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  banner.imageUrl ?? '',
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: Colors.grey,
                    child: const Icon(Icons.image_not_supported, color: Colors.white),
                  ),
                ),
              ),
              title: Text(
                banner.title ?? '',
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Event details here...",
                style: TextStyle(color: Colors.white70),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white70, size: 16),
              onTap: () {
             
              },
            ),
          );
        },
      ),
    );
  }
}
