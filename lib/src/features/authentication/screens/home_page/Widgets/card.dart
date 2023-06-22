import 'package:dermist/src/constants/colors.dart';
import 'package:dermist/src/features/authentication/controllers/navbar_controller.dart';
import 'package:dermist/src/features/authentication/screens/home_page/Widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardModel extends StatelessWidget {
  CardModel({Key? key}) : super(key: key);

  final controller = Get.find<NavBarController>();

  @override
  Widget build(BuildContext context) {

    return Obx(
      (){
        if (controller.loading.value){
          return const Center(
            child: CircularProgressIndicator(
          )
        );
        }
        return Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.only(left: 17, right: 17, top: 10),
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
            children: controller.sickList.value
                .map((item) => Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: GestureDetector(
                      onTap: () => showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => BottomSheetCard(sickness: item),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(item.image), fit: BoxFit.cover),
                                boxShadow: const [
                                  BoxShadow(
                                      offset: Offset(0, 1),
                                      spreadRadius: -5,
                                      blurRadius: 12,
                                      color: Color.fromRGBO(201, 201, 201, 1))
                                ]),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 14, left: 10),
                            margin: const EdgeInsets.only(top: 125),
                            height: 45,
                            width: 180,
                            decoration: const BoxDecoration(
                                color: transparencyBlack,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: Text(
                              item.name,
                              style: const TextStyle(
                                color: pureWhite,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )))
                .toList(),
          ),
        );
      }
    );
  }
}
