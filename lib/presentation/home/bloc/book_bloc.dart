import 'package:bloc/bloc.dart';
import 'package:book_repository/book_repository.dart';
import 'package:equatable/equatable.dart';

part 'book_event.dart';
part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  final BookRepository _bookRepository;
  BookBloc(this._bookRepository) : super(BookInitial()) {
    on<GetBookEvent>((event, emit) async {
      emit(BookInitial());
      try {
        final books = await _bookRepository.getFictionBooks();
        print(books);
        emit(BookSuccessState(books));
      } catch (e) {
        String error = 'Failed to fetch data';
        emit(BookErrorState(error: error));
      }
    });
  }
}
