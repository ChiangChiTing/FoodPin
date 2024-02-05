
import UIKit

class RestaurantDetailViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var headerView: RestaurantDetailHeaderView!
    
    // 從連結到的視圖返回上一頁(本視圖)
    @IBAction func close(segue: UIStoryboardSegue){
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func rateRestaurant(segue: UIStoryboardSegue){
        guard let identifier = segue.identifier else {
            return
        }
        
     
        dismiss(animated: true) {
            if let rating = Restaurant.Rating(rawValue: identifier){
                self.restaurant.rating = rating
                self.headerView.ratingImageView.image = UIImage(named: rating.image)
            }
            
            let scaleTransform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.headerView.ratingImageView.transform = scaleTransform
            self.headerView.ratingImageView.alpha = 0
            
            UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.7, options: [],  animations: {
                self.headerView.ratingImageView.transform = .identity
                self.headerView.ratingImageView.alpha = 1
            }, completion: nil)
        }
    }
    
    var restaurant: Restaurant!
    
    var restaurantImageName = ""

    // MARK: - 生命週期方法(視圖已經完成載入)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.contentInsetAdjustmentBehavior = .never

        headerView.nameLabel.text = restaurant.name
        
        headerView.typeLabel.text = restaurant.type
        
        headerView.headerImageView.image = UIImage(named: restaurant.image)
        
        let heartImage = restaurant.isFavorite ? "heart.fill" : "heart"
        
        headerView.heartButton.tintColor = restaurant.isFavorite ? .systemYellow : .white
        
        headerView.heartButton.setImage(UIImage(systemName: heartImage), for: .normal)
        
        navigationItem.largeTitleDisplayMode = .never
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.separatorStyle = .none
    }
    
    // MARK: - 生命週期方法(視圖即將顯現)
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = false
        
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    

    

}

extension RestaurantDetailViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3 // 因應儲存格數量變更修改
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row{
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailTextCell.self), for: indexPath) as! RestaurantDetailTextCell
            
            cell.descriptionLabel.text = restaurant.description
            return cell
        
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier:  String(describing: RestaurantDetailTwoColumnCell.self), for: indexPath) as! RestaurantDetailTwoColumnCell
            
            cell.columnFirstTitleLabel.text = "地址"
            cell.columnFirstTextLabel.text = restaurant.location
            cell.columnSecondTitleLabel.text = "電話"
            cell.columnSecondTextLabel.text = restaurant.phone
            return cell
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailMapCell.self), for: indexPath) as! RestaurantDetailMapCell
            // 自定義方法
            cell.configure(location: restaurant.location)
            cell.selectionStyle = .none
            return cell
            
        default:
            fatalError("!!!!!")
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 取消列的選取(使列一直保持為白色)
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier{
        case "showMap":
            let destinationController = segue.destination as! MapViewController
            destinationController.restaurant = restaurant
        
        case "showReview":
            let destinationController = segue.destination as! ReviewViewController
            destinationController.restaurant = restaurant
        
        default: break
        }
    }
    
    
}
