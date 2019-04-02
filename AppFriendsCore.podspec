Pod::Spec.new do |s|

# 1
s.platform = :ios, '10.0'
s.ios.deployment_target = '10.0'
s.name = "AppFriendsCore"
s.summary = "Core SDK for AppFriends."
s.requires_arc = true

# 2
s.version = "2.3.0"

# 3
s.license = { :type => "MIT" }

# 4 - author
s.author = { "Hao Wang" => "hao.wang@hacknocraft.com" }

# 5 - home page
s.homepage = "http://appfriends.me"

# 6 - framework location
s.vendored_frameworks = "AppFriendsCore.framework"
s.source = { :git => "https://github.com/Hacknocraft/AppFriendsCore.git", :tag => s.version.to_s}

# 7
s.dependency 'Alamofire', '~> 5.0.0-beta.4'
s.dependency 'SwiftyJWT', '~> 0.0.2'
s.dependency 'CoreStore', '~> 6.3.0'
s.dependency 'Cloudinary', '~> 1.0.15'
s.dependency 'Socket.IO-Client-Swift', '~> 15.0.0'

end
