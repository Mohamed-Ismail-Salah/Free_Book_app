
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8), topLeft: Radius.circular(8)), name: "19.99€",
            )),

        Expanded(
            child: CustomButton(
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8), topRight: Radius.circular(8)),
              name: 'Free preview',
            )),
      ],
    );
  }
}
