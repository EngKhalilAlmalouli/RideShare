// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:rideshare/model/%20bicycle/bicycle_respond_model.dart';
import 'package:rideshare/model/error/exception.dart';
import 'package:rideshare/service/%20bicycle/get_all_bicycle_service.dart';

class GetAllBicyclesRepo {
  final GetAllBicycleService getAllBicycleService;
  GetAllBicyclesRepo({
    required this.getAllBicycleService,
  });

  Future<BicycleModel> getAllBicyclesRepo() async {
    try {
      var data = await getAllBicycleService.getAllBicycleservice();
      BicycleRespondModel bicycelResponse =
          BicycleRespondModel.fromMap(data.data as Map<String, dynamic>);

      return bicycelResponse;
    } on EmptyBicycleRespons {
      return EmptyBicycleRespondModel(message: 'There is No Bicycle to Show');
    } catch (e) {
      return ExceptionBicycleRespondModel(message: e.toString());
    }
  }
}
