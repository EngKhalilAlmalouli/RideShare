// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:rideshare/model/error/exception.dart';
import 'package:rideshare/model/wallet/my_wallet_info_model.dart';
import 'package:rideshare/service/wallet/get_my_wallet_info_service.dart';

class GetMyWalletInfoRepo {
  final GetMyWalletInfoService getMyWalletInfoService;
  GetMyWalletInfoRepo({
    required this.getMyWalletInfoService,
  });

  Future<MyWalletInfoModel> getMyWalletInfoRepo() async {
    try {
      var data = await getMyWalletInfoService.getMyWalletInfoService();

      return GettingMyWalletInfo.fromMap(data.data);
    } on NoWallet {
      return ExceptionMyWalletInfo(message: 'No Wallet to Show');
    } on DioException catch (e) {
      return ExceptionMyWalletInfo(message: e.response!.data.toString());
    }
  }
}