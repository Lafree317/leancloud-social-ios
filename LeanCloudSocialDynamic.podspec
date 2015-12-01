Pod::Spec.new do |s|

  component      = "LeanCloudSocial"

  s.name         = "LeanCloudSocialDynamic"
  s.version      = "0.0.7"
  s.summary      = "LeanCloud iOS Social SDK for mobile backend."
  s.homepage     = "https://leancloud.cn"
  s.license      = { :type => "Commercial", :text => "© Copyright 2015 LeanCloud, Inc. See https://leancloud.cn/terms.html" }
  s.author       = { "LeanCloud" => "support@leancloud.cn" }
  s.documentation_url = "https://leancloud.cn/docs/sns.html"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/leancloud/leancloud-social-ios.git", :tag => s.version.to_s }
  s.source_files = "Classes/*.{h,m}"
  s.public_header_files = "Classes/AVUser+SNS.h", "Classes/AVOSCloudSNS.h"

  s.dependency "AVOSCloudDynamic"
  s.dependency "AFNetworking", "~> 2.0"

  s.xcconfig = {
      "FRAMEWORK_SEARCH_PATHS" => "\"${PODS_ROOT}/AVOSCloudDynamic/**\" \"${PODS_ROOT}/#{s.name}/**\"",
      "OTHER_LDFLAGS" => "$(inherited) -ObjC -framework AVOSCloud",
      "LD_RUNPATH_SEARCH_PATHS" => "@loader_path/../Frameworks"
  }
end
