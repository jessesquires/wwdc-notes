# Make blazing fast lists and collection views

🎥 Video: https://developer.apple.com/videos/play/wwdc2021/10252/

- `UICollectionView.CellRegistration` + `.dequeueConfiguredReusableCell(...)`
- new cell prefetching (iOS 15, behind the scenes improvements)
- new reconfigure items API: `dataSource.snapshot().reconfigureItems(...)`
- new Image preparation APIs (don't store this on disk!)
    - similarly, new thumbnail APIs

#### Tyler Fox [@smileyborg](https://mobile.twitter.com/smileyborg/status/1402056034416398338) thread:

> Do you use diffable data source?
>
> If so, there are some big changes in iOS 15:
> - `applySnapshot(_: animatingDifferences: false)` now diffs & only performs minimal updates to UI
> - New API `applySnapshotUsingReloadData` if you want `reloadData`
> - New API to efficiently reconfigure items!
>
> Generally speaking, you should continue to use `applySnapshot()` — whether animating or not — whenever possible, and avoid using `reloadData` (as that's a big hammer that resets everything, it throws away all your existing cells and more).
> 
> But there are some cases where `reloadData` does make sense, e.g. if you are applying a completely different set of data, or recycle the collection/table view for use on an entirely different screen, or have a huge set of changes and want to skip diffing/updates.
>
> You might find that this behavior change for `animatingDifferences:false` exposes some issues.
>
> The simple quick fix to get the old behavior back is just to use `applySnapshotUsingReloadData` instead of `animatingDifferences:false`.
>
> But, be aware that may just paper over real bugs.

#### Tyler Fox [@smileyborg](https://mobile.twitter.com/smileyborg/status/1402060788773265408) thread:

*What did `applySnapshot(...)` do before?*

> **Before iOS 15:**
> 
> `animatingDifferences:true` --> diff + updates (animate)
> 
> `animatingDifferences:false` --> reloadData
>
> **iOS 15:**
> 
> `animatingDifferences:true` --> diff + updates (animate)
> 
> `animatingDifferences:false` --> diff + updates (no animation)
> 
> `applySnapshotUsingReloadData` --> reloadData
