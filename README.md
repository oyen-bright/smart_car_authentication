# smart_car_authentication


Integrate Smartcar into your Flutter app effortlessly to retrieve vehicle data and trigger actions with our simple and secure car API.

####  Flutter Plugin Built on Smartcar Native SDKs

This Flutter plugin is built upon Smartcar's native SDKs for both iOS and Android, ensuring seamless integration with your Flutter app. For more details on Smartcar's native SDKs, you can refer to the official documentation:

- [Smartcar iOS SDK Documentation](https://smartcar.com/docs/getting-started/tutorials/ios)
- [Smartcar Android SDK Documentation](https://smartcar.com/docs/getting-started/tutorials/android)




## Getting Started



### 1. Register Your App

- Obtain your `clientId` by registering your application on the [Smartcar dashboard](https://smartcar.com/).
- Set up the required permissions based on your use case.

### 2. Install the Plugin

Add the Smartcar Flutter plugin to your `pubspec.yaml` file:

```yaml
dependencies:
  smartcar_flutter: ^1.0.0

````

### 3. Initialize Smartcar
Configure Smartcar with your credentials and required permission

```dart
await Smartcar.setup(
  configuration: const SmartcarConfig(
    clientId: "{YOUR_CLIENT_ID}",
    redirectUri: "sc{YOUR_CLIENT_ID}://{YOUR_HOST}",
    scopes: [SmartcarPermission.readOdometer],
    testMode: true,
  ),
);
```


### 4. Launch Authentication Flow
Start the Smartcar authentication flow:

```dart
await Smartcar.launchAuthFlow();
```


### 5. Listen for Smartcar Responses
Subscribe to the onSmartcarResponse stream to receive authentication responses:

```dart
Smartcar.onSmartcarResponse.listen((SmartcarAuthResponse response) {
  // Handle the authentication response
  print("Received Smartcar response: ${response.code}");
});

```



### Smartcar Permissions
The plugin supports a variety of permissions, allowing you to access specific vehicle information. For a detailed list, refer to the [Smartcar Permissions Documentation.](https://smartcar.com/)

## Example
Here's a quick example demonstrating the Smartcar Flutter plugin usage:


```dart
// Initialize Smartcar
await Smartcar.setup(
  configuration: const SmartcarConfig(
    clientId: "{YOUR_CLIENT_ID}",
    redirectUri: "sc{YOUR_CLIENT_ID}://{YOUR_HOST}",
    scopes: [SmartcarPermission.readOdometer],
    testMode: true,
  ),
);

// Launch Smartcar authentication flow
await Smartcar.launchAuthFlow();

// Listen for Smartcar responses
Smartcar.onSmartcarResponse.listen((SmartcarAuthResponse response) {
  // Handle the authentication response
  print("Received Smartcar response: ${response.code}");
});


```
