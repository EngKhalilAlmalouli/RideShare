import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rideshare/model/reservation/new_reservation_model.dart';
import 'package:rideshare/repo/reservation/new_reservation_repo.dart';

part 'new_reservation_event.dart';
part 'new_reservation_state.dart';

class NewReservationBloc
    extends Bloc<NewReservationEvent, NewReservationState> {
  final NewReservationRepo newReservationRepo;
  NewReservationBloc(this.newReservationRepo) : super(NewReservationInitial()) {
    on<NewReservationReq>((event, emit) async {
      print('Bloc');

      var data = await newReservationRepo.newReservationRepo(event.reservation);
      print('data');
      print(data);
      if (data is ReservationSuccessRespond) {
        print("state 1");
        emit(ReservationDone(data));
      } else if (data is ReservationBadRequest) {
        print("state 2");
        emit(BadRequiestReservation(data));
      } else {
        print("state 3");
        emit(LoadingReservation());
      }
    });
  }
}
