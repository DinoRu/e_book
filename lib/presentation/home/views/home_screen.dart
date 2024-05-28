import 'package:book_repository/book_repository.dart';
import 'package:book_store/presentation/home/bloc/book_bloc.dart';
import 'package:book_store/presentation/home/views/book_list_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../auth/blocs/sign_in_bloc/sign_in_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late BookBloc bookBloc;

  @override
  void initState() {
    bookBloc = BookBloc(ApiBookRepository())..add(GetBookEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bookBloc,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            'Home',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  context.read<SignInBloc>().add(const SignOutRequired());
                },
                icon: const Icon(Icons.logout))
          ],
        ),
        body: BlocConsumer<BookBloc, BookState>(
          bloc: bookBloc,
          listenWhen: ((previous, current) => current is BookInitial),
          listener: (context, state) {
            if (state is BookSuccessState) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const BookListPage()));
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(5)),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.grey,
                                hintText: 'Title, Author, Host or Topic',
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.5)),
                                prefixIcon: Icon(
                                  CupertinoIcons.search,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ),
                            ),
                          )),
                          const SizedBox(width: 10),
                          const Text(
                            'Cancel',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          )
                        ],
                      ),
                      const SizedBox(height: 25),
                      Container(
                        height: 200,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '40%',
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.background,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Off on All books',
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.background,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Trending Books',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'See All',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                              ))
                        ],
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        height: 40,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, i) {
                              return const Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Chip(
                                  label: Text('Self help'),
                                ),
                              );
                            }),
                      ),
                      const SizedBox(height: 15),
                      Expanded(
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15,
                            childAspectRatio: 3 / 4,
                          ),
                          itemBuilder: (context, i) {
                            return Container(
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                              ),
                            );
                          },
                          itemCount: 6,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
