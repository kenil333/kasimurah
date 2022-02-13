import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './../../../domain/all.dart';

class EditAccountScren extends StatefulWidget {
  const EditAccountScren({Key? key}) : super(key: key);

  @override
  State<EditAccountScren> createState() => _EditAccountScrenState();
}

class _EditAccountScrenState extends State<EditAccountScren> {
  final TextEditingController _shopname = TextEditingController();
  final TextEditingController _contact = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final _true = BoolStream();

  @override
  void dispose() {
    _true.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: screenback,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          elevation: 0,
        ),
        preferredSize: const Size.fromHeight(0),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.08,
                vertical: 20,
              ),
              alignment: Alignment.centerLeft,
              child: CustBigtext(size: size, title: editprofilestr),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: size.width * 0.25,
                height: size.width * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        macdeimg,
                        width: size.width * 0.25,
                        height: size.width * 0.25,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      child: Row(
                        children: [
                          Expanded(child: Container()),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: size.width * 0.1,
                              height: size.width * 0.1,
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Icon(
                                Icons.camera_alt,
                                color: whit,
                                size: size.width * 0.05,
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            CustTextWidget(size: size, title: shopnamestr),
            CustTextfeild(
              size: size,
              hintstr: "Mack De",
              svgpath: mailsvg,
              controller: _shopname,
            ),
            const SizedBox(height: 30),
            CustTextWidget(size: size, title: shopaddressstr),
            CustTextfeild(
              size: size,
              hintstr: "Address",
              svgpath: "null",
              controller: _address,
            ),
            const SizedBox(height: 30),
            CustTextWidget(size: size, title: contactnumberstr),
            CustTextfeild(
              size: size,
              hintstr: "0000000000",
              svgpath: phonesvg,
              controller: _contact,
            ),
            const SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.05,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StreamBuilder<bool>(
                    stream: _true.boolstream,
                    initialData: false,
                    builder: (context, truesnap) {
                      return InkWell(
                        onTap: () {
                          _true.boolsink.add(!truesnap.data!);
                        },
                        child: SvgPicture.asset(
                          truesnap.data! ? truesvg : unchecksvg,
                          height: 30,
                          fit: BoxFit.contain,
                          color: txtcol,
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      termsandconditionstr,
                      style: TextStyle(
                        fontSize: size.width * 0.04,
                        color: txtcol,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            CustBtn(
              size: size,
              title: savestr,
              func: () {},
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
