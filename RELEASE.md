# Release checklist

- run `pana` and check score is 110/100
- Bump version in `pubspec.yaml`
- Increment `wiredashSdkVersion` in `lib/src/version.dart` by 1 
- Write release notes in `CHANGELOG.md`
- Commit changes
- Tag release `vX.Y.Z` and push it
- `pub publish`
- Copy paste release notes into github release
- Announce release on Twitter 🎉