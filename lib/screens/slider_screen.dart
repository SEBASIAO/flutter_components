import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Slider Screen"),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primaryColor,
              value: _sliderValue,
              onChanged: sliderEnable
                  ? (value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    }
                  : null,
            ),
            Checkbox(
              value: sliderEnable,
              onChanged: (value) {
                setState(() {
                  sliderEnable = value ?? true;
                });
              },
            ),
            CheckboxListTile(
              activeColor: AppTheme.primaryColor,
              title: const Text("Habilitar Slider"),
              value: sliderEnable,
              onChanged: (value) {
                setState(() {
                  sliderEnable = value ?? true;
                });
              },
            ),
            Switch.adaptive(
              activeColor: AppTheme.primaryColor,
              value: sliderEnable,
              onChanged: (value) {
                setState(() {
                  sliderEnable = value;
                });
              },
            ),
            SwitchListTile.adaptive(
              title: const Text("Habilitar Slider"),
              activeColor: AppTheme.primaryColor,
              value: sliderEnable,
              onChanged: (value) {
                setState(() {
                  sliderEnable = value;
                });
              },
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      "https://rickandmortyapi.com/api/character/avatar/5.jpeg"),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            )
          ],
        ));
  }
}
