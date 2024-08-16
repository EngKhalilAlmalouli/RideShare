import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rideshare/bloc/transport/get_all_bicycles_bloc.dart';
import 'package:rideshare/colors.dart';
import 'package:rideshare/repo/bicycle/get_all_bicycle_repo.dart';
import 'package:rideshare/service/%20bicycle/get_all_bicycle_service.dart';
import 'package:rideshare/text_button.dart';

class SelectAvilableBicyclePage extends StatefulWidget {
  const SelectAvilableBicyclePage({super.key});

  @override
  State<SelectAvilableBicyclePage> createState() =>
      _SelectAvilableBicyclePageState();
}

class _SelectAvilableBicyclePageState extends State<SelectAvilableBicyclePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetAllBicyclesBloc(GetAllBicyclesRepo(
          getAllBicycleService: GetAllBicycleService(Dio()))),
      child: Builder(builder: (context) {
        context.read<GetAllBicyclesBloc>().add(GetAllBicycles());
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const FittedBox(
                child: Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Icon(Icons.arrow_back_ios_new_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Back',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 26, top: 30, bottom: 8),
                child: Text(
                  "Avaiable bicycle for ride",
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              BlocConsumer<GetAllBicyclesBloc, GetAllBicyclesState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  if (state is GetAllBicyclesInitial) {
                    return const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(),
                          Text('Wait for few seconds'),
                        ],
                      ),
                    );
                  } else if (state is SuccessFetchAllBicycles) {
                    return Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 26, bottom: 30),
                            child: Text(
                              '${state.bicycles.body.length} bicycle found',
                              style: const TextStyle(
                                color: Color(0xFFb8b8b8),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: ListView.builder(
                                itemCount: state.bicycles.body.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Container(
                                      height: 170,
                                      width: 363,
                                      decoration: BoxDecoration(
                                        color: AppColors.lightGreen,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: AppColors.greenIcon,
                                          width: 1,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10, top: 16),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          state
                                                              .bicycles
                                                              .body[index]
                                                              .modelPrice
                                                              .model,
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .darkGrey,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        const SizedBox(
                                                            width: 10),
                                                        Text(
                                                          "( ${state.bicycles.body[index].modelPrice.price.toString()} )",
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .green,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          state.bicycles
                                                              .body[index].type,
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .darkGrey,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        Text(
                                                          '  |  ',
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .darkGrey,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        Text(
                                                          state.bicycles
                                                              .body[index].size
                                                              .toString(),
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .darkGrey,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ],
                                                    ),
                                                    Text(
                                                      state.bicycles.body[index]
                                                          .note,
                                                      style: TextStyle(
                                                          color:
                                                              AppColors.green,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                    height: 59,
                                                    width: 101,
                                                    child: Image.network(
                                                      "https://${state.bicycles.body[index].photoPath}",
                                                      fit: BoxFit.cover,
                                                      errorBuilder:
                                                          (BuildContext context,
                                                              Object exception,
                                                              StackTrace?
                                                                  stackTrace) {
                                                        return Icon(Icons
                                                            .image_not_supported_rounded);
                                                      },
                                                    )),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 24,
                                            ),
                                            SizedBox(
                                              width: 340,
                                              height: 54,
                                              child: BorderButton(
                                                text: 'View bicycle list',
                                                onPressed: () {},
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else if (state is FetchingEmptyBicycles) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else if (state is ExceptionGettingBicycles) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else if (state is LoadingWhileGettingAllBicycles) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return const Center(
                      child: LinearProgressIndicator(),
                    );
                  }
                },
              )
            ],
          ),
        );
      }),
    );
  }
}
