import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:main_screen_homework/constants.dart';
import 'package:kartal/kartal.dart';

class CustomBottomBar extends StatefulWidget {
  final int index;
  const CustomBottomBar({Key? key,required this.index}) : super(key: key);

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  late final int _currentIndex = widget.index;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: context.dynamicHeight(66/812),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:11.0),
          child: Row(
            children: List.generate(3, (index) {
              return Expanded(child: _buildBarItem(index));
            })
          ),
        ),
      ),
    );
  }
  _buildBarItem(index){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.5, vertical: 5),
      child: Container( 
        decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
        Radius.circular(8) 
      ),
        color: (index==_currentIndex) ? warmBlue.withOpacity(0.20448899269104004) : Colors.transparent
  ),
      child: _buildIcon(index),
      ),
    );
  }

  _buildIcon(index){
    return Center(
      child: SvgPicture.asset(iconsPaths[index],
      color: (index==_currentIndex) ? warmBlue : Colors.grey,
      
      ),
    );
  }
}