import 'package:book_store/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import '../../auth/blocs/sign_up_bloc/sign_up_bloc.dart';
import '../../auth/views/sign_in_screen.dart';
import '../../auth/views/sign_up_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with TickerProviderStateMixin {

  late TabController tabController;
  
  @override
  void initState() {
    tabController = TabController(
        initialIndex: 0,
        length: 2,
        vsync: this
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(height: kToolbarHeight),
              const Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Nobile'
              )),
              const SizedBox(height: kToolbarHeight),
              TabBar(
                  controller: tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Theme.of(context).colorScheme.outline.withOpacity(0.6),
                  tabs: const [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('Sign In', style: TextStyle(fontSize: 18)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('Sign Up', style: TextStyle(fontSize: 18)),
                    ),
                  ]
              ),
              Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      BlocProvider(
                        create: (context) => SignInBloc(myUserRepository: context.read<AuthBloc>().userRepository),
                        child: const SignInScreen(),
                      ),
                      BlocProvider(
                        create: (context) => SignUpBloc(
                          myUserRepository: context.read<AuthBloc>().userRepository
                        ),
                        child: const SignUpScreen(),
                      ),
                    ],
                  )
              )
            ],
          ),
        ),
      )
    );
  }
}
