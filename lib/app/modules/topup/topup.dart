import 'package:flutter/material.dart';

class TopUpBankPage extends StatefulWidget {
  @override
  _TopUpBankPageState createState() => _TopUpBankPageState();
}

class _TopUpBankPageState extends State<TopUpBankPage> {
  final _formKey = GlobalKey<FormState>();
  String selectedBank = 'Select a Bank';
  double amount = 0.0;

  final List<String> banks = ['Select a Bank', 'Bank A', 'Bank B', 'Bank C'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top-Up via Bank'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: DropdownButtonFormField(
                    value: selectedBank,
                    items: banks.map((bank) {
                      return DropdownMenuItem(
                        value: bank,
                        child: Text(bank),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedBank = value.toString();
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Select Bank',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {
                        amount = double.tryParse(value) ?? 0.0;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Amount',
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an amount';
                      }
                      if (amount <= 0.0) {
                        return 'Amount must be greater than 0';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                    // Submit the form (e.g., process the top-up)
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Top-up submitted: $selectedBank - $amount'),
                      ),
                    );
                  }
                },
                child: Text('Submit', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TopUpBankPage(),
  ));
}
