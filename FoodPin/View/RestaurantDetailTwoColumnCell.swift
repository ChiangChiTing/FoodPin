
import UIKit

class RestaurantDetailTwoColumnCell: UITableViewCell {
    
    @IBOutlet var columnFirstTitleLabel: UILabel!{
        didSet{
            columnFirstTitleLabel.text = columnFirstTitleLabel.text?.uppercased()
            columnFirstTitleLabel.numberOfLines = 0
        }
    }
    
    @IBOutlet var columnFirstTextLabel: UILabel!{
        didSet{
            columnFirstTextLabel.numberOfLines = 0
        }
    }
    
    @IBOutlet var columnSecondTitleLabel: UILabel!{
        didSet{
            columnSecondTitleLabel.text = columnSecondTitleLabel.text?.uppercased()
            columnSecondTitleLabel.numberOfLines = 0
        }
    }
    
    @IBOutlet var columnSecondTextLabel: UILabel!{
        didSet{
            columnSecondTextLabel.numberOfLines = 0
        }
    }
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
