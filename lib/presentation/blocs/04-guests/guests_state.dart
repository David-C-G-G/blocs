part of 'guests_bloc.dart';

enum GuestFilter{
  all,
  invited,
  noInvited,
}

class GuestsState extends Equatable {

  final GuestFilter filter;
  final List<Todo> guests;

  const GuestsState({
    this.filter = GuestFilter.all,
    this.guests = const [],
  });

  // int get countGuest => guests.length;
  List<Todo> get filteredGuest {

    switch(filter){
      case GuestFilter.invited:
            return guests.where((guest) => guest.done).toList();
      case GuestFilter.noInvited:
            return guests.where((guest) => !guest.done).toList();
      case GuestFilter.all:
            return guests;
      default:
            throw Exception('Valor del filtro no valido');
    }
  }

  int get howManyFilteredGuest => filteredGuest.length;

  GuestsState copyWith({
    GuestFilter? filter,
    List<Todo>? guest,
  }){
    return GuestsState(
      filter: filter ?? this.filter,
      guests: guests,
    );
  }
  
  @override
  List<Object> get props => [ filter, guests];
}

