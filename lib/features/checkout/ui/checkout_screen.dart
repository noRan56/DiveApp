import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/delete_this_after_merge/widgets/text_button.dart';
import 'package:shopping_app/features/checkout/ui/widgets/add_new_payment.dart';
import 'package:shopping_app/features/checkout/ui/widgets/address_container.dart';
import 'package:shopping_app/features/checkout/ui/widgets/address_in_google_map.dart';
import 'package:shopping_app/features/checkout/ui/widgets/checkout_app_bar.dart';
import 'package:shopping_app/features/checkout/ui/widgets/custom_delivery_buttons.dart';
import 'package:shopping_app/features/checkout/ui/widgets/order_items_list.dart';
import 'package:shopping_app/features/checkout/ui/widgets/payment_options.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.w),
                child: Column(
                  children: [
                    const CheckoutAppBar(),
                    verticalSpace(14),
                    const CustomDeliveryButtons(),
                    verticalSpace(16),
                    const AddressInGoogleMap(),
                  ],
                ),
              ),
              verticalSpace(24),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Text(
                  'Order items',
                  style: TextStyles.font16BlackSemiBold,
                ),
              ),
              verticalSpace(8),
              const OrderItemsList(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pay with',
                      style: TextStyles.font16BlackSemiBold,
                    ),
                    const PaymentOptions(),
                    verticalSpace(8),
                    const AddNewPayment(),
                    verticalSpace(24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
