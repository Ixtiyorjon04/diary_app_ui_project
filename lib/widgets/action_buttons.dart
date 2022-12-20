import 'package:flutter/material.dart';

class ActionButtons extends StatefulWidget {
  final Function change;
  const ActionButtons({Key? key,required this.change}) : super(key: key);

  @override
  State<ActionButtons> createState() => _ActionButtonsState();
}

class _ActionButtonsState extends State<ActionButtons> {
  bool isFront = true;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Container(
            height: 50.0,
            width: 155,
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.wb_sunny_rounded),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Today",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                        Text(
                          "OCT 11/2022",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          const Spacer(),
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
                color: Colors.black87, shape: BoxShape.circle),
            child: const Icon(
              Icons.mode_edit_outline,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              widget.change();
              setState(() {
                isFront = !isFront;
              });
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: isFront ? Colors.black87 : Colors.cyan,
                  shape: BoxShape.circle),
              child: Icon(
                isFront
                    ? Icons.calendar_month_rounded
                    : Icons.undo_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
