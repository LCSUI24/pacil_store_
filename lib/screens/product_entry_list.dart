import 'package:flutter/material.dart';
import 'package:pacil_store/models/product_entry.dart';
import 'package:pacil_store/widgets/left_drawer.dart';
import 'package:pacil_store/screens/product_detail.dart';
import 'package:pacil_store/widgets/product_entry_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

class ProductEntryListPage extends StatefulWidget {
  // [UBAH 1] Tambahkan variabel untuk menerima jenis filter dari halaman menu
  final String filterType; 

  const ProductEntryListPage({
    super.key, 
    required this.filterType // Wajib diisi saat dipanggil (misal: "all" atau "mine")
  });

  @override
  State<ProductEntryListPage> createState() => _ProductEntryListPageState();
}

class _ProductEntryListPageState extends State<ProductEntryListPage> {
  
  Future<List<ProductEntry>> fetchProduct(CookieRequest request) async {
    // [UBAH 2] URL request sekarang dinamis sesuai tombol yang ditekan
    // Mengirim parameter ?filter=... ke Django
    final String url = 'http://127.0.0.1:8000/json/?filter=${widget.filterType}';
    
    final response = await request.get(url);
    
    // Decode response to json format
    var data = response;
    
    // Convert json data to ProductEntry objects
    List<ProductEntry> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(ProductEntry.fromJson(d));
      }
    }
    return listProduct;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    
    // [OPSIONAL] Ubah judul halaman sesuai filter biar lebih informatif
    String pageTitle = widget.filterType == 'My' ? 'My Products' : 'Product Entry List';

    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProduct(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData || snapshot.data!.isEmpty) { // Tambahkan cek isEmpty
              return const Column(
                mainAxisAlignment: MainAxisAlignment.center, // Center vertical
                children: [
                  Center( // Center horizontal
                    child: Text(
                      'Belum ada data produk.',
                      style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => ProductEntryCard(
                  product: snapshot.data![index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailPage(
                          product: snapshot.data![index],
                        ),
                      ),
                    );
                  },
                ),
              );
            }
          }
        },
      ),
    );
  }
}