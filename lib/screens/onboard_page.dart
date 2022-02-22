import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main_screen_homework/constants.dart';
import 'package:kartal/kartal.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Image.asset(bgPath), _buildBody(context)],
      ),
    );
  }

  _buildBody(context) {
    return Column(
      children: [
        const Spacer(
          flex: 124,
        ),
        Expanded(
          flex: 116,
          child: _buildHeader(context),
        ),
        const Spacer(
          flex: 16,
        ),
        Expanded(
          flex: 41,
          child: _buildDesc(context),
        ),
        const Spacer(
          flex: 393,
        ),
        Expanded(
          flex: 56,
          child: _buildButton(context),
        ),
        const Spacer(
          flex: 53,
        )
      ],
    );
  }

  _buildHeader(BuildContext context) {
    return SizedBox(
      width: context.dynamicWidth(293 / 375),
      child: const Text(
        onBoardHeaderText,
        style: TextStyles.onBoardHeaderStyle,
        textAlign: TextAlign.center,
      ),
    );
  }

  _buildDesc(BuildContext context) {
    return SizedBox(
      width: context.dynamicWidth(271 / 375),
      height: context.dynamicHeight(41 / 812),
      child: Column(children: const [
        Text(onBoardDescP1, style: TextStyles.onBoardDescStyle1),
        Text(onBoardDescP2, style: TextStyles.onBoardDescStyle2),
      ]),
    );
  }

  _buildButton(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
      },
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
            width: context.dynamicWidth(205/375),
            height: context.dynamicHeight(56/812),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                      color:Color(0x19083c12),
                      offset: Offset(10, 10),
                      blurRadius: 20,
                      spreadRadius: 0)
                ],
                color: Colors.white),
                child: Row(
                  children: const [
                    Text(
                      onBoardButtonText,
                      style: TextStyles.onBoardDescStyle2,
                    ),
                    Spacer(),
                    Icon(CupertinoIcons.right_chevron)
                  ],
                ),
                ),
      ),
    );
  }
}
