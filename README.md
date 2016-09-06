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

This is the first step to complete to start using AppFriends. After logging into your admin panel, and created your application, you can find your `App ID` and `App Secret`. Then use them in the initialization.

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
To login the user, you can use:

	public func loginWithUserInfo(params: [String: AnyObject]?, completion: ((response: AnyObject?, error: NSError?) -> ())? = nil)
	
The first time user login, a new user will be created on AppFriends.	
At login, you should provide the user ID, and a user name for this user. Example:

	HCSDKCore.sharedInstance.loginWithUserInfo([
                    HCSDKConstants.kUserID: "random ID here",
                    HCSDKConstants.kUserName: "User Name"
                    ])
                { (response, error) in
                    
                    if let err = error {
                    	// handle error
                    }
                    
                }
You can check if a user has logged in or not by calling

	HCSDKCore.sharedInstance.isLogin()


### Making Requests
You can make direct API request to AppFriends by calling `startRequest` method on the singleton. For example, if you want to fetch the profile info of a user, you can do so by:

```
let appFriendsCore = HCSDKCore.sharedInstance
appFriendsCore.startRequest(httpMethod: "GET", path: "/users/\(userID)", parameters: nil) { (response, error) in
}
```

## Advanced Usage
Besides chat and social, you can take advantage of the core of AppFriends, which is content pushing, to implement some interesting Applications. 
