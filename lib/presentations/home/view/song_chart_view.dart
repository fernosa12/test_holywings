import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_clean_architecture/presentations/home/get_home_controller/get_home_controller.dart';

class TopChartView extends StatelessWidget {
  const TopChartView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();

    return Obx(() {
      if (controller.songChart.value == null || controller.songChart.value!.songs!.isEmpty) {
        return const Center(
          child: Text(
            "No songs available",
            style: TextStyle(color: Colors.white),
          ),
        );
      }

      // 🔹 Ambil hanya 10 lagu teratas
      final top10Songs = controller.songChart.value!.songs!.take(10).toList();

      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xFF2C2C2C),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // **Title Section**
              const Text(
                "HWGPeople Top Charts",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),

              // **Song List**
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: top10Songs.length, // ✅ Hanya tampilkan 10 lagu teratas
                itemBuilder: (context, index) {
                  final song = top10Songs[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        // **Ranking**
                        SizedBox(
                          width: 30,
                          child: Text(
                            "${index + 1}${_getRankSuffix(index + 1)}",
                            style: TextStyle(
                              color: index < 3 ? Colors.amberAccent : Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),

                        // **Song Image**
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            song.song!.artistProfilePicture ?? '',
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                Container(color: Colors.grey, width: 40, height: 40),
                          ),
                        ),
                        const SizedBox(width: 12),

                        // **Song Details**
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                song.song!.title ?? '',
                                style: const TextStyle(color: Colors.white, fontSize: 14),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                song.song!.artistName ?? '',
                                style: const TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),

              const SizedBox(height: 10),

              // **Apple Music & Spotify Buttons**
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildMusicButton("assets/images/ic_applemusic.png", "Apple Music"),
                  const SizedBox(width: 12),
                  _buildMusicButton("assets/images/ic_spotify.png", "Spotify"),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }

  /// **Helper untuk mendapatkan suffix ranking (1st, 2nd, 3rd, etc.)**
  String _getRankSuffix(int number) {
    if (number == 1) return "st";
    if (number == 2) return "nd";
    if (number == 3) return "rd";
    return "th";
  }

  /// **Tombol Apple Music & Spotify**
  Widget _buildMusicButton(String iconPath, String title) {
    return ElevatedButton.icon(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      icon: Image.asset(iconPath, width: 20, height: 20),
      label: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }
}
