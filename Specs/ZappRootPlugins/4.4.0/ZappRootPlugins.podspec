Pod::Spec.new do |s|
	s.name = "ZappRootPlugins"
	s.version = "4.4.0"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappRoot"
	s.description = "ZappRoot"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappRootPlugins_Framework_4.4.0_794c3d46e93966792c0b29e2377889ff256d0069.zip"
  }
	s.static_framework = true
	s.requires_arc = true
	s.default_subspec = 'Basic'
	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'YES',
								 'SWIFT_VERSION' => '4.1',
								 'OTHER_CFLAGS'  => '-fembed-bitcode'
						 }

	s.subspec 'Basic' do |basic|
		basic.vendored_frameworks = 'ZappRootPluginBase.framework'
		basic.dependency 'ApplicasterSDK'
		basic.dependency 'ZappPlugins'
		basic.resources = [
			'ZappRootPluginBase.framework/ZP*.nib'
		]


  end

 	s.subspec 'NativeTabBar' do |nativeTabBar|
		nativeTabBar.vendored_frameworks = 'ZappRootPluginNativeTabBar.framework'

		nativeTabBar.dependency 'ComponentsSDK'
		nativeTabBar.dependency 'UIViewAppearanceSwift'
		nativeTabBar.dependency 'ComponentsSDK'
		nativeTabBar.dependency 'ZappRootPlugins/Basic'
 	end

	s.subspec 'TwoLevelRNMenu' do |twoLevelRNMenu|
	 twoLevelRNMenu.vendored_frameworks = 'ZappRootPlugin2LevelRNMenu.framework'
	 twoLevelRNMenu.dependency 'ComponentsSDK'
	 twoLevelRNMenu.dependency 'ZappReactNativeAdapter/Default'
	 twoLevelRNMenu.dependency 'ZappRootPlugins/Basic'

	end
end
