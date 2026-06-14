import 'package:flutter/material.dart';
import 'package:myapp/W7/EXERCISE-2/model/profile_tile_model.dart';
import '../theme/theme.dart';

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key,required this.data});
  
  final ProfileData data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary.withAlpha(100),
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'CADT student Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                    data.avatarUrl), 
              ),
              const SizedBox(height: 20),
              Text(
                data.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              Text(
                data.position,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              ...data.tiles.map((e) => ProfileTile(tileData: e),)
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.tileData
  });

  final TileData tileData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: ListTile(
          leading: Icon(tileData.icon, color: AppColors.primary),
          title: Text(tileData.title),
          subtitle: Text(tileData.value),
        ),
      ),
    );
  }
}
