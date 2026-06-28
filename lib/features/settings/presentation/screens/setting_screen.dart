import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/app_colors.dart';
import 'package:flutter_application_1/shared/widgets/app_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      title: 'Settings',
      body: _buildSettingsTab(context),
    );
  }

  Widget _buildSettingsTab(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                _buildSwitchTile(
                  Icons.dark_mode_outlined,
                  'Dark Mode',
                  'Switch appearance',
                  false,
                ),
                const Divider(height: 1, indent: 56),
                _buildSwitchTile(
                  Icons.volume_up_outlined,
                  'Sound Effects',
                  'Device feedback tones',
                  true,
                ),
                const Divider(height: 1, indent: 56),
                _buildSwitchTile(
                  Icons.language_outlined,
                  'Location',
                  'Used for automations',
                  true,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.only(left: 8, bottom: 8),
            child: Text(
              'SYSTEM',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                _buildNavigationTile(
                  context,
                  Icons.phone_android_outlined,
                  'Connected Devices',
                  '12 devices paired',
                ),
                const Divider(height: 1, indent: 56),
                _buildNavigationTile(
                  context,
                  Icons.wifi,
                  'Wi-Fi & Network',
                  'HomeNet_5G',
                ),
                const Divider(height: 1, indent: 56),
                _buildNavigationTile(
                  context,
                  Icons.help_outline,
                  'Help & Support',
                  'FAQs and contact',
                ),
                const Divider(height: 1, indent: 56),
                _buildNavigationTile(
                  context,
                  Icons.info_outline,
                  'About',
                  'Version 2.4.1',
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.logout, color: Colors.redAccent),
              ),
              title: const Text(
                'Sign Out',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                'Rebecca Barbara',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Colors.grey,
              ),
              onTap: () => Navigator.pushReplacementNamed(context, '/login'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSwitchTile(
    IconData icon,
    String title,
    String subtitle,
    bool value,
  ) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.lightSurface,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: AppColors.primaryGreen),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.grey, fontSize: 12),
      ),
      trailing: Switch(
        value: value,
        focusColor: Colors.white,
        activeTrackColor: AppColors.primaryGreen,
        onChanged: (newValue) {},
      ),
    );
  }

  Widget _buildNavigationTile(
    BuildContext context,
    IconData icon,
    String title,
    String subtitle,
  ) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.lightSurface,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: AppColors.primaryGreen),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.grey, fontSize: 12),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
      onTap: () {
        if (title == 'Wi-Fi & Network') {
          Navigator.pushNamed(context, '/wifi');
        }
      },
    );
  }
}
