# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'LocalHost' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for LocalHost
  pod "GCDWebServer", "~> 3.0"

  target 'LocalHostTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'LocalHostUITests' do
    # Pods for testing
  end

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
      config.build_settings.delete 'ARCHS'
    end
  end
end