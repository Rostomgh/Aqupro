import 'package:aquapro/core/Theme/AppColor.dart';
import 'package:aquapro/core/Theme/AppSize.dart';
import 'package:flutter/material.dart';


import 'package:responsive_grid/responsive_grid.dart';

class CustomGrid extends StatefulWidget {
  final String image;
  final String Name;
  final String adress;
  final String matricule;
  final String number;
  final void Function()? ontap;

  const CustomGrid({
    super.key,
    required this.image,
    required this.Name,
    required this.adress,
    required this.matricule,
    required this.number,
    required this.ontap,
  });

  @override
  State<CustomGrid> createState() => _CustomGridState();
}

class _CustomGridState extends State<CustomGrid> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(15.0),
      child: InkWell(
        onTap: 
          widget.ontap,
        
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xs: 12,
              //md: 10,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: AppColors.secondry),
                  color: Colors.white,
                ),
                height: 148,
                width: 350,
                alignment: Alignment.centerRight,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(widget.image, height: 128, width: 118),
                    ),
                    const SizedBox(width: AppSizes.sizeRow),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ("Nom: ${widget.Name}"),
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ),
                        
                        const SizedBox(height: AppSizes.sizeColumn),
                        Text(
                          ('Address: ${widget.adress}'),
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ),
                        const SizedBox(height: AppSizes.sizeColumn),
                        Text(
                          ('Matricule: ${widget.matricule}'), 
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ),
                        const SizedBox(height: AppSizes.sizeColumn),
                        Text(
                          ('Numiro: ${widget.number}'),
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
