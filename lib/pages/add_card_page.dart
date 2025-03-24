import 'package:d4_7_9/pages/categories_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // Card Number
              TextField(
                inputFormatters: [cardFormat],
                keyboardType: TextInputType.number,
                style: GoogleFonts.gabarito(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF4F4F4),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Card Number",
                  hintStyle: GoogleFonts.gabarito(
                    fontSize: 14,
                  ),
                ),
              ),

              // CVV & Expiration Date
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      inputFormatters: [cvvFormat],
                      keyboardType: TextInputType.number,
                      style: GoogleFonts.gabarito(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF4F4F4),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "CVV",
                        hintStyle: GoogleFonts.gabarito(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      inputFormatters: [expFormat],
                      keyboardType: TextInputType.number,
                      style: GoogleFonts.gabarito(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF4F4F4),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Exp",
                        hintStyle: GoogleFonts.gabarito(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Cardholder Name

              // Save Button
              Spacer(),
              CupertinoButton(
                color: Colors.red,
                onPressed: () {
                  Get.to(CategoriesPage());
                },
                child: Center(child: Text("Save")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
