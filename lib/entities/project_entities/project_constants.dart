class ProjectConstants {
  static const Map<String, Map<String, int>> subscriptionMediaLimits = {
    'free': {'photo': 2, 'video': 1}, // 10 photos, 3 videos
    'basic': {'photo': 6, 'video': 3}, // 50 photos, 10 videos
    'premium': {'photo': 12, 'video': 6} // 200 photos, 50 videos
  };

  /// Get photo limit based on subscription level
  static int getPhotoLimit(String subscriptionLevel) {
    return subscriptionMediaLimits[subscriptionLevel]?['photo'] ?? 0;
  }

  /// Get video limit based on subscription level
  static int getVideoLimit(String subscriptionLevel) {
    return subscriptionMediaLimits[subscriptionLevel]?['video'] ?? 0;
  }
}
