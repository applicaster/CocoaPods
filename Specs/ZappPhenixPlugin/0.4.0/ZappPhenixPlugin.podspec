Pod::Spec.new do |s|
  s.name                = 'ZappPhenixPlugin'
  s.version             = '0.4.0'
  s.summary             = 'Phenix Real-Time Video Streaming'
  s.description         = 'Adds support for viewing real-time video streams from the Phenix platform'
  s.homepage            = 'https://phenixrts.com/'
  s.license             = 'TBD!!!'
  s.author              = { 'Nicholas Los' => 'nicholas.los@phenixrts.com' }
  s.source              = { :git => 'https://github.com/Applicaster/ZappPhenixPlugin-iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = "9.0"
  s.platform            = :ios, '9.0'
  s.requires_arc        = true
  s.static_framework    = true
  s.swift_version       = '4.1'

  s.subspec 'ZappPhenixPlugin' do |c|
    c.frameworks = [ 'UIKit', 'PhenixSdk' ]
    c.source_files = 'ZappPhenixPlugin/**/*.{h,m,swift}'
    c.resources = [
      "ZappPhenixPluginResources/**/*.xcassets",
      "ZappPhenixPluginResources/**/*.storyboard",
      "ZappPhenixPluginResources/**/*.xib",
      "ZappPhenixPluginResources/**/*.png"
    ]
    c.dependency 'ZappPlugins'
    c.dependency 'ZappGeneralPluginsSDK'
    c.dependency 'PhenixSdk'
  end

  s.default_subspec = 'ZappPhenixPlugin'
end
