source 'https://github.com/CocoaPods/Specs.git'

use_frameworks!

def tor
  pod 'Tor/GeoIP',
   '~> 407.13'
  #:podspec => 'https://raw.githubusercontent.com/iCepa/Tor.framework/pure_pod/TorStatic.podspec'
  # :path => '../Tor.framework'
end

def iptproxy
  pod 'IPtProxyUI/AppEx',
  '~> 3.0.1'
  # :git => 'https://github.com/tladesignz/IPtProxyUI-ios'
  # :path => '../IPtProxyUI-ios'
end

target 'Orbot' do
  platform :ios, '15.0'

  tor
  iptproxy

  pod 'Eureka', '~> 5.3'
  pod 'ProgressHUD', '~> 13.6'
end

target 'Orbot Mac' do
  platform :macos, '11.0'

  tor
  iptproxy
end

target 'TorVPN' do
  platform :ios, '15.0'

  tor
  iptproxy

  pod 'GCDWebServerExtension', :git => 'https://github.com/tladesignz/GCDWebServer.git'
end

target 'StatusWidget' do
  platform :ios, '15.0'

  tor
  iptproxy
end

target 'TorVPN Mac' do
  platform :macos, '11.0'

  tor
  iptproxy
end

post_install do |installer|
  installer.generated_projects.each do |project|
    project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
      end
    end
  end
end
