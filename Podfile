platform :ios, '16.0'

use_frameworks!

install! 'cocoapods',
            :warn_for_unused_master_specs_repo => false

target 'VolleyballScoreApp' do
  pod 'SwiftLint'
  pod 'LicensePlist'

  target 'VolleyballScoreAppTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'VolleyballScoreAppUITests' do
    # Pods for testing
  end
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '16.0'
    end
  end
end

