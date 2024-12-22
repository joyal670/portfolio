import 'package:flutter/material.dart';
import 'package:portfolio/features/landing/presentation/widgets/profile_details_widget.dart';
import 'package:portfolio/features/landing/presentation/widgets/skils_section_widget.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../theme/app_margin.dart';
import '../../../utils/platform_utils.dart';
import 'widgets/about_section_widget.dart';
import 'widgets/career_section_widget.dart';
import 'widgets/contact_section_widget.dart';
import 'widgets/portfolio_section_widget.dart';
import 'widgets/prifile_image_widget.dart';
import 'widgets/service_section_widget.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController _scrollController = ScrollController();
  final Map<String, bool> _visibleSections = {};

  @override
  Widget build(BuildContext context) {
    final isWeb = PlatformUtils.isWeb(context);

    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppMargin.dm_16,
            vertical: AppMargin.dm_20,
          ),
          child: isWeb ? _buildWebContent() : _buildMobileContent(),
        ),
      ),
    );
  }

  Widget _buildWebContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(flex: 1, child: ProfileImageWidget()),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildSections(isWeb: true),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _buildSections(isWeb: false),
    );
  }

  List<Widget> _buildSections({required bool isWeb}) {
    return [
      if (!isWeb) _buildAnimatedSection(const ProfileImageWidget(), 'profile_image'),
      SizedBox(height: isWeb ? AppMargin.dm_60 : AppMargin.dm_00),
      _buildAnimatedSection(const ProfileDetailsWidget(), 'profile_details'),
      SizedBox(height: isWeb ? AppMargin.dm_120 : AppMargin.dm_130),
      _buildAnimatedSection(const AboutSectionWidget(), 'about_section'),
      SizedBox(height: isWeb ? AppMargin.dm_120 : AppMargin.dm_80),
      _buildAnimatedSection(const CareerSectionWidget(), 'career_section'),
      SizedBox(height: isWeb ? AppMargin.dm_120 : AppMargin.dm_80),
      _buildAnimatedSection(const ServiceSectionWidget(), 'service_section'),
      SizedBox(height: isWeb ? AppMargin.dm_120 : AppMargin.dm_80),
      _buildAnimatedSection(const SkillsSectionWidget(), 'skills_section'),
      SizedBox(height: isWeb ? AppMargin.dm_120 : AppMargin.dm_80),
      _buildAnimatedSection(const PortfolioSectionWidget(), 'portfolio_section'),
      SizedBox(height: isWeb ? AppMargin.dm_120 : AppMargin.dm_80),
      _buildAnimatedSection(const ContactSectionWidget(), 'contact_section'),
      const SizedBox(height: AppMargin.dm_100),
    ];
  }

  Widget _buildAnimatedSection(Widget child, String sectionKey) {
    return VisibilityDetector(
      key: Key(sectionKey),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.1 && !_visibleSections.containsKey(sectionKey)) {
          setState(() {
            _visibleSections[sectionKey] = true;
          });
        }
      },
      child: AnimatedOpacity(
        opacity: _visibleSections[sectionKey] == true ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 2500),
        curve: Curves.easeInOut,
        child: AnimatedSlide(
          offset: _visibleSections[sectionKey] == true
              ? Offset.zero
              : const Offset(0, 0.2), // Slide up on visibility
          duration: const Duration(milliseconds: 1500),
          curve: Curves.easeInOut,
          child: child,
        ),
      ),
    );
  }
}
