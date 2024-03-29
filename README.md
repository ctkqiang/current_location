## SimpleInAppWebView

|                 | Android | IOS     |
| --------------- | ------- | ------- |
| **Requirement** | min 16+ | min 9.0 |

### Getting Started

This package get the user current `Location` details. The returned data are the following:

```dart
Location({
    this.country,
    this.countryCode,
    this.region,
    this.regionName,
    this.timezone,
    this.latitude,
    this.longitude,
    this.isp,
    this.currentIP,
});
```

#### Demo:

![demo](https://github.com/johnmelodyme/current_location/blob/main/demo.jpg?raw=true)

### How to use?

1. Installation
   Add `current_location` to `pubspec.yaml`, and hit command `flutter pub get`.
   or
   run `flutter pub add current_location`

   ```yaml
   dependencies:
     current_location: any
   ```

2. Implementation
   Before implementing, make sure you uderstand the `parameters`.

```dart
Location({
    this.country,
    this.countryCode,
    this.region,
    this.regionName,
    this.timezone,
    this.latitude,
    this.longitude,
    this.isp,
    this.currentIP,
});
```

```dart
  import 'package:current_location/current_location.dart';
```

Example of calling the function into a widget:

```dart
FutureBuilder(
    future: UserLocation.getValue(),
    builder: (BuildContext context, dynamic snapshot) {
        if (snapshot.hasData) {
            return Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Text('Country: ${snapshot.data!.country}'),
                        Text('Country Code: ${snapshot.data!.countryCode}'),
                        Text('Region: ${snapshot.data!.region}'),
                        Text('Region Name: ${snapshot.data!.regionName}'),
                        Text('Timezone: ${snapshot.data!.timezone}'),
                        Text('Latitude: ${snapshot.data!.latitude}'),
                        Text('Longitude: ${snapshot.data!.longitude}'),
                        Text('ISP: ${snapshot.data!.isp}'),
                        Text('Current IP: ${snapshot.data!.currentIP}'),
                    ],
                ),
            );
        }
        
        return const CircularProgressIndicator();
    },
),
```

Example of returning it raw:

```dart
UserLocation.getValue().then((value) => print(value?.{REPLACE_THIS_OBJECT}));
```
or
```dart
late final UserLocation userLocation =  await UserLocation.getValue();

print(userLocation.country!);
print(userLocation.{REPLACE_THIS_OBJECT}!)
```

### Contribution:

I Would ❤️ to see any contributions. If you do liked my work, show some ❤️ by ⭐ repo.
我愿意❤️ 查看任何贡献。如果你真的喜欢我的作品，展示一下❤️ 通过⭐ 回购。
<br />
<img src="https://raw.githubusercontent.com/johnmelodyme/current_location/johnmelodyme-alipayqr/IMG_4026.JPG"  style="height: 500px !important;width: 300px !important;" >
