import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double _total = 0;

  void _update(String val) {
    setState(() {
      if (val.isEmpty) {
        _total = 0;
      } else {
        int eb = int.parse(val);
        _total += eb;
      }
    });
  }

  // void Calculate(){};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Calculate your CarbonFootPrints"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 50.0,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Generated CarbonFootPrint: ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(10.0),
              child: SizedBox(
                height: 50.0,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "${_total}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Column(children: [
              Text(
                "Enter your details here".toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text("ElectricBill"),
                  hintText: "Enter your Electric Bill",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
                onChanged: (val) {
                  _update(val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text("OilBill"),
                  hintText: "Enter your Oil Bill",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
                onChanged: (val) {
                  _update(val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text("GasBill"),
                  hintText: "Enter your Gas Bill",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
                onChanged: (val) {
                  _update(val);
                },
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
