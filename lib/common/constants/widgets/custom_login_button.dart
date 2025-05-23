import 'package:flutter/material.dart';
import 'package:projetopet/common/constants/app_colors.dart';
import 'package:projetopet/common/constants/app_text_styles.dart';
import 'package:projetopet/features/Login/login_page.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Você já possui uma conta? ',
            style: AppTextStyles.textoAll.copyWith(color: AppColors.white)
,
          ),
          Text(
            '(Log in)',
            style: AppTextStyles.textoAll.copyWith(
              color: AppColors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
