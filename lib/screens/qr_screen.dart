import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class QRScreen extends StatefulWidget {
  const QRScreen({super.key});
  static String routeName = 'qr_screen';
  @override
  State<QRScreen> createState() => _QRScreenState();
}

class _QRScreenState extends State<QRScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String result = " ";
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData.code!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner'),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child: QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
              )),
          Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  'Scan Result:$result',
                  style: TextStyle(fontSize: 18),
                ),
              )),
          Expanded(           
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (result!.isNotEmpty) {
                      Clipboard.setData(ClipboardData(text: result));
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Copied to Clipboard')));
                    }
                  },
                  child: Text('Copy'),
                ),
                SizedBox(width: 20,),
                ElevatedButton(
                  onPressed: () async {
                    if (result!.isNotEmpty) {
                      final Uri _url = Uri.parse(result);
                      await launchUrl(_url);
                    }
                  },
                  child: Text('Open'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
