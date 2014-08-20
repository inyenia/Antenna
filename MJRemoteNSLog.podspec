Pod::Spec.new do |s|
  s.name     = 'MJRemoteNSLog'
  s.version  = '2.0.1'
  s.license  = 'MIT'
  s.summary  = 'Extensible Remote Logging for iOS.'
  s.homepage = 'https://github.com/inyenia/MJRemoteNSLog'
  s.authors  = { 'Jesus Lopez' => 'inyenia@gmail.com' }
  s.source   = { :git => 'https://github.com/inyenia/MJRemoteNSLog.git', :tag => '2.0.1' }
  s.source_files = 'MJRemoteNSLog/Classes'
  s.requires_arc = true

  s.platform = :ios, '5.0'

  s.dependency 'AFNetworking', '~> 2.0'
end
