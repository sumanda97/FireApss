import 'package:kebakaranapps/models/kamaranak.dart';
import 'package:kebakaranapps/models/kamartengah.dart';

class RuangUtama {
  int temperature;
  String humidity;
  String status;
  String lokasi;
  String temperaturek;
  String humidityk;
  String koordinat;
  List<KamarTengah> kamarTengah;
  List<KamarAnak> kamarAnak;

  RuangUtama(
      {this.temperature,
      this.humidity,
      this.status,
      this.humidityk,
      this.koordinat,
      this.temperaturek,
      this.lokasi,
      this.kamarTengah,
      this.kamarAnak});
}

// RUANG TENGAH
List<RuangUtama> ruangUtamas = [
  RuangUtama(
      temperature: 28,
      humidity: "70",
      status: "Tidak Aktif",
      lokasi: "Kamar Utama",
      koordinat: "0.92323,2.312314",
      temperaturek: "50",
      humidityk: "40"),
];

// KAMAR UTAMA
List<KamarTengah> kamarTengahs = [
  KamarTengah(
      id: 1,
      temperature: 25,
      humidity: "73",
      status: "Aktif",
      lokasi: "Kamar Tengah",
      koordinat: "0.55129,2.32342",
      temperaturek: "50",
      humidityk: "40"),
];
// KAMAR ANAK
List<KamarAnak> kamarAnaks = [
  KamarAnak(
      id: 1,
      temperature: 27,
      humidity: "71",
      status: "Aktif",
      lokasi: "Kamar Anak",
      koordinat: "0.111111,2.11111",
      temperaturek: "50",
      humidityk: "40"),
];
