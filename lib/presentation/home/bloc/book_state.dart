part of 'book_bloc.dart';

sealed class BookState extends Equatable {
  const BookState();

  @override
  List<Object> get props => [];
}

final class BookInitial extends BookState {}

final class BookErrorState extends BookState {
  final String error;
  const BookErrorState({required this.error});

  @override
  // TODO: implement props
  List<Object> get props => [error];
}

class BookSuccessState extends BookState {
  final Book books;
  const BookSuccessState(this.books);

  @override
  List<Object> get props => [books];
}
