
import UIKit

class RestaurantTableViewController: UITableViewController {
    
//    var restaurantNames = ["798羊肉爐", "京厚屋-台中一中店", "和和韓式小吃", "本物洋食", "大心-台北信義威秀店", "新東羊", "福勝亭-新店店", "鵝有雞燴", "肉多多-蘆洲集賢店", "韓天閣", "咖食堂", "今大滷肉飯", "富宏牛肉麵", "倉津鍋物", "台電勵進餐廳"]
//    
//    var restaurantLocations = ["台北市", "台中市", "桃園市", "桃園市", "台北市", "台北市", "新北市", "桃園市", "新北市", "台北市", "台北市", "新北市", "台北市", "新北市", "台北市"]
//    
//    var restaurantTypes = ["羊肉爐", "日式豬排", "韓式料理", "咖哩", "泰式料理", "羊肉爐", "日式豬排", "台式便當", "涮涮鍋", "韓式料理", "咖哩", "滷肉飯", "牛肉麵", "涮涮鍋", "酸菜白肉鍋"]
    
//    var restaurantIsFavorites = Array(repeating: false, count: 15)
    
    var restaurants = [
        Restaurant(name: "798羊肉爐", type: "羊肉爐", location: "台北市文山區興隆路一段65號", phone: "02-2933-0571", description: "今年確定無内用，只有真空包外帶，可宅配", image: "798羊肉爐", isFavorite: false),
        Restaurant(name: "京厚屋-台中一中店", type: "日式豬排", location: "台中市北區一中街23-3號",phone: "04-2229-2088", description: "提供吃到飽，不接受訂位，有兒童高腳椅", image: "京厚屋-台中一中店", isFavorite: false) ,
        Restaurant(name: "和和韓式小吃", type: "韓式料理", location: "桃園市楊梅區新梅六街67號", phone: "0927-738-698", description: "只收現金， 需要預訂，不接受訂位", image: "和和韓式小吃", isFavorite: false),
        Restaurant(name: "本物洋食-楊梅埔心店", type: "咖哩", location: "桃園市楊梅區永美路227號", phone: "03-431-3509", description: "不接受訂位", image: "本物洋食-楊梅埔心店", isFavorite: false),
        Restaurant(name: "大心-台北信義威秀店", type: "泰式料理", location: "台北市信義區松壽路20號", phone: "02-2758-0558", description: "不接受訂位", image: "大心-台北信義威秀店", isFavorite: false),
        Restaurant(name: "新東羊", type: "羊肉爐", location: "台北市中山區龍江路356巷11號", phone: "02-2509-2078", description: "假日繁忙不提供炒飯", image: "新東羊", isFavorite: false),
        Restaurant(name: "福勝亭-新店店", type: "日式豬排", location: "新北市新店區北新路三段113號2樓", phone: "02-2916-1348", description: "堅持新鮮食材現裹現炸，不僅以傳統炸豬排為基礎，變化多種風味豬排，也提供烤物、鍋物等多樣定食，美味選擇即時享用", image: "福勝亭-新店店", isFavorite: false),
        Restaurant(name: "鵝有雞燴", type: "台式便當", location: "桃園市龍潭區龍元路23號", phone: "0930-631-657", description: "不接受訂位", image: "鵝有雞燴", isFavorite: false),
        Restaurant(name: "肉多多-蘆洲集賢店", type: "涮涮鍋", location: "新北市蘆洲區集賢路401號", phone: "02-2285-8868", description: "需要預訂，吃到飽提供，Wi-Fi", image: "肉多多-蘆洲集賢店", isFavorite: false),
        Restaurant(name: "韓天閣", type: "韓式料理", location: "台北市中正區羅斯福路四段78巷1弄11號", phone: "02-2368-0788", description: "氣氛悠閒的現代風韓式餐廳，供應套餐、熱炒與烤肉料理，只收現金，供應素食餐點，提供 Wi-Fi", image: "韓天閣", isFavorite: false),
        Restaurant(name: "咖食堂", type: "咖哩", location: "台北市中正區八德路一段82巷9弄13號", phone: "02-2396-5252", description: "位於忠孝新生站/華山/光華商場/台北科技大學這一區的平價咖哩飯及鍋物專賣店，100元左右的價格就可以享有內用湯品及飲料，只收現金，不接受訂位，提供 Wi-Fi", image: "咖食堂", isFavorite: false),
        Restaurant(name: "今大滷肉飯", type: "滷肉飯", location: "新北市三重區大仁街40號", phone: "02-2983-6726", description: "已經營數十年傳承至第二代的今大滷肉飯，以肥而不膩、香郁夠味的滷肉飯而聞名", image: "今大滷肉飯", isFavorite: false),
        Restaurant(name: "富宏牛肉麵", type: "牛肉麵", location: "台北市萬華區洛陽街67-69號", phone: "02-2371-3028", description: "一碗牛肉麵只要100元，可以免費加湯加麵，還有可樂機飲料無限供應，24小時營業", image: "富宏牛肉麵", isFavorite: false),
        Restaurant(name: "倉津鍋物", type: "涮涮鍋", location: "新北市三重區重新路二段48號", phone: "02-2973-3377", description: "平日時段只要299元起，就能享用多種新鮮肉品、蔬菜、火鍋料、飲料、咖哩飯、冰淇淋、甜點等無限自助吃到飽", image: "倉津鍋物", isFavorite: false),
        Restaurant(name: "台電勵進餐廳", type: "酸菜白肉鍋", location: "台北市大安區和平東路一段75巷", phone: "02-2393-4780", description: "在地經營有50多年的老餐廳，最初是孫運璿先生與好友陳鑄夫婦，於民國52年引進東北酸菜白肉鍋，餐點是吃到飽，豬肉、牛肉無限提供，還有酸菜、青菜及燒餅等其他配料都無限取用", image: "台電勵進餐廳", isFavorite: false)]
    
    // 藉由自定義方法取得生成表格架構的DataSource
    // UITableViewDiffableDataSource<Section, String>
//    lazy var myDataSource = configureDataSource()
    lazy var myDataSource = configureDataSource2()

    // 使用lazy修飾字是因為在實例完成初始化之前無法取得其值

    @IBAction func unwindToHome(segue: UIStoryboardSegue){
        dismiss(animated: true, completion: nil)
    }
    
    
    // MARK: - 生命週期方法(視圖已經完成載入)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = myDataSource
       
        // 將導覽列改為大標題
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // 自訂導覽列
        if let appearance = navigationController?.navigationBar.standardAppearance{
            appearance.configureWithOpaqueBackground()
            if let customFont = UIFont(name: "Nunito-Bold", size: 45.0){
                
//                appearance.titleTextAttributes = [.foregroundColor: UIColor(red: 218/255, green: 96/255, blue: 51/255, alpha: 1.0)]
                
                // 改用自行定義的extension簡化
                appearance.titleTextAttributes = [.foregroundColor: UIColor(red: 218, green: 96, blue: 51, alpha: 1.0)]
                
                
                
//                appearance.largeTitleTextAttributes = [.foregroundColor: UIColor(red: 218/255, green: 96/255, blue: 51/255, alpha: 1.0), .font: customFont]
                
                // 改用自行於Assets.xcassets設定的顏色
                appearance.largeTitleTextAttributes = [.foregroundColor: UIColor(named: "NavigationBarTitle2"), .font: customFont]
            }
            navigationController?.navigationBar.standardAppearance = appearance
            navigationController?.navigationBar.compactAppearance = appearance
            navigationController?.navigationBar.scrollEdgeAppearance = appearance
        }
        
        // 移除下一頁返回紐旁邊的標題
        navigationItem.backButtonTitle = ""
        
        // 建立快照
        // 初始化方法(建構子)
        // init()
//        var snapshot = NSDiffableDataSourceSnapshot<Section, String>()
//        
//        snapshot.appendSections([.all])
//        snapshot.appendItems(restaurantNames, toSection: .all)
        
        var snapshot = NSDiffableDataSourceSnapshot<Section, Restaurant>()
        
        snapshot.appendSections([.all])
        snapshot.appendItems(restaurants, toSection: .all)
        
        myDataSource.apply(snapshot, animatingDifferences: false)
        
        // 移除分隔線
//        tableView.separatorStyle = .none
        
        tableView.cellLayoutMarginsFollowReadableWidth = true
        
    }
    
    // 取得dataSource
    // 對表格區塊使用Section型別
    // 對表格儲存格的資料使用String型別
//    func configureDataSource() -> UITableViewDiffableDataSource<Section, String>{
//        
////        let cellIdentifier = "datacell"
//        let cellIdentifier = "favoritecell"
//        
//        // 建立UITableViewDiffableDataSource實例
//        // 初始化方法(建構子)
//        /*
//         init(
//             tableView: UITableView,
//             cellProvider: @escaping UITableViewDiffableDataSource<SectionIdentifierType, ItemIdentifierType>.CellProvider
//         )
//         */
//        let dataSource = UITableViewDiffableDataSource<Section, String>(
//            tableView: tableView,
//            // 閉包
//            cellProvider:
//                { tableView, indexPath, restaurantName in
//                let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RestaurantTableViewCell
//                
////                cell.textLabel?.text = restaurantName
////                cell.imageView?.image = UIImage(named: self.restaurantNames[indexPath.row])
//                
//                cell.nameLabel.text = self.restaurantNames[indexPath.row]
//                cell.locationLabel.text = self.restaurantLocations[indexPath.row]
//                cell.typeLabel.text = self.restaurantTypes[indexPath.row]
//                cell.thumbnailImageView.image = UIImage(named: self.restaurantNames[indexPath.row])
//                    
//                    cell.accessoryType = self.restaurantIsFavorites[indexPath.row] ? .checkmark : .none
//                
//                return cell
//                }
//        )
//        return dataSource
//        
//    }
    
    // MARK: - 生命週期方法(視圖即將顯現)
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = true
        
        // 將導覽列改為大標題
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    // MARK: - 取得dataSource
    // 對表格區塊使用Section型別
    // 對表格儲存格的餐廳屬性資料使用Restaurant型別
    func configureDataSource2() -> UITableViewDiffableDataSource<Section, Restaurant>{
        
//        let cellIdentifier = "datacell"
        let cellIdentifier = "favoritecell"
        
        // 建立UITableViewDiffableDataSource實例
        // 初始化方法(建構子)
        /*
         init(
             tableView: UITableView,
             cellProvider: @escaping UITableViewDiffableDataSource<SectionIdentifierType, ItemIdentifierType>.CellProvider
         )
         */
        let dataSource = RestaurantDiffableDataSource(
            tableView: tableView,
            // 閉包
            cellProvider:
                { tableView, indexPath, restaurant in
                let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RestaurantTableViewCell
                
//                cell.textLabel?.text = restaurantName
//                cell.imageView?.image = UIImage(named: self.restaurantNames[indexPath.row])
                
                    cell.nameLabel.text = restaurant.name
                    cell.locationLabel.text = restaurant.location
                    cell.typeLabel.text = restaurant.type
                    cell.thumbnailImageView.image = UIImage(named: restaurant.image)
                    
                    cell.accessoryType = restaurant.isFavorite ? .checkmark : .none
                
                return cell
                }
        )
        return dataSource
        
    }
    
    // MARK: - UITableViewDelegate
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        
//        // 建立選項選單作為動作清單
//        /*
//         convenience init(
//             title: String?,
//             message: String?,
//             preferredStyle: UIAlertController.Style
//         )
//         */
//        let optionMenu = UIAlertController(title: nil, message: "操作選項", preferredStyle: .actionSheet)
//        
//        // iPad用(彈出式視窗)
//        if let popoverController = optionMenu.popoverPresentationController{
//            if let cell = tableView.cellForRow(at: indexPath){
//                popoverController.sourceView = cell
//                popoverController.sourceRect = cell.bounds
//            }
//        }
//        
//        // =顯示選單=
//        present(optionMenu, animated: true, completion: nil)
//        
//        // 加入動作至選單中
//        // ==取消==
//        /*
//         convenience init(
//             title: String?,
//             style: UIAlertAction.Style,
//             handler: ((UIAlertAction) -> Void)? = nil
//         )
//         */
//        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
//        
//        optionMenu.addAction(cancelAction)
//        
//        // ==訂位==
//        // 處理器閉包
//        let reserveActionHandler = {
//            (action:UIAlertAction!) -> Void in
//            // 閉包本體
//            let alertMessage = UIAlertController(title: "尚未開放", message: "請稍後再操作", preferredStyle: .alert)
//            
//            alertMessage.addAction(UIAlertAction(title: "好吧...", style: .default, handler: nil))
//            
//            self.present(alertMessage, animated: true, completion: nil)
//        }
//        
//        let reserveAction = UIAlertAction(title: "預約", style: .default, handler: reserveActionHandler)
//        
////        optionMenu.addAction(reserveAction)
//        
//        // 加入收藏
//        let favoriteAction = UIAlertAction(title: "加入收藏", style: .default) { (action:UIAlertAction) -> Void in
//            let cell = tableView.cellForRow(at: indexPath)
//            cell?.accessoryType = .checkmark
//            
//            self.restaurants[indexPath.row].isFavorite = true
//        }
////        optionMenu.addAction(favoriteAction)
//        
//        // 取消收藏
//        let cancelFavoriteAction = UIAlertAction(title: "取消收藏", style: .default) { (action:UIAlertAction) -> Void in
//            let cell = tableView.cellForRow(at: indexPath)
//            cell?.accessoryType = .none
//            
//            self.restaurants[indexPath.row].isFavorite = false
//        }
////        optionMenu.addAction(cancelFavoriteAction)
//        
//        let favoriteSwitchTitle =  self.restaurants[indexPath.row].isFavorite ? "取消收藏" : "加入收藏"
//        
//        let favoriteSwitchAction = UIAlertAction(title: favoriteSwitchTitle, style: .default, handler: {
//            (action:UIAlertAction) -> Void in
//            let cell = tableView.cellForRow(at: indexPath)
//            
//            self.restaurants[indexPath.row].isFavorite =  !self.restaurants[indexPath.row].isFavorite
//            
//            cell?.accessoryType = self.restaurants[indexPath.row].isFavorite ?
//            .checkmark :
//            .none
//        })
//        
//        optionMenu.addAction(favoriteSwitchAction)
//        
//        tableView.deselectRow(at: indexPath, animated: false)
//    }
    
    // MARK: - 滑動
    // 向左滑動
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        // 取得所選的餐廳
        guard let restaurant = self.myDataSource.itemIdentifier(for: indexPath)
        else {
            return UISwipeActionsConfiguration()
        }
        
        // 刪除
        let deleteAction = UIContextualAction(style: .destructive, title: "刪除餐廳") { (action, sourceView, completionHandler) in
            
            var snapshop = self.myDataSource.snapshot()
            snapshop.deleteItems([restaurant])
            self.myDataSource.apply(snapshop, animatingDifferences: true)
            
            completionHandler(true)
        }
        
        deleteAction.backgroundColor = UIColor.systemPink
        deleteAction.image = UIImage(systemName: "trash.fill")
        
        // 分享
//        let shareAction = UIContextualAction(style: .normal, title: "分享餐廳") { (action, sourceView, completionHandler) in
//            let defaultText = "分享" + restaurant.name
//            let activityController = UIActivityViewController(activityItems: [defaultText], applicationActivities: nil)
//            
//            self.present(activityController, animated: true, completion: nil)
//            
//            completionHandler(true)
//        }
        
        // 分享圖片
        let shareAction = UIContextualAction(style: .normal, title: "分享餐廳") { (action, sourceView, completionHandler) in
            let defaultText = "分享" + restaurant.name
            let activityController: UIActivityViewController
            
            if let imageToShare = UIImage(named: restaurant.image){
                activityController = UIActivityViewController(activityItems: [defaultText, imageToShare], applicationActivities: nil)
            } else {
                activityController = UIActivityViewController(activityItems: [defaultText], applicationActivities: nil)
            }
            
            // iPad用(彈出式視窗)
            if let popoverController = activityController.popoverPresentationController{
                if let cell = tableView.cellForRow(at: indexPath){
                    popoverController.sourceView = cell
                    popoverController.sourceRect = cell.bounds
                }
            }
            
            
            self.present(activityController,animated: true, completion: nil)
            
            completionHandler(true)
        }
        
        shareAction.backgroundColor = UIColor.systemMint
        shareAction.image = UIImage(systemName: "mug.fill")
        
        // 將操作設定為滑動
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction, shareAction])
        return swipeConfiguration
    }
    
    // 向右滑動
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        // 取得所選的餐廳
        guard let restaurant = self.myDataSource.itemIdentifier(for: indexPath)
        else {
            return UISwipeActionsConfiguration()
        }
        
        let favoriteSwitchTitle =  self.restaurants[indexPath.row].isFavorite ? "取消收藏" : "加入收藏"
        
        let favoriteSwitchAction =  UIContextualAction(style: .normal, title: favoriteSwitchTitle) { (action, sourceView, completionHandler) in
            
            self.restaurants[indexPath.row].isFavorite =  !self.restaurants[indexPath.row].isFavorite
            
            completionHandler(true)
        }
        favoriteSwitchAction.image =
        self.restaurants[indexPath.row].isFavorite ?
        UIImage(systemName: "suit.heart.fill") :  UIImage(systemName: "suit.heart")
        
        favoriteSwitchAction.backgroundColor = UIColor.systemPurple
        
        
        tableView.deselectRow(at: indexPath, animated: false)
        
        // 將操作設定為滑動
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [favoriteSwitchAction])
        return swipeConfiguration
    }
    
    // MARK: - Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRestaurantDetail"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let destanationController = segue.destination as! RestaurantDetailViewController
                
                destanationController.restaurant = self.restaurants[indexPath.row]
            }
        }
    }
    
    
}
