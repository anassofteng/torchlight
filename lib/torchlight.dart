import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class Torchlight extends StatefulWidget {
  const Torchlight({super.key});

  @override
  State<Torchlight> createState() => _TorchlightState();
}

class _TorchlightState extends State<Torchlight> {
  final bgColor = const Color(0xff2C3333);
  final textColor = const Color(0xffE7F6F2);
  var isActive = false;
  var controller = TorchController();

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Torch Lite",
          style: TextStyle(color: textColor),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Column(
            children: [
              Image.network(
                isActive
                    ? 'https://cdn-icons-png.flaticon.com/512/20/20476.png'
                    : 'https://cdn-icons-png.flaticon.com/512/5806/5806162.png',
                width: 200,
                height: 200,
                color: isActive ? null : textColor,
              ),
              SizedBox(
                height: Size.height * 0.1,
              ),
              CircleAvatar(
                minRadius: 30,
                maxRadius: 45,
                child: Transform.scale(
                  scale: 1.5,
                  child: IconButton(
                    onPressed: () {
                      controller.toggle();
                      isActive = !isActive;
                      setState(() {});
                    },
                    icon: Icon(Icons.power_settings_new),
                  ),
                ),
              )
            ],
          )),
          Text(
            "Developed by Anas Arshad",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: Size.height * 0.05,
          )
        ]),
      ),
    );
  }
}
