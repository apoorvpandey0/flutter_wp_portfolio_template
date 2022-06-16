import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
            // Uncomment to add an appbar and a drawer
            // appBar: AppBar(
            //   title: const Text("My portfolio"),
            // ),
            // drawer: Drawer(),
            body: WebViewExample()),
      ),
    );
  }
}

class WebViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const WebView(
      javascriptMode: JavascriptMode.unrestricted,
      // Replace the URL here with your own
      initialUrl: 'https://flutter.dev',
    );
  }
}

// Advanced tutorial
// class WebViewExample extends StatefulWidget {
//   @override
//   State<WebViewExample> createState() => _WebViewExampleState();
// }

// class _WebViewExampleState extends State<WebViewExample> {
//   late WebViewController controller;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // controller.runJavascript("alert('Hello World')");
//           // controller.goBack();
//         },
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//       body: WebView(
//         javascriptMode: JavascriptMode.unrestricted,
//         initialUrl: 'https://flutter.dev',
//         onWebViewCreated: (WebViewController webViewController) {
//           setState(() {
//             controller = webViewController;
//           });
//         },
//       ),
//     );
//   }
// }
