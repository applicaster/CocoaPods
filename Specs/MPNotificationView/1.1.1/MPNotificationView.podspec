Pod::Spec.new do |s|
  s.name         = "MPNotificationView"
  s.version      = "1.1.1"
  s.summary      = "An in-app notification view that mimics the iOS 6 notification views which appear above the status bar."
  s.homepage     = "https://github.com/Moped/MPNotificationView"
  s.license      = 'MIT'
  s.authors      = {"Engin Kurutepe" => "engin@kurutepe.com"}
  s.source       = { :git => "git@github.com:applicaster/MPNotificationView.git", :tag => "1.1.1" }
  s.platform     = :ios, '8.0'
  s.source_files = 'MPNotificationView/*.{h,m}', 'OBGradientView/*.{h,m}'
  s.public_header_files = 'MPNotificationView/**/*.h'
  s.requires_arc = true
end
