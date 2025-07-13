import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:z_store_app/core/helper/extensions.dart';
import 'package:z_store_app/core/routing/routes.dart';
import 'package:z_store_app/core/theming/colors.dart';
import 'package:z_store_app/features/cart/presentation/views/cart_view.dart';
import 'package:z_store_app/features/home/presentation/views/home_view.dart';
import 'package:z_store_app/features/wishlist/presentation/views/wishlist_view.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screenWidgets = [
    HomeView(),
    CartView(),
    WishlistView(),
    //LoginView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenWidgets[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          if (index == 3) {
            context.pushReplacementNamed(Routes.loginView);
          } else {
            setState(() {
              selectedIndex = index;
            });
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
        ],
        backgroundColor: ColorsManager.kPrimaryColor,
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        selectedItemColor: ColorsManager.kSecondaryColor,
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
        unselectedItemColor: Color(0xFF484C52),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
