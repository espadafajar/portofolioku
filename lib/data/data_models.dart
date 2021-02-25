import 'package:flutter/cupertino.dart';

class DataModels {
  final String title;
  final String imageUrl;
  final String urlApp;
  DataModels({@required this.imageUrl, this.urlApp, @required this.title});
}

List<DataModels> listData = [
  DataModels(
      title: "APDKu", imageUrl: "apdku", urlApp: "http://www.google.com"),
  DataModels(
      title: 'Bansos Sumbawa',
      imageUrl: "bansos",
      urlApp: "http://www.google.com"),
  DataModels(
      title: "Tanggap Corona",
      imageUrl: "covid",
      urlApp:
          "https://drive.google.com/file/d/1NjhHPZBj3N_X629ytxHAQk8z9cinsU2l/view?fbclid=IwAR2zshd5DOuXWfpBAp6jXOfL78R4z1aT1COKGeUePXjOxgD7VxctvroQHik"),
  DataModels(
      title: "Hotels UI",
      imageUrl: "github",
      urlApp: "https://github.com/espadafajar/dayone_UImedis"),
  DataModels(
      title: "Kamuskukamusmu",
      imageUrl: "kamus",
      urlApp:
          "https://play.google.com/store/apps/details?id=com.misteref.kamuskukamusmu"),
  DataModels(
      title: "Resep Masakan Indonesia lengkap Offline",
      imageUrl: "makan",
      urlApp:
          "https://play.google.com/store/apps/details?id=com.misteref.resep_masakan_lengkap_offline"),
  DataModels(
      title: "Pio : Al-Quran dan terjemahan offline",
      imageUrl: "quran",
      urlApp:
          "https://play.google.com/store/apps/details?id=com.misteref.pioalquranterjemahan"),
  DataModels(
      title: "Siandini Kabupaten Sumbawa",
      imageUrl: "siandini",
      urlApp:
          "https://play.google.com/store/apps/details?id=com.sumbawa.siandini"),
  DataModels(
      title: "Sumbawa New Normal",
      imageUrl: "sumbawa",
      urlApp:
          "https://play.google.com/store/apps/details?id=com.dkis.sumbawa_new_normal"),
];
