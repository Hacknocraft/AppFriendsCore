# AppFriends Core
AppFriendsCore SDK is used to make direct API calls to AppFriends server. For advance AppFriends users who wish to build UI from scratch, You only need to install this SDK into your project to start. It conveniently handles client authentication, request construction and callbacks. At the same time, it leaves the UI implementation completely up to the developer. 

## Integration

### Cocoapods
To integrate AppFriends iOS SDK to your Xcode iOS project, add this line in your `Podfile`

	pod 'AppFriendsCore'

Also, add `use_frameworks!` to the file. eg.

	platform :ios, "8.0"
	use_frameworks!
	...
	
## Initialization

After logging into your admin panel, and created your application, you can find your `App ID` and `App Secret`. Then use them in the initialization.

Initialize AppFriends in Application Delegate `didFinishLaunchingWithOptions` method.

**Swift**

	let appFriendsCore = HCSDKCore.sharedInstance
    appFriendsCore.initialize(key: "U9x5pl32dZ7u87Nr75Wx0wtt", secret: "CSegECsEOz0E7PrR2SJ78wtt") { (success, error) in
            
            if !success {
                // handle error here
            }
        }
        
## Usage

### Singleton
`HCSDKCore.sharedInstance` is a singleton to provide easy access.

### Constants
Constants can be accessed from `HCSDKConstants`

### Login


### Making Requests

