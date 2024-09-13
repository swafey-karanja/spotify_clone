import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/widgets/button/green.app.button.dart';
import 'package:spotify_clone/core/configs/assets/app.images.dart';
import 'package:spotify_clone/core/configs/assets/app.vectors.dart';
import 'package:spotify_clone/core/configs/themes/app.colours.dart';
import 'package:spotify_clone/presentation/choose_mode/bloc/theme.cubit.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

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
                image: AssetImage(AppImages.guitarBg),
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
                  'Choose Mode.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
          
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                          },
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: const Color(0xff30393C).withOpacity(0.5),
                                  shape: BoxShape.circle
                                ),
                                child: SvgPicture.asset(
                                  AppVectors.moonLogo,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                        const Text(
                          'Dark Mode',
                          style: TextStyle(
                            color: AppColours.greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.15),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                          },
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: const Color(0xff30393C).withOpacity(0.5),
                                  shape: BoxShape.circle
                                ),
                                child: SvgPicture.asset(
                                  AppVectors.sunLogo,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                        const Text(
                          'Light Mode',
                          style: TextStyle(
                            color: AppColours.greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                  ],
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
                  title: "Continue"
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          
              ],
            ),
          ),
        ],
      ),
    );
  }
}