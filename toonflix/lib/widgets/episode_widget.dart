import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_episode_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Episode extends StatelessWidget {
  const Episode({
    super.key,
    required this.episode,
  });

  onButtonTap() async {
    // final url = Uri.parse('https://google.com');
    // await launchUrl(url);
    await launchUrlString('https://google.com');
  }

  final WebtoonEpisodeModel episode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.green.shade400,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(episode.title,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    )),
                const Icon(Icons.chevron_right_rounded, color: Colors.white),
              ],
            ),
          )),
    );
  }
}
