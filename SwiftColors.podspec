Pod::Spec.new do |s|
  s.name             = "SwiftColors"
  s.version          = "0.1.1"
  s.summary          = "HEX color handling as an extension for UIColor. Written in Swift."
  s.homepage         = "https://github.com/thii/SwiftColors"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "SwiftHEXColors contributors" => "me@thi.codes" }
  s.source           = { :git => "https://github.com/thii/SwiftColors.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.requires_arc = true

  s.source_files = 'SwiftColors/*.{swift}'
end
