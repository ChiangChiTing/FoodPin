
import Foundation

struct Restaurant: Hashable {
    enum Rating: String{
        case awesome // 超讚
        case good // 滿意
        case okay // 還行
        case soso // 很普
        case bad // 失望
        case terrible // 超派
        
        var image: String{
            switch self{
            case .awesome: return "icon-awesome-48"
            case .good: return "icon-good-48"
            case .okay: return "icon-okay-48"
            case .soso: return "icon-soso-48"
            case .bad: return "icon-bad-48"
            case .terrible: return "icon-terrible-48"
            }
        }
    }
    var name: String
    var type: String
    var location: String
    var phone: String
    var description: String
    var image: String
    var isFavorite: Bool
    
    var rating: Rating?
    
    init(name: String, type: String, location: String, phone: String, description: String, image: String, isFavorite: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.phone = phone
        self.description = description
        self.image = image
        self.isFavorite = isFavorite
    }
    
    init(){
        self.init(name: "", type: "", location: "", phone: "", description: "" , image: "", isFavorite: false)
    }
}

