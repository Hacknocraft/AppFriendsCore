Pod::Spec.new do |s|

# 1
s.platform = :ios, '8.0'
s.ios.deployment_target = '8.0'
s.name = "AppFriendsCore"
s.summary = "Core SDK for AppFriends."
s.requires_arc = true

# 2
s.version = "0.1.6"

# 3
s.license = { :type => "MIT" }

# 4 - author
s.author = { "Hao Wang" => "hao.wang@hacknocraft.com" }

# 5 - home page
s.homepage = "http://appfriends.me"

# 6 - framework location
s.vendored_frameworks = "AppFriendsCore.framework"
s.source = { :git => "https://github.com/laeroah/AppFriendsCoreFramework.git", :tag => "0.1.6"}

# 7
s.dependency 'Alamofire'
s.dependency 'JSONWebToken'
s.dependency 'EZSwiftExtensions'
s.dependency 'CoreStore'
s.dependency 'Cloudinary'

end