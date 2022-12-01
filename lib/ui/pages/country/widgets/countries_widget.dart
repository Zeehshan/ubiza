import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../configs/themes/colors.dart';
import '../../../../controllers/controllers.dart';
import '../../../widgets/widgtes.dart';
import 'widgets.dart';

class CountriesWidget extends StatefulWidget {
  const CountriesWidget({super.key});

  @override
  State<CountriesWidget> createState() => _CountriesWidgetState();
}

class _CountriesWidgetState extends State<CountriesWidget> {
  bool isExpand = false;
  @override
  Widget build(BuildContext context) {
    final UpdateProfileController controller = Get.find();
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: ElevatedButtonWidget(
                showGradient: true,
                onPressed: () {},
                child: Container(
                  margin: const EdgeInsets.all(1.3),
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: ExpansionTile(
                    childrenPadding: EdgeInsets.zero,
                    key: Key(controller.selectedCountry?.code ?? ''),
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,
                    // title: Text(
                    //   'Select any country',
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .subtitle2!
                    //       .copyWith(fontSize: 14, height: 2),
                    // ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 6, top: 6),
                      child: controller.selectedCountry == null
                          ? Text(
                              'Select country',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline6,
                            )
                          : Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                NetworkImageWidget(
                                    isUser: false,
                                    borderRadius: 10,
                                    width: 57,
                                    height: 37,
                                    imageUrl: controller.selectedCountry?.logo),
                                const SizedBox(
                                  width: 22,
                                ),
                                Text(
                                  controller.selectedCountry?.name ?? '',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(fontSize: 24),
                                ),
                              ],
                            ),
                    ),
                    tilePadding: EdgeInsets.zero,

                    // trailing: Padding(
                    //   padding: const EdgeInsets.only(top: 20),
                    //   child: Icon(
                    //     isExpand ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down,
                    //   ),
                    // ),
                    trailing: Container(
                      width: 0,
                    ),
                    onExpansionChanged: (bool value) {
                      setState(() {
                        isExpand = !isExpand;
                      });
                    },
                    children: controller.countries
                        .map((country) => SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                padding:
                                    const EdgeInsets.only(left: 22, right: 22),
                              ),
                              onPressed: country == controller.selectedCountry
                                  ? null
                                  : () {
                                      setState(() {
                                        isExpand = false;
                                      });
                                      controller.countryChanged(country);
                                    },
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    NetworkImageWidget(
                                        borderRadius: 10,
                                        width: 57,
                                        height: 37,
                                        imageUrl: country.logo),
                                    const SizedBox(
                                      width: 22,
                                    ),
                                    Text(
                                      country.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(
                                              fontSize: 24,
                                              color: controller.selectedCountry
                                                          ?.code ==
                                                      country.code
                                                  ? kPrimary
                                                  : null),
                                    ),
                                  ],
                                ),
                              ),
                            )))
                        .toList(),
                  ),
                ),
              ),
            ),
          ),
          if (controller.selectedCountry != null) const ConfirmedButtonWidget(),
        ],
      ),
    );
  }
}
