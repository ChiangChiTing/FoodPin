
import UIKit

class RestaurantDiffableDataSource: UITableViewDiffableDataSource<Section, Restaurant> {
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        // 實作刪除
//        if editingStyle == .delete{
//            if let restaurant = self.itemIdentifier(for: indexPath){
//                var snapshop = self.snapshot()
//                snapshop.deleteItems([restaurant])
//                self.apply(snapshop, animatingDifferences: true)
//            }
//        }
//    }
}

enum Section {
    case all
}
