import 'package:flutter/material.dart';

import '../assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffSet;

  const CustomAppBar({Key key, this.scrollOffSet = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
        color: Colors.black
            .withOpacity((scrollOffSet / 350).clamp(0, 1).toDouble()),
        child: SafeArea(
          child: Row(
            children: [
              Image.asset(Assets.netflixLogo0),
              const SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _AppBarButton(
                      title: 'TV Shows',
                      onTap: () => 'TV Shows',
                    ),
                    _AppBarButton(
                      title: 'Movies',
                      onTap: () => 'Movies',
                    ),
                    _AppBarButton(
                      title: 'My List',
                      onTap: () => 'My List',
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const _AppBarButton({Key key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600),
      ),
    );
  }
}
