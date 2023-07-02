// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

class User {
  final String? description;
  final String? facebook_id;
  final int followees_count;
  final int followers_count;
  final String? github_login_name;
  final String id;
  final int items_count;
  final String? linkedin_id;
  final String? location;
  final String name;
  final String? organization;
  final int permanent_id;
  final String? profile_image_url;
  final Bool team_only;
  final String? twitter_screen_name;
  final String? website_url;

  User(
      this.description,
      this.facebook_id,
      this.followees_count,
      this.followers_count,
      this.github_login_name,
      this.id,
      this.items_count,
      this.linkedin_id,
      this.location,
      this.name,
      this.organization,
      this.permanent_id,
      this.profile_image_url,
      this.team_only,
      this.twitter_screen_name,
      this.website_url);

     User.fromJson(Map<String, dynamic> json)
      : description = json['description'],
        facebook_id = json['facebook_id'],
        followees_count = json['followees_count'],
        followers_count = json['followers_count'],
        github_login_name = json['github_login_name'],
        id = json['id'],
        items_count = json['items_count'],
        linkedin_id = json['linkedin_id'],
        location = json['location'],
        name = json['name'],
        organization = json['organization'],
        permanent_id = json['permanent_id'],
        profile_image_url = json['profile_image_url'],
        team_only = json['team_only'],
        twitter_screen_name = json['twitter_screen_name'],
        website_url = json['website_url'];

  Map<String, dynamic> toJson() =>
    {
      'description': description,
      'facebook_id': facebook_id,
      'followees_count': followees_count,
      'followers_count': followers_count,
      'github_login_name': github_login_name,
      'id': id,
      'items_count': items_count,
      'linkedin_id': linkedin_id,
      'location': location,
      'name': name,
      'organization': organization,
      'permanent_id': permanent_id,
      'profile_image_url': profile_image_url,
      'team_only': team_only,
      'twitter_screen_name': twitter_screen_name,
      'website_url': website_url,
    };
}
