import 'package:eagles_customer_end/application/navigation/screenNavigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class GoogleForm extends StatefulWidget {
  const GoogleForm({super.key});

  @override
  State<GoogleForm> createState() => _GoogleFormState();
}

class _GoogleFormState extends State<GoogleForm> {
  late InAppWebViewController controller;
  String url =
      "https://docs.google.com/forms/d/e/1FAIpQLSdOAJRdJKIhwKm0STUT3p5904zT3KOtPeq0-HJz4sSXK8ibVg/viewform?usp=sf_link";
  double progress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              progress < 1.0
                  ? LinearProgressIndicator(
                      value: progress,
                    )
                  : Container(),
              Container(
                padding: EdgeInsets.all(1.0),
                child: Container(
                  height: 900,
                  child: Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      child: InAppWebView(
                        initialUrlRequest:
                            URLRequest(url: Uri.parse(url), headers: {}),
                        onWebViewCreated: ((controller) {
                          this.controller = controller;
                          this.controller.clearCache();
                        }),
                        onLoadStart: (controller, url) {
                          setState(() {
                            this.url = url.toString();
                          });
                        },
                        onLoadStop: (controller, url) {
                          setState(() {
                            this.url = url.toString();
                          });
                        },
                        onProgressChanged: (controller, progress) {
                          setState(() {
                            this.progress = progress / 100;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
