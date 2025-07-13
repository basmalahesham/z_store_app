import 'package:flutter/material.dart';
import 'package:z_store_app/core/widgets/custom_app_bar.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        widget: Icon(Icons.search, color: Colors.black87, size: 20),
      ),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
