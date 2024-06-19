import 'package:aquapro/core/Compo/CustomGrid.dart';
import 'package:aquapro/core/Theme/AppColor.dart';
import 'package:aquapro/core/Theme/AppSize.dart';
import 'package:flutter/material.dart';


class CustomCBottomSheet extends StatelessWidget {

  const CustomCBottomSheet({super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        CustomGrid(
          image: 'assets/img/camion.png',
          Name: 'Rostom',
          adress: '123 Main St',
          matricule: '12234 113 05',
          number: '123-456-7890',
          ontap: () {},
        ),
        const SizedBox(height: 29),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 44,
            width: 125,
            child: MaterialButton(
              onPressed: (){
                Navigator.pushNamed(context, '/reservation');
              },
              color: AppColors.secondry,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8), // Adjust the radius as needed
              ),
              child: const Text(
                'Reservation',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(width: AppSizes.sizebsheet),
          SizedBox(
            height: 44,
            width: 125,
            child: MaterialButton(
              onPressed: (){
                Navigator.pop(context);
              },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8), // Adjust the radius as needed
              ),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: AppColors.secondry,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

        ])
      ],
    );
  }
}
