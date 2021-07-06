# Make blazing fast lists and collection views

🎥 Video: https://developer.apple.com/videos/play/wwdc2021/10252/

- `UICollectionView.CellRegistration` + `.dequeueConfiguredReusableCell(...)`
- new cell prefetching (iOS 15, behind the scenes improvements)
- new reconfigure items API: `dataSource.snapshot().reconfigureItems(...)`
- new Image preparation APIs (don't store this on disk!)
    - similarly, new thumbnail APIs

### Reconfiguring cells

#### Tyler Fox [@smileyborg](https://mobile.twitter.com/smileyborg/status/1403908057185144832) thread:

> iOS 15 introduces a new way for you to conveniently update content displayed in existing cells in `UICollectionView` and `UITableView`: reconfigure.
>
> When and why should you use reconfigure? How is it different from reloading an item or row? Let’s dive in with a quick thread.
>
> You can think of reconfigure as a lighter-weight version of reload.
>
> **Reload:** replaces the existing cell with a new cell.
>
> **Reconfigure:** allows you to directly update the existing cell.
>
> Because reconfigure doesn’t request/create a new cell, it’s significantly more efficient!
>
> How does reconfigure work? For each item/row you reconfigure:
>
> - If there’s no existing cell, it’s a no-op!
> - Otherwise, the collection/table view calls your cell provider again, but with special behavior to return the *existing* cell when you dequeue one for that index path.
> 
> This means it will re-run your normal cell configuration code (in your cell registration, diffable cell provider, or data source `cellForItemAt`/`cellForRowAt` implementation) using the existing cell. So your existing cell configuration code can now update cells later, too!
>
> After cells are reconfigured, they’re always self-sized again, so any changes to the content which affect cell sizing will be automatically taken into account, and the cell resized as necessary.
> 
> When reconfiguring a cell, inside your cell provider you must dequeue the same type of cell (i.e. use the same registration or reuse identifier) to get the existing cell back, and must return that same cell back to the collection/table view.
> 
> Therefore, if you need to actually change the cell type, you can’t use reconfigure — that’s a case where you want to continue to reload the item/row instead. But generally speaking, you should always prefer reconfigure whenever possible, as it’s less invasive and more efficient.
> 
> One particularly important reason to prefer reconfigure is because it will preserve existing prepared cells — cached cells which were either prefetched, or already displayed and are waiting to become visible again. Reload will discard those cells, which wastes valuable work.
> 
> So how do you reconfigure? Using diffable data source:
>
> - [`NSDiffableDataSourceSnapshot.reconfigureItems(_:)`](https://developer.apple.com/documentation/uikit/nsdiffabledatasourcesnapshot/3804468-reconfigureitems)
>
> If not using diffable:
> - [`UICollectionView.reconfigureItems(at:)`](https://developer.apple.com/documentation/uikit/uicollectionview/3801889-reconfigureitems)
> - [`UITableView.reconfigureRows(at:)`](https://developer.apple.com/documentation/uikit/uitableview/3801923-reconfigurerows)

### Diffable DataSource behavior changes

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
