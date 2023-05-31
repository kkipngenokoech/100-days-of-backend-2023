import "package:flutter/material.dart";

class FormValidationPage extends StatefulWidget {
  @override
  _FormValidationPageState createState() => _FormValidationPageState();
}

class Order{
  late String item;
  late int quantity;
}

class _FormValidationPageState extends State<FormValidationPage> {
  final _formKey = GlobalKey<FormState>();

  Order _order = Order();
  String? _validateItemRequired(String value) {
    return value.isEmpty ? 'item is required' : null;
  }

  String? _validateItemCount(String value) {
    int? _valueAsInt = value.isEmpty ? 0 : int.tryParse(value);
    return _valueAsInt == 0 ? 'At least one item is required' : null;
  }

  void _submitOrder() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('order Item: ${_order.item}');
      print('order Item: ${_order.quantity}');
      print("Order created successfully");
    }
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.airplanemode_on_rounded),
          onPressed: () {},
          tooltip: 'time to fly',
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Espresso',
                        labelText: 'Item'
                      ),
                      validator: (value) => _validateItemRequired(value!),
                      onSaved: (value) => _order.item = value!,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: '3',
                        labelText: "Quantity"
                      ),
                      validator: (value) => _validateItemCount(value!),
                      onSaved: (value) => _order.quantity = value as int,
                    ),
                    const Divider(height: 32.0),
                    ElevatedButton(
                      onPressed: () => _submitOrder(),
                      child: const Icon(Icons.send),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

