import 'package:flutter/material.dart';
import 'package:main_screen_homework/bottom_bar.dart';
import 'package:main_screen_homework/constants.dart';
import 'package:kartal/kartal.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomBar(
        index: 0,
      ),
      backgroundColor: darkGreyBlue,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const Spacer(
              flex: 76,
            ),
            Expanded(
              flex: 118,
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: context.dynamicWidth(260 / 375),
                  child: _buildHeader(),
                ),
              ),
            ),
            const Spacer(
              flex: 19,
            ),
            Expanded(
              flex: 34,
              child: Row(
                children: [
                  _buildSubsText(),
                  const Spacer(),
                  _buildCleanedCard()
                ],
              ),
            ),
            const Spacer(
              flex: 8,
            ),
            Expanded(
              flex: 481 - 8,
              child: _buildList(context),
            )
          ],
        ),
      ),
    );
  }

  _buildHeader() {
    return // Header
        const Text(headerText,
            style: TextStyles.montserratBold, textAlign: TextAlign.left);
  }

  _buildSubsText() {
    return const Text(
      subsText,
      style: TextStyles.montserratSemiBold,
      textAlign: TextAlign.left,
    );
  }

  _buildCleanedCard() {
    return Container(
      width: 135,
      height: 34,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: const Color(0xffa8bcff).withOpacity(0.15000000596046448)),
      child: const Center(
        child: Text(
          cleanedText,
          style: TextStyles.montserratSemiBold14,
        ),
      ),
    );
  }

  _buildList(context) {
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical:4.0),
            child: Container(
              width: 343,
              height: 76,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.white),
              child: ListTile(
                trailing: Container(
    width: context.dynamicWidth(44/375),
    height: context.dynamicHeight(44/812),
    child: Icon(Icons.delete,color: warmBlue,),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(
      Radius.circular(8) 
    ),
      color: warmBlue.withOpacity(0.1)
  )
  ),

                title: Text(
                  titles[index],
                  style: TextStyles.listTileTitleTheme,
                  textAlign: TextAlign.left,
                ),
                subtitle: Text(
                  urls[index],
                  style: TextStyles.listTileSubTitleIndex,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.fade,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
