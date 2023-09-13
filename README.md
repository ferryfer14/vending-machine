# Core Base Project

Core Project Multiple Language

## Environment

`sdk: ">=2.12.0 <3.0.0"`

`flutter SDK: "=3.7.3"`

## Getting Started

Install Platform android 28 in SDK Manager (android studio)
Install flutter sdk version 3.7.3.
Jika saat running terjadi error compile sdk/ target sdk.
silahkan tambahkan ini

android > local.properties

```properties
    flutter.minSdkVersion=23
    flutter.targetSdkVersion=33
    flutter.compileSdkVersion=33
```

Terminal

```terminal
    flutter pub get
    cd android && ./gradlew clean && ./gradlew build
```

<!-- ### Visual Samples For Above Examples

Result<br/>
<img src="https://github.com/ferryfer14/base_project/blob/master/assets/result.gif" width=250><br/>

<img src="https://github.com/ferryfer14/base_project/blob/master/assets/result.png" width=250><br/> -->
