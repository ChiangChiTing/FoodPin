
import UIKit

class ReviewViewController: UIViewController {
    
    @IBOutlet var backgroundImageView: UIImageView!
    
    @IBOutlet var rateButtons: [UIButton]!
    
    var restaurant =  Restaurant()

    override func viewDidLoad() {
        super.viewDidLoad()

        backgroundImageView.image = UIImage(named: restaurant.image)
        
        // 套用模糊效果
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        // 使按鈕隱藏
        for rateButton in rateButtons{
            rateButton.alpha = 0
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        UIView.animate(withDuration: 2.0) {
//            self.rateButtons[0].alpha = 1.0
//            self.rateButtons[1].alpha = 1.0
//            self.rateButtons[2].alpha = 1.0
//            self.rateButtons[3].alpha = 1.0
//            self.rateButtons[4].alpha = 1.0
//            self.rateButtons[5].alpha = 1.0
//        }
        var delay = 0.1
        for rateButton in rateButtons{
            
            UIView.animate(withDuration: 0.5, delay: delay, options: [], animations: {
                rateButton.alpha = 1.0
            }, completion: nil)
            delay += 0.08
            
        }
        
       
    }
  

}
