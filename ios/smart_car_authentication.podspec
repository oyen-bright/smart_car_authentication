#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint smart_car_authentication.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'smart_car_authentication'
  s.version          = '0.0.1'
  s.summary          = 'SmartcarAuth for Flutter which integrates the native iOS & Android SDKs.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'http://brinnixs.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'oyeniyibrighta@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'SmartcarAuth', '4.1.3'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
