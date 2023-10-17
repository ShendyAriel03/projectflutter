import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  String selectedOperator = 'Telkomsel';
  int selectedNominal = 50000;
  String selectedPaymentMethod = 'Transfer Bank';
  bool payWithBalance = false;

  List<String> operators = ['Telkomsel', 'XL', 'Indosat', 'Three'];
  List<int> nominals = [50000, 100000, 200000, 500000];
  List<String> paymentMethods = ['Transfer Bank', 'e-Wallet', 'Kartu Kredit'];

  TextEditingController phoneController = TextEditingController();
  TextEditingController paymentInfoController = TextEditingController();

  bool isPhoneNumberValid = true;
  bool isPaymentInfoValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Transaksi Pulsa'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.7),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  DropdownButton<String>(
                    value: selectedOperator,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedOperator = newValue!;
                      });
                    },
                    items: operators.map((String operator) {
                      return DropdownMenuItem<String>(
                        value: operator,
                        child: Text(operator),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 12),
                  DropdownButton<int>(
                    value: selectedNominal,
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedNominal = newValue!;
                      });
                    },
                    items: nominals.map((int nominal) {
                      return DropdownMenuItem<int>(
                        value: nominal,
                        child: Text('Rp ${nominal.toString()}'),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      labelText: 'Nomor Telepon',
                      prefixIcon: Icon(Icons.phone),
                      errorText: isPhoneNumberValid ? null : 'Nomor telepon tidak boleh kosong',
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 12),
                  DropdownButton<String>(
                    value: selectedPaymentMethod,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedPaymentMethod = newValue!;
                      });
                    },
                    items: paymentMethods.map((String method) {
                      return DropdownMenuItem<String>(
                        value: method,
                        child: Text(method),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    controller: paymentInfoController,
                    decoration: InputDecoration(
                      labelText: 'Informasi Pembayaran',
                      prefixIcon: Icon(Icons.payment),
                      errorText: isPaymentInfoValid ? null : 'Informasi pembayaran tidak boleh kosong',
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Text('Bayar dengan Saldo'),
                      Switch(
                        value: payWithBalance,
                        onChanged: (value) {
                          setState(() {
                            payWithBalance = value;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      // Validasi nomor telepon dan informasi pembayaran
                      final phoneNumber = phoneController.text;
                      final paymentInfo = paymentInfoController.text;

                      setState(() {
                        isPhoneNumberValid = phoneNumber.isNotEmpty;
                        isPaymentInfoValid = paymentInfo.isNotEmpty;
                      });

                      if (isPhoneNumberValid && isPaymentInfoValid) {
                        // Lakukan transaksi jika data valid
                        // Contoh: validasi input, melakukan transaksi, menampilkan pesan sukses atau gagal.
                        if (payWithBalance) {
                          // Lakukan pembayaran dengan saldo.
                        } else {
                          // Lakukan pembayaran menggunakan metode pembayaran yang dipilih.
                        }

                        // Tampilkan pesan keberhasilan
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Transaksi berhasil.'),
                        ));
                      }
                    },
                    child: Text('Bayar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
