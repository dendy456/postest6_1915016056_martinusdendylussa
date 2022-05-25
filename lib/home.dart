import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'mainPage.dart';
import 'splash_screen.dart';
import 'text_ctrl.dart';
import 'checkbox_ctrl.dart';
import 'mainPage.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  Widget myLogo() {
    return Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("asset/kail1.png"))));
  }

  Widget myContainer() {
    return Container(
      width: 30, //MediaQuery.of(context).size.width,
      height: 30,
      color: Colors.amber,
      margin: EdgeInsets.all(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(0, 103, 120, 50),
        child: ListView(
          children: [
            Column(
              children: [
                myLogo(),
                Container(
                  margin: EdgeInsets.only(bottom: 60),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      // color: Color.fromARGB(87, 120, 192, 251),
                      ),
                  child: Column(
                    children: [
                      Image.asset("asset/font2.png"),
                      Text(
                        'Martinus Dendy Lussa',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Welcome To Kail Store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 10, bottom: 25),
                  child: Text(
                    'Segala Kebutuhan Mancing Anda Terpenuhi Semuanya Di sini, Bagaikan Surga Bagi Para Angler... ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      myContainer(),
                      myContainer(),
                      myContainer(),
                      myContainer(),
                      myContainer(),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => HalData(),
                        ));
                  },
                  child: const Text("Pesan Sekarang"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HalData extends StatelessWidget {
  HalData({Key? key}) : super(key: key);
  bool setuju = false;
  final DataController data = Get.put(DataController());
  final SyaratController syarat = Get.put(SyaratController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KAIL STORE"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Image.asset("asset/font2.png"),
              decoration: BoxDecoration(
                color: Colors.black45,
              ),
            ),
            ListTile(
              title: Text("Beranda"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Contact"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("About"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(0, 103, 120, 50),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('asset/font2.png'))),
                ),
                Text(
                    'Silahkan untuk mengisi data sebelum melakukan pembelian '),
                Text('di toko ini...'),
                const SizedBox(height: 20),
                TextField(
                  controller: data.pembeliCtrl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nama Pembeli",
                    hintText: 'Isi Nama Anda',
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: data.alamatCtrl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Alamat",
                    hintText: 'Isi Alamat Anda',
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: data.noHpCtrl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nomor Hp",
                    hintText: 'Cth. 0813xxxxxxxx',
                  ),
                ),
                const SizedBox(height: 30),
                // ListTile(
                //   title: Text("Laki-Laki"),
                //   // Bungkus dengan Obx() agar widget yang memiliki value dari GetX dapat bisa berubah nilainya
                //   leading: Obx(
                //     () => Radio<Gender>(
                //       value: Gender.cowo,
                //       groupValue: rc.cowo.value, // Ambil value dengan getter
                //       onChanged: (value) {
                //         // Update nilai baru dengan setter
                //         rc.cowo(value);
                //       },
                //       // onChanged: rc.onChanged,
                //     ),
                //   ),
                // ),
                // ListTile(
                //   title: Text("Perempuan"),
                //   // Bungkus dengan Obx() agar widget yang memiliki value dari GetX dapat bisa berubah nilainya
                //   leading: Obx(
                //     () => Radio<Gender>(
                //       value: Gender.cewe,
                //       groupValue: rc.cewe.value, // Ambil value dengan getter
                //       onChanged: rc.onChanged,
                //     ),
                //   ),
                // ),
                const SizedBox(height: 20),
                ListTile(
                  title: const Text(
                      "Saya menyetujui syarat, ketentuan, dan privasi Toko"),
                  leading: Obx(
                    () => Checkbox(
                      value: syarat.setuju.value,
                      onChanged: (value) {
                        syarat.setuju(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: data.onPressed,
              child: const Text("Konfirmasi"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(mainPages()), // Get.to() mirip Navigator.push()
        child: Text("->"),
      ),
    );
  }
}
