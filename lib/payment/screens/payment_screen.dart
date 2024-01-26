import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PaymentScreen extends StatefulWidget {
  static const String routeName = '/payment-screen';

  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
          child: QrImageView(
            data: 'Hagoooooooooooooooooooooooor',
            version: QrVersions.auto,
            size: 320,
            gapless: false,
            //embeddedImage: AssetImage('assets/images/burger.jpg'),
            embeddedImageStyle: QrEmbeddedImageStyle(
              size: Size(180, 180),
            ),
          ),
        ));
  }
}
