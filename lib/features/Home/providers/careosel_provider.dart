import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List<String> careouselImageUrls = [
  'https://raw.githubusercontent.com/ShehanSulakshana/ShehanSulakshana/refs/heads/main/ProjectAssets/Stepz-Store-Repo-Banner.jpg',
  'https://raw.githubusercontent.com/ShehanSulakshana/ShehanSulakshana/refs/heads/main/ProjectAssets/Stepz-Store-Repo-Banner.jpg',
  'https://raw.githubusercontent.com/ShehanSulakshana/ShehanSulakshana/refs/heads/main/ProjectAssets/Stepz-Store-Repo-Banner.jpg',
];

final careoselProvider = Provider((ref) => careouselImageUrls);
