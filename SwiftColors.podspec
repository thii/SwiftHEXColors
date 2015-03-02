Pod::Spec.new do |s|
  s.name             = "SwiftColors"
  s.version          = "0.2.0"
  s.summary          = "HEX color handling as an extension for UIColor. Written in Swift."
  s.homepage         = "https://github.com/thii/SwiftColors"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Doan Truong Thi" => "me@thi.codes" }
  s.source           = { :git => "https://github.com/thii/SwiftColors.git", :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.requires_arc = true
  s.source_files = 'SwiftColors/SwiftColors.swift'
end
