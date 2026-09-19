import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themeal/feature/home/persentation/cubit/home_cubit.dart';
import 'package:themeal/feature/home/persentation/cubit/home_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe App'),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is HomeError) {
              return Center(
                child: Text(state.message),
              );
            }

            if (state is HomeSuccess) {
              return SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        state.meal.image,
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      state.meal.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${state.meal.category ?? ''} • ${state.meal.area ?? ''}',
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        context.read<HomeCubit>().getRandomMeal();
                      },
                      child: const Text('Get Another Meal'),
                    ),
                  ],
                ),
              );
            }

            return const SizedBox();
          },
        ),
      );
    
    
  }
}