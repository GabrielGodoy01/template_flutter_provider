import 'package:flutter/material.dart';
import 'package:template_flutter_provider/app/domain/entities/user_entity.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // fetchUsers();
  }

  void editUserDialog(UserEntity model) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit user'),
          content: TextFormField(
            // enabled: enabled,
            initialValue: model.name,
            onChanged: (value) {
              // model = model.copyWith(name: value);
            },
          ),
          actions: const [
            // TextButton(
            //   onPressed: enabled
            //       ? () {
            //           deleteUser(model.id);
            //         }
            //       : null,
            //   child: const Text('Delete'),
            // ),
            // TextButton(
            //   onPressed: enabled
            //       ? () {
            //           Navigator.pop(context);
            //         }
            //       : null,
            //   child: const Text('Cancel'),
            // ),
            // TextButton(
            //   onPressed: enabled
            //       ? () {
            //           updateUser(model);
            //         }
            //       : null,
            //   child: enabled
            //       ? const Text('Save')
            //       : const CircularProgressIndicator(),
            // ),
          ],
        );
      },
    );
  }

  // Widget _gettedUsers() {
  //   return ListView.builder(
  //     // itemCount: state.users.length,
  //     // itemBuilder: (_, index) {
  //     //   final user = state.users[index];
  //     //   return ListTile(
  //     //     leading: const Icon(Icons.person),
  //     //     title: Text(state.users[index].name),
  //     //     subtitle: Text('${state.users[index].id}'),
  //     //     trailing: IconButton(
  //     //       icon: const Icon(Icons.edit),
  //     //       onPressed: () {
  //     //         editUserDialog(user);
  //     //       },
  //     //     ),
  //     //   );
  //     // },
  //   );
  // }

  // Widget _failureUserState() {
  //   return Center(
  //     child: ElevatedButton(
  //       child: const Text('Refresh itens'),
  //       onPressed: () {},
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
