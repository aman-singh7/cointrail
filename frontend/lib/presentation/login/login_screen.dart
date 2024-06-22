import 'package:cointrail_frontend/presentation/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/data/constants/colors.dart';
import '../responsive_view.dart';
import '../components/widgets/icon_button.dart';
import '../components/widgets/primary_button.dart';
import '../components/inputs/text_inputs.dart';

part 'components/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: ResponsiveView(
          mobile: Center(
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/illustrations/login.svg',
                  width: size.width,
                ),
                const SizedBox(height: 50),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: LoginForm(),
                ),
              ],
            ),
          ),
          desktop: Row(
            children: [
              Expanded(
                child: SvgPicture.asset(
                  'assets/illustrations/login.svg',
                  width: size.width / 2,
                ),
              ),
              Expanded(
                child: Center(
                  child: SizedBox(
                    width: size.width / 4,
                    child: const LoginForm(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
