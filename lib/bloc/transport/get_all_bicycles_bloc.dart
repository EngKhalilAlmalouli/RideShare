import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rideshare/model/%20bicycle/bicycle_respond_model.dart';
import 'package:rideshare/repo/bicycle/get_all_bicycle_repo.dart';

part 'get_all_bicycles_event.dart';
part 'get_all_bicycles_state.dart';

class GetAllBicyclesBloc
    extends Bloc<GetAllBicyclesEvent, GetAllBicyclesState> {
  final GetAllBicyclesRepo getAllBicyclesRepo;
  GetAllBicyclesBloc(this.getAllBicyclesRepo) : super(GetAllBicyclesInitial()) {
    on<GetAllBicycles>((event, emit) async {
      var data = await getAllBicyclesRepo.getAllBicyclesRepo();
      if (data is EmptyBicycleRespondModel) {
        emit(FetchingEmptyBicycles(message: data.message));
      } else if (data is ExceptionBicycleRespondModel) {
        emit(ExceptionGettingBicycles(message: data.message));
      } else if (data is BicycleRespondModel) {
        emit(SuccessFetchAllBicycles(data));
      } else {
        emit(LoadingWhileGettingAllBicycles());
      }
    });
  }
}
