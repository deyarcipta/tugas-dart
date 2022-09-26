import 'dart:io';

class Indonesia {
  var nama = "";
  int jumlah_pulau = 16771;
  int jumlah_provinsi = 37;
  var type = "";

  void fact(ubah) {
    print("BERIKUT DATA PULAU DAN PROVINSI $ubah DI INDONESIA");
    print("==============================================");
    print("Jumlah Pulau Di Indonesia: $jumlah_pulau");
    print("Jumlah Provinsi Di Indonesia: $jumlah_provinsi");
    print("==============================================");
  }

  void setNama() {
    stdout.write("Masukan nama anda: ");
    String inputNama = stdin.readLineSync()!;
    this.nama = inputNama;
  }

  void setType(pilih) {
    stdout.write("Masukan Menu $pilih Anda: ");
    String inputType = stdin.readLineSync()!;
    this.type = inputType;
  }

  void setPulau() {
    stdout.write("Masukan data pulau: ");
    var number = stdin.readLineSync();
    var inputPulau = int.parse(number ?? '0');
    this.jumlah_pulau = inputPulau;
  }

  void setProvinsi() {
    stdout.write("Masukan data provinsi: ");
    var number = stdin.readLineSync();
    var inputProvinsi = int.parse(number ?? '0');
    this.jumlah_provinsi = inputProvinsi;
  }

  void requestInfo() {}
}

class Menu extends Indonesia {
  void run() {
    while (true) {
      print("Silakan $nama Pilih Menu Dibawah Ini:");
      print("1. Merubah Data Pulau dan Provinsi");
      print("2. Melihat Data");
      print("3. Keluar Program");
      setType("Pilihan");
      if (type == "1") {
        setPulau();
        setProvinsi();
        fact("YANG BERHASIL DIUBAH");
      } else if (type == "2") {
        fact("");
      } else if (type == "3") {
        finish();
      }
    }
  }

  void view() {
    fact("");
  }

  void finish() {
    print("==================================================");
    print("Terima Kasih $nama, sudah Melihat Data Indonesia");
    exit(0);
  }
}

class Provinsi extends Menu {
  int provinsiSumatra = 10;
  int provinsiJawa = 6;
  int provinsiKalimantan = 5;
  int provinsiBali = 1;
  int provinsiNusaTenggara = 2;
  int provinsiSulawesi = 6;
  int provinsiMalukuPapua = 7;

  @override
  void view() {
    print("Silakan $nama Pilih Menu Dibawah Ini:");
    print("1. Melihat Data Provinsi");
    print("2. Kembali Ke Menu");
    setType("Menu");
    if (type == "1") {
      dataProvinsi();
    } else if (type == "2") {
      run();
    }
  }

  void dataProvinsi() {
    int jumlahProv = provinsiSumatra +
        provinsiJawa +
        provinsiKalimantan +
        provinsiBali +
        provinsiNusaTenggara +
        provinsiSulawesi +
        provinsiMalukuPapua;
    print("Silakan $nama Provinsi Dibawah Ini:");
    print("1. Provinsi Di Sumatra");
    print("2. Provinsi Di Jawa");
    print("3. Provinsi Di Kalimantan");
    print("4. Provinsi Di Bali");
    print("5. Provinsi Di Nusa Tenggara");
    print("6. Provinsi Di Sulawesi");
    print("7. Provinsi Di Maluku dan Papua");
    print("8. Total Provinsi");
    setType("Provinsi");
    if (type == "1") {
      print("Jumlah Provinsi di Sumatra: $provinsiSumatra");
    } else if (type == "2") {
      print("Jumlah Provinsi di Jawa: $provinsiJawa");
    } else if (type == "3") {
      print("Jumlah Provinsi di Kalimantan: $provinsiKalimantan");
    } else if (type == "4") {
      print("Jumlah Provinsi di Bali: $provinsiBali");
    } else if (type == "5") {
      print("Jumlah Provinsi di Nusa Tenggara: $provinsiNusaTenggara");
    } else if (type == "6") {
      print("Jumlah Provinsi di Sulawesi: $provinsiSulawesi");
    } else if (type == "7") {
      print("Jumlah Provinsi di Maluku dan Papua: $provinsiMalukuPapua");
    } else if (type == "8") {
      print("Jumlah Provinsi di Indonesia: $jumlahProv");
    }
  }
}

class Kota extends Menu {
  int kotaSumatra = 154;
  int kotaJawa = 119;
  int kotaKalimantan = 56;
  int kotaBali = 9;
  int kotaNusaTenggara = 32;
  int kotaSulawesi = 6;
  int kotaMalukuPapua = 7;

  @override
  void view() {
    print("Silakan $nama Pilih Menu Dibawah Ini:");
    print("1. Melihat Data Provinsi");
    print("2. Kembali Ke Menu");
    setType("Menu");
    if (type == "1") {
      dataKota();
    } else if (type == "2") {
      run();
    }
  }

  void dataKota() {
    int jumlahKota = kotaSumatra +
        kotaJawa +
        kotaKalimantan +
        kotaBali +
        kotaNusaTenggara +
        kotaSulawesi +
        kotaMalukuPapua;
    print("Silakan $nama kota Dibawah Ini:");
    print("1. kota Di Sumatra");
    print("2. kota Di Jawa");
    print("3. kota Di Kalimantan");
    print("4. kota Di Bali");
    print("5. kota Di Nusa Tenggara");
    print("6. kota Di Sulawesi");
    print("7. kota Di Maluku dan Papua");
    print("8. Total kota");
    setType("kota");
    if (type == "1") {
      print("Jumlah kota di Sumatra: $kotaSumatra");
    } else if (type == "2") {
      print("Jumlah kota di Jawa: $kotaJawa");
    } else if (type == "3") {
      print("Jumlah kota di Kalimantan: $kotaKalimantan");
    } else if (type == "4") {
      print("Jumlah kota di Bali: $kotaBali");
    } else if (type == "5") {
      print("Jumlah kota di Nusa Tenggara: $kotaNusaTenggara");
    } else if (type == "6") {
      print("Jumlah kota di Sulawesi: $kotaSulawesi");
    } else if (type == "7") {
      print("Jumlah kota di Maluku dan Papua: $kotaMalukuPapua");
    } else if (type == "8") {
      print("Jumlah Kota di Indonesia: $jumlahKota");
    }
  }
}

class Kecamatan extends Menu {
  int kecamatanSumatra = 1961;
  int kecamatanJawa = 2203;
  int kecamatanKalimantan = 623;
  int kecamatanBali = 57;
  int kecamatanNusaTenggara = 432;
  int kecamatanSulawesi = 1017;
  int kecamatanMalukuPapua = 1029;

  @override
  void view() {
    print("Silakan $nama Pilih Menu Dibawah Ini:");
    print("1. Melihat Data Kota");
    print("2. Kembali Ke Menu");
    setType("Menu");
    if (type == "1") {
      datakecamatan();
    } else if (type == "2") {
      run();
    }
  }

  void datakecamatan() {
    int jumlahkecamatan = kecamatanSumatra +
        kecamatanJawa +
        kecamatanKalimantan +
        kecamatanBali +
        kecamatanNusaTenggara +
        kecamatanSulawesi +
        kecamatanMalukuPapua;
    print("Silakan $nama kecamatan Dibawah Ini:");
    print("1. kecamatan Di Sumatra");
    print("2. kecamatan Di Jawa");
    print("3. kecamatan Di Kalimantan");
    print("4. kecamatan Di Bali");
    print("5. kecamatan Di Nusa Tenggara");
    print("6. kecamatan Di Sulawesi");
    print("7. kecamatan Di Maluku dan Papua");
    print("8. Total kecamatan");
    setType("kecamatan");
    if (type == "1") {
      print("Jumlah kecamatan di Sumatra: $kecamatanSumatra");
    } else if (type == "2") {
      print("Jumlah kecamatan di Jawa: $kecamatanJawa");
    } else if (type == "3") {
      print("Jumlah kecamatan di Kalimantan: $kecamatanKalimantan");
    } else if (type == "4") {
      print("Jumlah kecamatan di Bali: $kecamatanBali");
    } else if (type == "5") {
      print("Jumlah kecamatan di Nusa Tenggara: $kecamatanNusaTenggara");
    } else if (type == "6") {
      print("Jumlah kecamatan di Sulawesi: $kecamatanSulawesi");
    } else if (type == "7") {
      print("Jumlah kecamatan di Maluku dan Papua: $kecamatanMalukuPapua");
    } else if (type == "8") {
      print("Jumlah kecamatan di Indonesia: $jumlahkecamatan");
    }
  }
}

class Kelurahan extends Menu {
  int kelurahanSumatra = 25512;
  int kelurahanJawa = 25272;
  int kelurahanKalimantan = 7240;
  int kelurahanBali = 716;
  int kelurahanNusaTenggara = 4505;
  int kelurahanSulawesi = 10604;
  int kelurahanMalukuPapua = 9994;

  @override
  void view() {
    print("Silakan $nama Pilih Menu Dibawah Ini:");
    print("1. Melihat Data Provinsi");
    print("2. Kembali Ke Menu");
    setType("Menu");
    if (type == "1") {
      datakelurahan();
    } else if (type == "2") {
      run();
    }
  }

  void datakelurahan() {
    int jumlahkelurahan = kelurahanSumatra +
        kelurahanJawa +
        kelurahanKalimantan +
        kelurahanBali +
        kelurahanNusaTenggara +
        kelurahanSulawesi +
        kelurahanMalukuPapua;
    print("Silakan $nama kelurahan Dibawah Ini:");
    print("1. kelurahan Di Sumatra");
    print("2. kelurahan Di Jawa");
    print("3. kelurahan Di Kalimantan");
    print("4. kelurahan Di Bali");
    print("5. kelurahan Di Nusa Tenggara");
    print("6. kelurahan Di Sulawesi");
    print("7. kelurahan Di Maluku dan Papua");
    print("8. Total kelurahan");
    setType("kelurahan");
    if (type == "1") {
      print("Jumlah kelurahan di Sumatra: $kelurahanSumatra");
    } else if (type == "2") {
      print("Jumlah kelurahan di Jawa: $kelurahanJawa");
    } else if (type == "3") {
      print("Jumlah kelurahan di Kalimantan: $kelurahanKalimantan");
    } else if (type == "4") {
      print("Jumlah kelurahan di Bali: $kelurahanBali");
    } else if (type == "5") {
      print("Jumlah kelurahan di Nusa Tenggara: $kelurahanNusaTenggara");
    } else if (type == "6") {
      print("Jumlah kelurahan di Sulawesi: $kelurahanSulawesi");
    } else if (type == "7") {
      print("Jumlah kelurahan di Maluku dan Papua: $kelurahanMalukuPapua");
    } else if (type == "8") {
      print("Jumlah kelurahan di Indonesia: $jumlahkelurahan");
    }
  }
}
