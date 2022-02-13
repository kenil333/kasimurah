import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './../../../domain/all.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginbloc = LoginBloc();

  @override
  void dispose() {
    _loginbloc.dispose();
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  appiconstr,
                  fit: BoxFit.contain,
                  width: size.width * 0.3,
                ),
              ),
              const SizedBox(height: 70),
              CustTextWidget(size: size, title: retailidstr),
              CustTextfeild(
                size: size,
                hintstr: usernamestr,
                svgpath: mailsvg,
                controller: _loginbloc.username,
              ),
              const SizedBox(height: 30),
              CustTextWidget(size: size, title: passwordstr),
              CustTextfeild(
                size: size,
                hintstr: "******",
                svgpath: locksvg,
                controller: _loginbloc.password,
              ),
              CustTxtbtnBig(
                size: size,
                align: Alignment.centerRight,
                title: "Forgot Password !",
                func: () {},
              ),
              const SizedBox(height: 40),
              StreamBuilder<bool>(
                stream: _loginbloc.loadingstream,
                initialData: false,
                builder: (context, snap) {
                  if (snap.data!) {
                    return const CustLoading();
                  } else {
                    return CustBtn(
                      size: size,
                      title: loginstr,
                      func: () {
                        _loginbloc.applylogin(
                          () {
                            CustMeth().routepushreplash(
                              context,
                              const BottomBar(),
                            );
                          },
                        );
                      },
                    );
                  }
                },
              ),
              const SizedBox(height: 40),
              CustTxtbtnBig(
                size: size,
                align: Alignment.center,
                title: "Don't have an Account !",
                func: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const RegisterScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
