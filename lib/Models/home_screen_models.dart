import 'package:flutter/material.dart';

class HomePageModels {
  String title;
  String? percent;
  IconData icon;

  HomePageModels({
    required this.title,
    this.percent,
    required this.icon,
  });
}

List<HomePageModels> getHomePageModels = [
  HomePageModels(
    title: "Profile Status",
    percent: '17 %',
    icon: Icons.add,
  ),
  HomePageModels(
    title: "My Referrals",
    percent: '00',
    icon: Icons.add,
  ),
  HomePageModels(
    title: "View Party Organization",
    icon: Icons.add,
  ),
  HomePageModels(
    title: "Latest Survey",
    icon: Icons.add,
  ),
  HomePageModels(
    title: "Upcoming Party Events ",
    icon: Icons.add,
  ),
  HomePageModels(
    title: "View More ",
    icon: Icons.add,
  ),
  HomePageModels(
    title: "Profile Status",
    icon: Icons.add,
  ),
];
