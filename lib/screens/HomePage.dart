import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class OttPlatform extends StatefulWidget {
  const OttPlatform({Key? key}) : super(key: key);

  @override
  State<OttPlatform> createState() => _OttPlatformState();
}

class _OttPlatformState extends State<OttPlatform> {
  final GlobalKey inappWebview = GlobalKey();
  InAppWebViewController? inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All In One App"),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () async {
              if (await inAppWebViewController!.canGoBack()) {
                inAppWebViewController!.goBack();
              }
            },
          ),
          IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () async {
                await inAppWebViewController!.reload();
              }),
          IconButton(
              icon: const Icon(Icons.home),
              onPressed: () async {
                await inAppWebViewController!.loadUrl(
                    urlRequest: URLRequest(
                        url: Uri.parse(
                  "https://netflix.com",
                )));
              }),
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () async {
              if (await inAppWebViewController!.canGoForward()) {
                inAppWebViewController!.goForward();
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Image.network(
                      "https://tse1.mm.bing.net/th?id=OIP.vzoDIa7Zslw8drvCAJUtxgHaHa&pid=Api&rs=1&c=1&qlt=95&w=100&h=100"),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('Netflix');
                    },
                    child: const Text("Watch Netflix"),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJNMz20TfclQqDanoLl5wHC2OrwO--J_Fw8-kkIfugSw&s"),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('PrimeVideo');
                    },
                    child: const Text("Watch Prime Video"),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Image.network(
                      "https://tse3.mm.bing.net/th?id=OIP.fbAhAuvGmgFt5LCbFCDbUQHaEK&pid=Api&P=0"),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('HotStar');
                    },
                    child: const Text("Watch Disney Hotstar"),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 20,
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Image.network(
                      "https://tse4.mm.bing.net/th?id=OIP.q3_v8raxZb4h0E0xpwIUXwHaGz&pid=Api&P=0"),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('SonyLiv');
                    },
                    child: const Text("Watch Sony Liv"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
