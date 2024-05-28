import 'package:book_repository/book_repository.dart';
import 'package:book_store/presentation/home/bloc/book_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookListPage extends StatelessWidget {
  const BookListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookBloc(ApiBookRepository())..add(GetBookEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Book list'),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
        ),
        body: BlocBuilder<BookBloc, BookState>(
          builder: (context, state) {
            if (state is BookInitial) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is BookSuccessState) {
              final data = state.books;
              return ListView.builder(
                  itemCount: data.items!.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      title: Text("${data.items![index].volumeInfo?.title}"),
                      subtitle: Text(
                          "${data.items![index].volumeInfo?.authors.toString()}"),
                    );
                  }));
            }
            return const Center(child: Text('Failed to fetch data'));
          },
        ),
      ),
    );
  }
}
