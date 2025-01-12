import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:todo_app/features/profile/presentation/widgets/profile_data.dart';

class BodyProfileScreen extends StatelessWidget {
  const BodyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        if (state is ProfileLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ProfileLoaded) {
          return Expanded(
              child: ListView(
            children: [
              ProfileData(
                title: 'NAME',
                content: state.profile.name,
              ),
              ProfileData(
                title: 'PHONE',
                content: state.profile.phone,
              ),
              ProfileData(
                title: 'LEVEL',
                content: state.profile.level,
              ),
              ProfileData(
                title: 'YEARS OF EXPERIENCE',
                content: '${state.profile.experience} years',
              ),
              ProfileData(
                title: 'LOCATION',
                content: state.profile.address,
              ),
            ],
          ));
        } else if (state is ProfileError) {
          return Dialog(
            child: Text(state.msg),
          );
        }
        return const Center(
          child: Text('No Data Available'),
        );
      },
    );
  }
}
