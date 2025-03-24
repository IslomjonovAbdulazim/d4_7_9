import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({super.key});

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  // Formatters
  final cardFormat = MaskTextInputFormatter(
    mask: "#### #### #### ####",
    filter: {
      "#": RegExp(r"[0-9]"),
    },
  );
  final cvvFormat = MaskTextInputFormatter(
    mask: "###",
    filter: {
      "#": RegExp(r"[0-9]"),
    },
  );
  final expFormat = MaskTextInputFormatter(
    mask: "##/##",
    filter: {
      "#": RegExp(r"[0-9]"),
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // Card Number

              // CVV & Expiration Date

              // Cardholder Name

              // Save Button
            ],
          ),
        ),
      ),
    );
  }
}
