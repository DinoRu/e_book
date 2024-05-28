import 'package:book_store/blocs/auth_bloc/auth_bloc.dart';
import 'package:book_store/core/theme/theme.dart';
import 'package:book_store/presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:book_store/presentation/home/views/book_list_page.dart';
import 'package:book_store/presentation/home/views/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e_Book',
      theme: lightTheme,
      // themeMode: state,
      darkTheme: darkTheme,
      home: Scaffold(
        // appBar: AppBar(
        //   actions: [
        //     // IconButton(
        //     //     onPressed: () {
        //     //       // bool isDark = state == ThemeMode.dark;
        //     //       // context.read<ThemeBloc>().add(ThemeChanged(!isDark));
        //     //     },
        //     //     icon: Icon(
        //     //         state == ThemeMode.dark ? Icons.light_mode : Icons
        //     //             .dark_mode)
        //     // ),
        //   ],
        // ),
        body: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state.status == AuthStatus.authenticated) {
              return BlocProvider(
                create: (context) => SignInBloc(
                    myUserRepository: context.read<AuthBloc>().userRepository),
                child: const BookListPage(),
              );
            } else {
              return const WelcomeScreen();
            }
          },
        ),
      ),
    );
  }
}
