import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('learn flutter Page'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/test.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              color: Colors.lightBlue,
              child: const Center(
                child: Text(
                  'this is a text widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.green : Colors.blue,
              ),
              onPressed: () {
                debugPrint('Elevated button');
              },
              child: const Text('elevated button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('OutlinedButton button');
              },
              child: const Text('OutlinedButton button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text button');
              },
              child: const Text('Text button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('this is the row');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('Row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),
            Checkbox(
              value: isChecked,
              onChanged: (bool? checked) {
                setState(() {
                  isChecked = checked;
                });
              },
            ),
            Image.network(
                'https://scontent.falg5-2.fna.fbcdn.net/v/t39.30808-6/295509828_1942091982648527_3292617047073164532_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5cd70e&_nc_eui2=AeEEnBH-1q81WNzgeEvEGNOdsmCMoTITu6-yYIyhMhO7r3C21Pp77JretJi_ZHjcCmUIklkFX2-OmYbnUW40ciV3&_nc_ohc=bQgUrBAQ8-gAX-DvU7A&_nc_ht=scontent.falg5-2.fna&oh=00_AT-__HnT2X01G1UOspcNj0UVS9XNA-VYOx6qS35ycnBgkQ&oe=62E3D151')
          ],
        ),
      ),
    );
  }
}
