#
#  Be sure to run `pod spec lint MiniShop.Shop.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name = "MiniShop.Shop"
  s.version = "0.0.1"
  s.summary = "Given pod provides Sales management fuctionality for MiniShop project"
  s.description = <<-DESC 
  Given pod provides Sales management fuctionality for MiniShop project. 
  Uses MiniShop.Shared pod internally
                   DESC
  s.homepage = "https://github.com/alounce"
  s.license = { :type => "MIT", :file => "LICENSE.txt" }
  s.author = { "Oleksandr Karpenko" => "oleksandr.karpenko@vivint.com" }
  s.social_media_url = "http://twitter.com/alounce"
  s.platform = :ios, "11.0"
  #s.source       = { :path => '.' }
  s.source = { :git => "https://github.com/alounce/MiniShop.Shop.Module.git", :tag => "#{s.version}" }
  s.source_files = "Shop", "Shop/**/*.{h,m,swift}"
  s.resource_bundles = {
      'UI' => ['Shop/UI/*.{lproj,storyboard}']
  }
  s.dependency "MiniShop.Shared" 
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4' }
  s.swift_version = "4"
end
