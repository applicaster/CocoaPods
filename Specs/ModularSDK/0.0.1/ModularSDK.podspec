Pod::Spec.new do |s|
  s.name         = "ModularSDK"
  s.version      = "0.0.1"
  s.summary      = "Summary ModularSDK"
  s.description  = "Description ModularSDK"
  s.homepage     = "https://github.com/applicaster/ModularSDK-iOS"
  s.license      = "None"
  s.authors      = "apps@applicaster.com"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/applicaster/ModularSDK-iOS.git", :tag => "0.0.1" }
  s.source_files  = "Classes", "ModularSDK/**/*.swift"

  # s.public_header_files = "Classes/**/*.h"

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
