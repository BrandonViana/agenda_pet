import 'package:flutter/material.dart';
import 'package:projetopet/common/constants/app_colors.dart';
import 'package:projetopet/common/constants/app_text_styles.dart';
import 'package:projetopet/common/constants/widgets/custom_login_button.dart';
import 'package:projetopet/common/constants/widgets/primary_button.dart';
import 'package:projetopet/features/Login/register_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: AppColors.babyblueGradient,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 25.0),
                Text(
                  "Agenda Pet",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.textoAll.copyWith(
                    color: AppColors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 20.0),
                Expanded(
                  child: Center(
                    child: Image.asset(
                      "assets/Image/golden.webp"
                    ),
                  ),
                ),
                Text(
                  "Agende, Cadastre, Cuide!",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.textoAll.copyWith(
                    color: AppColors.white,
                    fontSize: 35,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: PrimaryButton(
                    text: "Vamos Começar",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10.0),
                CustomLoginButton(),
                const SizedBox(height: 40.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
