
import UIKit
import MapKit

class RestaurantDetailMapCell: UITableViewCell {

    @IBOutlet var mapView: MKMapView!{
        // 優先權大於在Key Path設定
        didSet{
            mapView.layer.cornerRadius = 20.0
            mapView.clipsToBounds = true
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
    
    func configure(location: String){
        // 取得位置
        let geoCoder = CLGeocoder()
        
        print(location)
        geoCoder.geocodeAddressString(location) { placemarks, error in
            if let error = error{
                print(error.localizedDescription)
                return
            }
            
            if let placemarks = placemarks{
                // 取得第一個地標
                let placemark = placemarks[0]
                
                // 加上標記
                let annotation = MKPointAnnotation()
                
                if let location = placemark.location{
                    // 顯示標記
                    annotation.coordinate = location.coordinate
                    self.mapView.addAnnotation(annotation)
                    
                    // 設定縮放程度
                    let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 250, longitudinalMeters: 250)
                    self.mapView.setRegion(region, animated: false)
                }
            }
            
        }
        
    }

}
