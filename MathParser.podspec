Pod::Spec.new do |s|
  s.name         = "MathParser"
  s.version      = "0.1"
  s.source       = { :git => "https://github.com/zhaozzq/Math-Parser-Swift.git", :tag => "#{s.version}" }
  s.summary      = "Math expression parser written in swift."
  s.description  = "Math expression parser written in swift. Forked from https://github.com/zerodays/Math-Parser-Swift.git"
  s.homepage     = "https://github.com/zhaozzq/Math-Parser-Swift"
  s.license      = 'MIT'
  s.authors      = {'zhaozzq' => 'zhao_zzq2012@163.com'}
  s.social_media_url   = "https://twitter.com/ZHAOZQMOS"
  s.ios.deployment_target = "0.1"
  # s.osx.deployment_target = "10.9"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"
  s.source_files  = "MathParser/Sources/**/*.swift"
  s.requires_arc = true
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1'}
end