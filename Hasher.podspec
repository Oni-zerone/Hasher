#
# Be sure to run `pod lib lint Hasher.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Hasher'
  s.version          = '0.1.0'
  s.summary          = 'A simple Hashing library.'
  s.swift_version    = '4.3'

  s.description      = <<-DESC
A simple hashing library based on CommonCrypto, extensible to every type you want.
                       DESC

  s.homepage         = 'https://github.com/Oni-zerone/Hasher'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Andrea Altea' => 'oni.zerone@gmail.com' }
  s.source           = { :git => 'https://github.com/Oni-zerone/Hasher.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/Oni_zerone'

  s.ios.deployment_target = '10.0'

  s.source_files = 'Hasher/Classes/**/*'

  s.frameworks = 'Foundation'
end
