Pod::Spec.new do |s|
  s.name             = "SegmentFirebase-Swift"
  s.version          = "1.3.6"
  s.summary          = "Firebase Integration for Segment's analytics-ios library."

  s.description      = <<-DESC
                       Analytics for iOS provides a single API that lets you
                       integrate with over 100s of tools.

                       This is the Firebase integration for the iOS library.
                       DESC

  s.homepage         = "http://segment.com/"
  s.license          =  { :type => 'MIT' }
  s.author           = { "Segment" => "friends@segment.com" }
  s.source           = { :git => "https://github.com/CoachNow/analytics-swift-firebase.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/segment'

  s.swift_version = '4.0'
  s.platform     = :ios, '11.0'
  s.requires_arc = true

  s.source_files = 'Sources/SegmentFirebase/**/*'
  s.default_subspec = 'Core'
  s.static_framework = true

  s.dependency 'Analytics'

  s.dependency 'Firebase', '~> 10.24.0'
  s.dependency 'Firebase/Core', '~> 10.24.0'
  s.dependency 'FirebaseAnalytics','~> 10.24.0'

  s.subspec 'Core' do |core|
    #For users who only want the core Firebase package
  end

  s.subspec 'DynamicLinks' do |dynamiclinks|
    # This will bundle in Firebase Dynamic Link support
    dynamiclinks.dependency 'Firebase/DynamicLinks'
  end
end
