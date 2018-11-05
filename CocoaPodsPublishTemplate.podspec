Pod::Spec.new do |s|
  s.name         = "CocoaPodsPublishTemplate"
  s.version      = "1.0.0"
  s.summary      = "Template for publishing CocoaPods package."
  s.homepage     = "https://github.com/tkpphr"
  s.license      = "MIT"
  s.author       = "tkpphr"
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/tkpphr/CocoaPodsPublishTemplate.git", :tag => "#{s.version}" }
  s.source_files  = "CocoaPodsPublishTemplate/**/*.swift"
  s.resource_bundles = {
    'CocoaPodsPublishTemplate' => [
    'CocoaPodsPublishTemplate/**/*.{xib,strings}']
  }
  s.requires_arc = true
end
