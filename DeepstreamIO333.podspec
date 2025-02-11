Pod::Spec.new do |s|
  s.name                      = "DeepstreamIO333"
  s.version                   = "2.2.2"
  s.summary                   = "The open realtime server - a fast, secure and scalable websocket & tcp server for mobile, web & iot"
  s.homepage                  = "https://deepstream.io"
  s.license                   = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.authors                   = { "Akram Hussein" => 'akramhussein@gmail.com', "Yasser Fadl" => 'yasser.fadl@deepstreamhub.com' }
  s.social_media_url          = "https://twitter.com/deepstreamHub"

  s.source                    = { :http => "https://geoviewermobiledata.s3.amazonaws.com/DeepstreamIO333-2.2.2.zip" }
  s.requires_arc              = true

  s.public_header_files       = 'src/DeepstreamIO.h'
  s.source_files              = 'src/DeepstreamIO.h'
  s.preserve_paths            = '{j2objc,src}/**/*.{h,m,a}'
  s.libraries                 = 'jre_emul', 'z'

  s.ios.vendored_libraries      = 'lib/iosRelease/libdeepstream.io-client-java-j2objc.a'
  s.watchos.vendored_libraries  = 'lib/iosRelease/libdeepstream.io-client-java-j2objc.a'
  s.osx.vendored_libraries      = 'lib/x86_64Release/libdeepstream.io-client-java-j2objc.a'

  s.xcconfig = {
    'HEADER_SEARCH_PATHS'  => '${PODS_ROOT}/DeepstreamIO333/j2objc/include ${PODS_ROOT}/DeepstreamIO333/src/main/objc'
  }
  s.ios.xcconfig = {
    'LIBRARY_SEARCH_PATHS' => '${PODS_ROOT}/DeepstreamIO333/j2objc/lib'
  }
  s.osx.xcconfig = {
    'LIBRARY_SEARCH_PATHS' => '${PODS_ROOT}/DeepstreamIO333/j2objc/lib/macosx'
  }

  s.ios.deployment_target     = '8.3'
  s.osx.deployment_target     = '10.11'
  s.osx.frameworks            = 'ExceptionHandling'
  s.pod_target_xcconfig       = { 'SWIFT_VERSION' => '3.0' }
  s.resources                 = "swift/*.swift"
  s.dependency                'Starscream', '~> 3.0.2'
end

