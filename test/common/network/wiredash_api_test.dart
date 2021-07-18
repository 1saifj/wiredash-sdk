import 'package:test/test.dart';
import 'package:wiredash/src/common/device_info/device_info.dart';
import 'package:wiredash/src/common/network/wiredash_api.dart';
import 'package:wiredash/src/feedback/data/persisted_feedback_item.dart';

void main() {
  group('FeedbackItem', () {
    test('toFeedbackBody()', () {
      expect(
        const PersistedFeedbackItem(
          deviceInfo: DeviceInfo(
            appIsDebug: true,
            deviceId: "8F821AB6-B3A7-41BA-882E-32D8367243C1",
            locale: "en_US",
            padding: [0, 66, 0, 0],
            physicalSize: [1080, 2088],
            pixelRatio: 2.75,
            platformOS: "android",
            platformOSBuild: "RSR1.201013.001",
            platformVersion:
                '2.10.2 (stable) (Tue Oct 13 15:50:27 2020 +0200) on "android_ia32"',
            textScaleFactor: 1,
            viewInsets: [0, 0, 0, 685],
          ),
          email: 'email@example.com',
          message: 'Hello world!',
          type: 'bug',
          user: 'Testy McTestFace',
          sdkVersion: 1,
        ).toFeedbackBody(),
        {
          'deviceInfo':
              '{"appIsDebug":true,"deviceId":"8F821AB6-B3A7-41BA-882E-32D8367243C1","locale":"en_US","padding":[0.0,66.0,0.0,0.0],"physicalSize":[1080.0,2088.0],"pixelRatio":2.75,"platformOS":"android","platformOSBuild":"RSR1.201013.001","platformVersion":"2.10.2 (stable) (Tue Oct 13 15:50:27 2020 +0200) on \\"android_ia32\\"","textScaleFactor":1.0,"viewInsets":[0.0,0.0,0.0,685.0]}',
          'email': 'email@example.com',
          'message': 'Hello world!',
          'type': 'bug',
          'user': 'Testy McTestFace',
          'sdkVersion': '1',
        },
      );
    });
  });
}
