
import UIKit
import Foundation

class NewRestaurantController: UITableViewController, UITextFieldDelegate {
    
    @IBOutlet var photoImageView: UIImageView!{
        didSet{
            photoImageView.layer.cornerRadius = 20.0
            photoImageView.layer.masksToBounds = true
        }
    }
    
    @IBOutlet var nameTextField: RoundedTextField!{
        didSet{
            nameTextField.tag = 1
            nameTextField.becomeFirstResponder()
            nameTextField.delegate = self
        }
    }
    
    @IBOutlet var typeTextField: RoundedTextField!{
        didSet{
            typeTextField.tag = 2
            typeTextField.delegate = self
        }
    }
    
    @IBOutlet var addressTextField: RoundedTextField!{
        didSet{
            addressTextField.tag = 3
            addressTextField.delegate = self
        }
    }
    
    @IBOutlet var phoneTextField: RoundedTextField!{
        didSet{
            phoneTextField.tag = 4
            phoneTextField.delegate = self
        }
    }
    
    @IBOutlet var descriptionTextField: UITextView!{
        didSet{
            descriptionTextField.tag = 5
            descriptionTextField.layer.cornerRadius = 30
            descriptionTextField.layer.masksToBounds = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // 取得父視圖的佈局
        let margins = photoImageView.superview!.layoutMarginsGuide
        
        // 停用自動調整大小的遮罩
        // 以編寫程式的方式來使用自動佈局
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // 將圖片視圖的前緣固定到邊界的前緣
        photoImageView.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        
        // 將圖片視圖的後緣固定到邊界的後緣
        photoImageView.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
        // 將圖片視圖的頂部邊緣固定到邊界的頂部邊緣
        photoImageView.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
        
        // 將圖片視圖的底部邊緣固定到邊界的底部邊緣
        photoImageView.bottomAnchor.constraint(equalTo: margins.bottomAnchor).isActive = true
        
        
        // 自訂導覽列外觀
        if let appearance = navigationController?.navigationBar.standardAppearance{
            if let customFont = UIFont(name: "Nunito-Bold", size: 40.0){
                appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "NavigationBarTitle2")!]
                appearance.largeTitleTextAttributes = [.foregroundColor: UIColor(named: "NavigationBarTitle2")!, .font: customFont]
                
                navigationController?.navigationBar.standardAppearance = appearance
                navigationController?.navigationBar.compactAppearance = appearance
                navigationController?.navigationBar.scrollEdgeAppearance = appearance
            }
        }
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 只有選取第一個儲存格時
        if indexPath.row == 0 {
            let photoSourceRequestController = UIAlertController(title: "", message: "請選擇照片來源", preferredStyle: .actionSheet)
            
            let cameraAction = UIAlertAction(title: "相機", style: .default) { action in
                if UIImagePickerController.isSourceTypeAvailable(.camera){
                    let imagePicker = UIImagePickerController()
                    imagePicker.allowsEditing = false
                    imagePicker.sourceType = .camera
                    self.present(imagePicker, animated: true, completion: nil)
                }
            }
            
            let photoLibraryAction = UIAlertAction(title: "手機相簿", style: .default) { action in
                if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                    let imagePicker = UIImagePickerController()
                    imagePicker.allowsEditing = false
                    imagePicker.sourceType = .photoLibrary
                    self.present(imagePicker, animated: true, completion: nil)
                    
                    imagePicker.delegate = self
                }
            }
            photoSourceRequestController.addAction(cameraAction)
            photoSourceRequestController.addAction(photoLibraryAction)
            
            // 對於iPad
            if let popoverController = photoSourceRequestController.popoverPresentationController{
                if let cell = tableView.cellForRow(at: indexPath){
                    popoverController.sourceView = cell
                    popoverController.sourceRect = cell.bounds
                }
            }
            present(photoSourceRequestController, animated: true, completion: nil)
        }
    }
    
  
    
    func handlePhotoImageViewConstraints(){
       
    }
    
}
extension NewRestaurantController {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // 逐一取得下一個文字欄位
        if let nextTextField = view.viewWithTag(textField.tag + 1){
            // 取消針對目前的文字欄位
            // 使下一個文字欄位成為第一回應者
            textField.resignFirstResponder()
            nextTextField.becomeFirstResponder()
        }
        return true
    }
}

extension NewRestaurantController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            photoImageView.image = selectedImage
            photoImageView.contentMode = .scaleAspectFill
            photoImageView.clipsToBounds = true
        }
        dismiss(animated: true, completion: nil)
    }
}
