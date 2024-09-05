import 'package:bdcallingassigment/presentation/AssetPath/asset_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class applogo extends StatelessWidget {
  const applogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetPath.logoSvg,
      width: 120,
      fit: BoxFit.scaleDown,
    );
  }
}