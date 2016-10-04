#
# Be sure to run `pod lib lint SMSCountryApi.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SMSCountryApi'
  s.version          = '0.1.0'
  s.summary          = 'SMSCountry iOS SDK'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
SMS Country iOS SDK written in Objective C.
                       DESC

  s.homepage         = 'https://github.com/madhupolisetti/iossdk.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jayakarthikeyan G' => 'jaya@infohawk.in' }
  s.source           = { :git => 'https://github.com/madhupolisetti/iossdk.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.0'

  s.source_files = 'SMSCountryApi/Classes/**/*'
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'CFNetwork', 'CoreData', 'Security', 'MobileCoreServices'
  s.dependency 'RestKit'
end
