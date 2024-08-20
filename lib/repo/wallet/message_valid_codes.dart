import 'package:flutter/material.dart';
import 'package:rideshare/model/wallet/get_codes_model.dart';
import 'package:rideshare/text_button.dart';

void showValidCodes(BuildContext context, List<Code> codes,
    void Function(String code) useCode) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Column(
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: codes.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(codes[index].code),
                        trailing: ElevatedButton.icon(
                          onPressed: () {
                            useCode(codes[index].code);
                            Navigator.of(context).pop();
                          },
                          label: const Text('Use it'),
                          icon: const Icon(Icons.play_arrow),
                        ),
                      );
                    }),
              ),
              Button(
                text: 'Cancel',
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      });
}
