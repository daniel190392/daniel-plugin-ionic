
  Pod::Spec.new do |s|
    s.name = 'DanielPlugin'
    s.version = '0.0.1'
    s.summary = 'empty'
    s.license = 'MIT'
    s.homepage = 'empty'
    s.author = 'DS'
    s.source = { :git => 'empty', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
  end