import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //code to make the header responsive using media query
      width: MediaQuery.of(context).size.width,
      height:
          MediaQuery.of(context).size.height * 0.1, //30% of the screen height
      child: Stack(
        children: [
          Positioned(
            left: 10,
            right: 150,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'Search product',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.all(10),
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.camera_alt_outlined),
                  fillColor: Colors.white,
                  filled: true,
                  focusColor: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            left: 290,
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                  overlayColor: WidgetStateProperty.all(Colors.red),
                  onTap: () {},
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.red,
                      ),
                    ),
                  )),
            ),
          ),
          Positioned(
              left: 350,
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                    overlayColor: WidgetStateProperty.all(Colors.red),
                    onTap: () {},
                    child: Ink(
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.message,
                          color: Colors.red,
                        ),
                      ),
                    )),
              ))
        ],
      ),
    );
  }
}
