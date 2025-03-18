import 'package:e_commerce_app/screens/home/page/home_screen.dart';
 import 'package:e_commerce_app/screens/home/widgets/bottom_nav_bar.dart';
 import 'package:flutter/material.dart';
 import 'package:icons_plus/icons_plus.dart';
 @@ -14,31 +15,32 @@
 class _HomeState extends State<Home> {
   int _currentIndex = 0;
   final List<Widget> _screens = [
     Container(height: double.infinity, color: Colors.amberAccent),
     //Container(height: double.infinity, color: Colors.amberAccent),
     HomeScreen(),
     Container(height: double.infinity, color: Colors.green),
     Container(height: double.infinity, color: Colors.blue),
     Container(height: double.infinity, color: Colors.red),
   ];
 
   void _onTapMethod(int index) {
     setState(() {
       _currentIndex = index;
     });
   }
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: FAppBar(
         title: 'Mega Shop',
         firstIcon: Iconsax.notification_bing_outline,
         //backButton: true,
       ),
       body: _screens[_currentIndex],
       bottomNavigationBar: BottomBar(
         currentIndex: _currentIndex,
         onTapMethod: _onTapMethod,
       ),
     );
   }
 }
