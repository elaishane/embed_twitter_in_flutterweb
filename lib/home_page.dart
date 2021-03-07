import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'twitter',
      (int uid) => IFrameElement()
        ..src = "web/twitter.html"
        ..style.border = "none",
    );

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  child: Text(
                    "Twitter Timeline\nin\nFlutter Web",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 100.0,
                ),
                child: HtmlElementView(
                  viewType: 'twitter',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
