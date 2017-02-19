# Uncomment the next line to define a global platform for your project

platform :ios, '9.0'
use_frameworks!
target 'SomeMarket' do
    pod 'SwiftyJSON'
    pod 'RealmSwift', '~> 2.4.1’




post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['SWIFT_VERSION'] = '3.0'
      end
    end
  end


end