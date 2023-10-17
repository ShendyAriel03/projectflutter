import 'package:flutter/material.dart';

class TopupPage extends StatefulWidget {
  @override
  _TopupPageState createState() => _TopupPageState();
}

class _TopupPageState extends State<TopupPage> {
  String _selectedBank = 'Bank ABC'; // Bank default yang dipilih
  double _amount = 0.0;

  final List<String> banks = ['Bank ABC', 'Bank XYZ', 'Bank PQR', 'Bank MNO'];
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top-up Saldo'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          Text(
            'Pilih Bank',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          DropdownButton<String>(
            value: _selectedBank,
            items: banks.map((String bank) {
              return DropdownMenuItem<String>(
                value: bank,
                child: Text(bank),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedBank = newValue!;
              });
            },
          ),
          SizedBox(height: 16),
          Text(
            'Jumlah Top-up',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              _amount = double.tryParse(value) ?? 0.0;
            },
            decoration: InputDecoration(
              labelText: 'Jumlah Top-up',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Card(
            child: ListTile(
              title: Text('Total Top-up'),
              trailing: Text('Rp $_amount'),
            ),
          ),
          ElevatedButton(
  onPressed: () {
    final String selectedBank = _selectedBank;
    final double amount = double.tryParse(_amountController.text) ?? 0.0;

    if (amount <= 0) {
      // Tampilkan pesan jika jumlah top-up tidak valid
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Masukkan jumlah top-up yang valid.'),
      ));
    } else {
      // Lakukan pemrosesan transaksi top-up di sini (misalnya, panggil API)
      // Setelah top-up berhasil, tampilkan pesan keberhasilan
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Top-up sebesar Rp $amount berhasil.'),
      ));
    }
  },
  child: Text(
    "Topup Saldo",
    style: TextStyle(
      color: Colors.black,
      fontSize: 20,
    ),
  ),
  style: ElevatedButton.styleFrom(
    primary: Color(0xFF4CAF50), // Ganti warna sesuai kebutuhan Anda
  ),
),

        ],
      ),
    );
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }
}


