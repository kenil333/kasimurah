import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './../../../domain/all.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _bool = BoolStream();

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1)).then(
      (_) {
        CustMeth().connectioncheck(
          () {
            CustMeth().routepushreplash(context, const LoginScreen());
          },
          () {
            _bool.boolsink.add(false);
          },
        );
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _bool.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: screenback,
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: screenback,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          elevation: 0,
        ),
        preferredSize: const Size.fromHeight(0),
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: StreamBuilder<bool>(
          stream: _bool.boolstream,
          initialData: true,
          builder: (context, snap) {
            if (snap.data!) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.5,
                    height: size.width * 0.5,
                    decoration: BoxDecoration(
                      color: whit,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 20,
                          color: txtcol.withOpacity(0.23),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        appiconstr,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.15),
                  const CircularProgressIndicator(color: prim),
                ],
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 40,
                      horizontal: size.width * 0.05,
                    ),
                    color: whit,
                    child: Column(
                      children: [
                        Image.asset(
                          noingif,
                          width: size.width * 0.2,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 25),
                        Text(
                          "Please Check Your Internet Connection !",
                          style: TextStyle(
                            fontSize: size.width * 0.035,
                            color: blc87,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  CustHalfbtn(
                    size: size,
                    title: "Ok",
                    onclick: () async {
                      SystemNavigator.pop();
                    },
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
