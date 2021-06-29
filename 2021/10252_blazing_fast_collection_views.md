# Make blazing fast lists and collection views

🎥 Video: https://developer.apple.com/videos/play/wwdc2021/10252/

- `UICollectionView.CellRegistration` + `.dequeueConfiguredReusableCell(...)`
- new cell prefetching (iOS 15, behind the scenes improvements)
- new reconfigure items API: `dataSource.snapshot().reconfigureItems(...)`
- new Image preparation APIs (don't store this on disk!)
    - similarly, new thumbnail APIs
