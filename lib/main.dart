import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatsAppSederhana(),
    ),
  );
}

class WhatsAppSederhana extends StatelessWidget {
  const WhatsAppSederhana({super.key});

  @override
  Widget build(BuildContext context) {
    // DefaultTabController membungkus seluruh aplikasi agar tab berfungsi otomatis
    return DefaultTabController(
      length: 3, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          backgroundColor: const Color(0xFF075E54),
          // TabBar diletakkan di bagian bawah appbar
          bottom: const TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black54,
            tabs: [
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
          actions: const [
            Icon(Icons.search),
            SizedBox(width: 10),
            Icon(Icons.more_vert),
            SizedBox(width: 10),
          ],
        ),
        // TabBarView isi dari masing-masing tab
        body: const TabBarView(
          children: [
            HalamanChat(), // Panggil class daftar chat
            HalamanStatus(),
            HalamanPanggilan(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF25D366),
          child: const Icon(Icons.message, color: Colors.white),
          onPressed: () {},
        ),
      ),
    );
  }
}

class HalamanChat extends StatelessWidget {
  const HalamanChat({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        // ListTile
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text("Budi", style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("Halo, apa kabar?"),
          trailing: Text("15:30"), // Bagian kanan (waktu)
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text("Siti", style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("Jadi kerja kelompok nanti?"),
          trailing: Text("14:15"),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text("Andi", style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("Woke siap!"),
          trailing: Text("10:00"),
        ),
      ],
    );
  }
}

class HalamanStatus extends StatelessWidget {
  const HalamanStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: const Icon(Icons.person, color: Colors.white),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.add, color: Colors.white, size: 20),
                ),
              ),
            ],
          ),
          title: const Text(
            "Status saya",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text("Ketuk untuk menambahkan status"),
        ),
      ],
    );
  }
}

class HalamanPanggilan extends StatelessWidget {
  const HalamanPanggilan({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text("Budi", style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("Hari ini, 09:00"),
          trailing: Icon(Icons.call, color: Colors.green),
        ),
      ],
    );
  }
}
