# MJRemoteNSLog
**Extensible Remote Logging for iOS**

Visibility into how users interact with your app is invaluable. This information can go a long way to inform user interaction design, and improve business conversion rates. MJRemoteNSLog provides this crucial level of visibility in a way that captures majority usage information by default, but also allows you to tune everything according to your app's particular needs.

MJRemoteNSLog asynchronously logs notifications to any number of web services, files, or Core Data entities. Each logging message comes with global state information, including a unique identifier for the device, along with any additional data from the notification itself.

When paired with [rack-http-logger](https://github.com/mattt/rack-http-logger), iOS system events can be streamed directly into your web application logs for integrated analysis.

> This project is part of a series of open source libraries covering the mission-critical aspects of an iOS app's infrastructure. Be sure to check out its sister projects: [GroundControl](https://github.com/mattt/GroundControl), [SkyLab](https://github.com/mattt/SkyLab), [CargoBay](https://github.com/mattt/CargoBay), [houston](https://github.com/mattt/houston), [Orbiter](https://github.com/mattt/Orbiter) and [ExtendNSLog](https://github.com/ben46/ExtendNSLog)

### Changelog and releases](History.md)

### AppDelegate.m

```objective-c
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  [[MJRemoteNSLog sharedLogger] addChannelWithURL:[NSURL URLWithString:@"http://example.com"] method:@"LOG"];
  [[MJRemoteNSLog sharedLogger] startLoggingApplicationLifecycleNotifications];
  [[MJRemoteNSLog sharedLogger] startLoggingNotificationName:MJRemoteNSLogExampleNotification];

  // ...
}
```

### Contact

[Jesús López](http://github.com/inyenia)
[@inyenia](https://twitter.com/inyenia)

## License

MJRemoteNSLog is available under the MIT license. See the LICENSE file for more info.

##### Forked from https://github.com/mattt/Antenna
