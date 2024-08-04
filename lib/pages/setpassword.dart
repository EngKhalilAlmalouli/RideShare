// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rideshare/bloc/sign_up_bloc.dart';
import 'package:rideshare/colors.dart';
import 'package:rideshare/model/sign_up_model.dart';
import 'package:rideshare/pages/select_transport.dart';
import 'package:rideshare/repo/sign_up_repo.dart';
import 'package:rideshare/service/sign_up_service.dart';
import 'package:rideshare/text_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SetPassword extends StatefulWidget {
  final String firstName;
  final String lastName;
  final String username;
  final String phone;
  final String birthDate;

  const SetPassword({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.phone,
    required this.birthDate,
  });

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  TextEditingController password = TextEditingController();
  TextEditingController conPassword = TextEditingController();
  bool passwordVisible = true;
  bool passwordConfirmVisible = true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SignUpBloc(SignUpRepo(signUpService: SignUpService(Dio()))),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    const Text(
                      'Set password',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      'Set your password',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0XFFA0A0A0),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextField(
                      controller: password,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      obscureText: passwordVisible,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Password',
                        hintStyle: const TextStyle(
                          color: Color(0xFFD0D0D0),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        fillColor: Colors.white,
                        suffixIcon: togglePassword(passwordVisible, (newValue) {
                          setState(() {
                            passwordVisible = newValue;
                          });
                        }),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: conPassword,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      obscureText: passwordConfirmVisible,
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        hintStyle: const TextStyle(
                          color: Color(0xFFD0D0D0),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        suffixIcon:
                            togglePassword(passwordConfirmVisible, (newValue) {
                          setState(() {
                            passwordConfirmVisible = newValue;
                          });
                        }),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Atleast 1 number or a special character',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFA6A6A6),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    BlocConsumer<SignUpBloc, SignUpState>(
                      builder: (context, state) {
                        if (state is SignUpInitial) {
                          print('init state');
                          return SizedBox(
                            width: 340,
                            height: 54,
                            child: Button(
                              text: 'Register',
                              onPressed: () {
                                context.read<SignUpBloc>().add(SignUpUser(
                                    user: SignUpModel(
                                        firstName: widget.firstName,
                                        lastName: widget.lastName,
                                        phone: widget.phone,
                                        username: widget.username,
                                        birthDate: widget.birthDate,
                                        password: password.text,
                                        confirmPassword: conPassword.text)));
                              },
                            ),
                          );
                        } else if (state is Success) {
                          print('Success state');
                          return Center(
                            child: Container(
                              decoration:
                                  const BoxDecoration(color: Colors.green),
                              child: const Text('Success'),
                            ),
                          );
                        } else if (state is Error) {
                          print('error state');
                          return Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 340,
                                  height: 54,
                                  child: Button(
                                    text: 'Register',
                                    onPressed: () {
                                      context.read<SignUpBloc>().add(SignUpUser(
                                          user: SignUpModel(
                                              firstName: widget.firstName,
                                              lastName: widget.lastName,
                                              phone: widget.phone,
                                              username: widget.username,
                                              birthDate: widget.birthDate,
                                              password: password.text,
                                              confirmPassword:
                                                  conPassword.text)));
                                    },
                                  ),
                                ),
                              ],
                            ),
                          );
                        } else if (state is Exception) {
                          print('exception state');
                          List<String> errorMessages = state.message;
                          return Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 340,
                                  height: 54,
                                  child: Button(
                                    text: 'Register !',
                                    onPressed: () {
                                      context.read<SignUpBloc>().add(SignUpUser(
                                          user: SignUpModel(
                                              firstName: widget.firstName,
                                              lastName: widget.lastName,
                                              phone: widget.phone,
                                              username: widget.username,
                                              birthDate: widget.birthDate,
                                              password: password.text,
                                              confirmPassword:
                                                  conPassword.text)));
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 250,
                                  child: ListView.builder(
                                      itemCount: errorMessages.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: AppColors.lightGreen100),
                                            child: ListTile(
                                              title: Text(errorMessages[index]),
                                            ),
                                          ),
                                        );
                                      }),
                                )
                                // Text(state.message),
                              ],
                            ),
                          );
                        } else if (state is Loading) {
                          print('loading state');
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        } else {
                          print('else state');
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                      listener: (BuildContext context, SignUpState state) {
                        if (state is Success) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SelectTransport()));
                        }
                        if (state is Error) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(state.message),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 20,
                left: 1,
                child: TextButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    label: const Text('Back'),
                    icon: const Icon(Icons.arrow_back_ios_new_outlined)),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget togglePassword(bool value, void Function(bool) onChanged) {
    return IconButton(
      onPressed: () {
        onChanged(!value);
      },
      icon: !value
          ? const Icon(Icons.visibility_outlined)
          : const Icon(Icons.visibility_off_outlined),
      color: Colors.grey,
    );
  }

  Widget regester() {
    return SizedBox(
      width: 340,
      height: 54,
      child: Button(
        text: 'Register',
        onPressed: () {
          context.read<SignUpBloc>().add(SignUpUser(
              user: SignUpModel(
                  firstName: widget.firstName,
                  lastName: widget.lastName,
                  phone: widget.phone,
                  username: widget.username,
                  birthDate: widget.birthDate,
                  password: password.text,
                  confirmPassword: conPassword.text)));
        },
      ),
    );
  }
}
