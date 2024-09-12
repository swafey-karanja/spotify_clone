import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/widgets/button/green.app.button.dart';
import 'package:spotify_clone/core/configs/assets/app.images.dart';
import 'package:spotify_clone/core/configs/assets/app.vectors.dart';
import 'package:spotify_clone/core/configs/themes/app.colours.dart';
import 'package:spotify_clone/presentation/choose_mode/pages/choose.mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.08),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.city2Bg),
              ),
            ),
          ),

          Container(
            color: Colors.black.withOpacity(0.5),
          ),

          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.08),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.spotifyLogo
                  ),
                ),
          
                const Spacer(),
                
                const Text(
                  'Enjoy Listening To Music You Love.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
          
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          
                const Text(
                  'Discover new music with our app! Explore your favorite genres, create personalized playlists, and enjoy seamless streaming. Whether you are into rock, pop, classical, or jazz, our app offers endless options to match your mood. Dive into an immersive music experience anytime, anywhere. Start listening today!.',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 17,
                    color: AppColours.greyColor,
                  ),
                  textAlign: TextAlign.center,
                ),
          
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          
                GreenAppButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (BuildContext context) => const ChooseModePage()
                      ),
                    );
                  }, 
                  title: "Let's Go"
                ),
          
              ],
            ),
          ),
        ],
      ),
    );
  }
}
