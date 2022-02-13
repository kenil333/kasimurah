import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './../../../domain/all.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final _bool = BoolStream();
  final _true = BoolStream();

  @override
  void dispose() {
    _bool.dispose();
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
            const SizedBox(height: 20),
            CustTextWidget(size: size, title: registerstr),
            const SizedBox(height: 40),
            CustTextWidget(size: size, title: chooseprofilestr),
            StreamBuilder<bool>(
              stream: _bool.boolstream,
              initialData: false,
              builder: (context, boolsnap) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: size.width * 0.045,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                    vertical: 10,
                  ),
                  decoration: containerdeco,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          _bool.boolsink.add(!boolsnap.data!);
                        },
                        child: Row(
                          children: [
                            Text(
                              publicstr,
                              style: TextStyle(
                                color: txtcol,
                                fontSize: size.width * 0.04,
                              ),
                            ),
                            const SizedBox(width: 10),
                            SvgPicture.asset(
                              boolsnap.data! ? unchecksvg : checksvg,
                              height: 26,
                              fit: BoxFit.contain,
                              color: txtcol,
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                      InkWell(
                        onTap: () {
                          _bool.boolsink.add(!boolsnap.data!);
                        },
                        child: Row(
                          children: [
                            Text(
                              organizationstr,
                              style: TextStyle(
                                color: txtcol,
                                fontSize: size.width * 0.04,
                              ),
                            ),
                            const SizedBox(width: 10),
                            SvgPicture.asset(
                              boolsnap.data! ? checksvg : unchecksvg,
                              height: 26,
                              fit: BoxFit.contain,
                              color: txtcol,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            CustTextWidget(size: size, title: retailidstr),
            CustTextfeild(
              size: size,
              hintstr: usernamestr,
              svgpath: mailsvg,
              controller: _username,
            ),
            const SizedBox(height: 20),
            CustTextWidget(size: size, title: emailstr),
            CustTextfeild(
              size: size,
              hintstr: "name@gmail.com",
              svgpath: mailsvg,
              controller: _email,
            ),
            const SizedBox(height: 30),
            CustTextWidget(size: size, title: passwordstr),
            CustTextfeild(
              size: size,
              hintstr: "******",
              svgpath: locksvg,
              controller: _password,
            ),
            const SizedBox(height: 20),
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
              title: submitstr,
              func: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const BottomBar(),
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            CustTxtbtnBig(
              size: size,
              align: Alignment.center,
              title: "Back to Login !",
              func: () {
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
