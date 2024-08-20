import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rideshare/bloc/wallet/get_my_wallet_info_bloc.dart';
import 'package:rideshare/colors.dart';
import 'package:rideshare/pages/wallet/add_amount.dart';
import 'package:rideshare/pages/notifecation.dart';
import 'package:rideshare/repo/wallet/get_my_wallet_info_repo.dart';
import 'package:rideshare/service/wallet/get_my_wallet_info_service.dart';
import 'package:rideshare/text_button.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetMyWalletInfoBloc(GetMyWalletInfoRepo(
          getMyWalletInfoService: GetMyWalletInfoService(Dio())))
        ..add(GetInfo()),
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 124,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 171,
                      height: 54,
                      child: BlocBuilder<GetMyWalletInfoBloc,
                          GetMyWalletInfoState>(
                        builder: (context, state) {
                          if (state is SuccessGettingMyWalletInfo) {
                            return BorderButton(
                              text: 'Add Money',
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AddAmountPage()));
                              },
                            );
                          } else {
                            return BorderButton(
                              text: 'Add Money',
                              onPressed: () {},
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  BlocConsumer<GetMyWalletInfoBloc, GetMyWalletInfoState>(
                    listener: (context, state) {
                      if (state is SuccessGettingMyWalletInfo) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(state.walletInfoModel.message),
                            backgroundColor: AppColors.greenIcon,
                          ),
                        );
                      }
                    },
                    builder: (context, state) {
                      if (state is GetMyWalletInfoInitial) {
                        return Column(
                          children: [
                            Container(
                              height: 145,
                              width: 358,
                              decoration: BoxDecoration(
                                color: AppColors.lightGreen,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: AppColors.greenIcon,
                                  width: 1,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 19, vertical: 35),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    LinearProgressIndicator(),
                                    LinearProgressIndicator(),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            LinearProgressIndicator(),
                          ],
                        );
                      } else if (state is SuccessGettingMyWalletInfo) {
                        return Column(
                          children: [
                            Container(
                              height: 145,
                              width: 358,
                              decoration: BoxDecoration(
                                color: AppColors.lightGreen,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: AppColors.greenIcon,
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 19, vertical: 35),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${state.walletInfoModel.body.balance} S.P",
                                      style: TextStyle(
                                        color: AppColors.typeGrey,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "Available Balance",
                                      style: TextStyle(
                                        color: AppColors.typeGrey,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              state.walletInfoModel.body.bankAccount,
                              style: TextStyle(
                                color: AppColors.darkGrey,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        );
                      } else if (state is ExceptionGettingMyWalletInfo) {
                        return Column(
                          children: [
                            Container(
                              height: 145,
                              width: 358,
                              decoration: BoxDecoration(
                                color: AppColors.lightGreen,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: AppColors.greenIcon,
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 19, vertical: 35),
                                child: Center(
                                  child: Text(
                                    state.message,
                                    style: TextStyle(
                                      color: AppColors.typeGrey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      } else {
                        return Column(
                          children: [
                            Container(
                              height: 145,
                              width: 358,
                              decoration: BoxDecoration(
                                color: AppColors.lightGreen,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: AppColors.greenIcon,
                                  width: 1,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 19, vertical: 35),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircularProgressIndicator(),
                                    CircularProgressIndicator(),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            const CircularProgressIndicator(),
                          ],
                        );
                      }
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Transections',
                        style: TextStyle(
                          color: Color(0xFF121212),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'See All',
                            style: TextStyle(
                              color: Color(0xFF007848),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 60,
                  left: 15,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.lightGreen100,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Builder(builder: (context) {
                        return IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: const Icon(Icons.menu_outlined),
                        );
                      }),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NotifecationPage()));
                        },
                        icon: const Icon(Icons.notifications_outlined),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
