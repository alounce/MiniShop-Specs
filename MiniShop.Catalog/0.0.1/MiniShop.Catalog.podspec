#
#  Be sure to run `pod spec lint MiniShop.Catalog.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "MiniShop.Catalog"
  s.version      = "0.0.1"
  s.summary      = "Module of the MiniShop project which represents catalog of goods"
  s.description  = <<-DESC
  Module of the MiniShop project which represents catalog of goods. Uses MiniShop.Shared pod internally"
                   DESC
  s.homepage      = "https://github.com/alounce"
  s.license       = { :type => "MIT", :file => "LICENSE.txt" }
  s.author        = { "Oleksandr Karpenko" => "oleksandr.karpenko@vivint.com" }
  s.platform      = :ios, "11.0"
  s.source = { :git => "https://github.com/alounce/MiniShop.Catalog.Module.git", :tag => "#{s.version}" }
  s.source_files  = "Catalog", "Catalog/**/*.{h,m,swift}"
  s.exclude_files = "Catalog/Exclude"
  s.resource_bundles = {
      'UI' => ['Catalog/UI/*.{lproj,storyboard}']
  }
  s.resource = 'Catalog/UI/Catalog.storyboard'
  s.dependency "MiniShop.Shared" 
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4' }
  s.swift_version = "4"
end
