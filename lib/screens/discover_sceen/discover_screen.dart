import 'package:flutter/material.dart';

import '../../common/global_colors.dart';
import '../../widgets/button_fliter.dart';
import '../../widgets/search.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        //   foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Khám phá",
          style: TextStyle(
              fontFamily: "Epilogue",
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        iconTheme: IconThemeData(color: GlobalColors.colorBack),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: SearchClass(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: SizedBox(
              height: 28,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        ButtonFilter(
                          background: GlobalColors.colorButton1,
                          colorWidget: GlobalColors.colorButton1,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        ButtonFilter(
                          background: GlobalColors.colorButton1,
                          colorWidget: GlobalColors.colorButton1,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        ButtonFilter(
                          background: GlobalColors.colorButton1,
                          colorWidget: GlobalColors.colorButton1,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        ButtonFilter(
                          background: GlobalColors.colorButton1,
                          colorWidget: GlobalColors.colorButton1,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        ButtonFilter(
                          background: GlobalColors.colorButton1,
                          colorWidget: GlobalColors.colorButton1,
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 7,
                    );
                  },
                  itemCount: 1),
            ),
          )
        ],
      ),
    );
  }
}
