
import UIKit

protocol test {
    func testmethod()
}



class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var Places: UITableView!
    
    var places: [Place] = [
        Place(city: "San-Francisco", description: "Lorem ipsum dolor sit amet, consescetor adipiscing elit", imageAvatar: ["Avatar1", "Avatar2", "Avatar3"], mainImage: "Image", numberOfLikes: 8, placeName: "San-Francisco Bridge", postInfo: "+15 people booked"),
        Place(city: "Zagreb", description: "Lorem ipsum dolor sit amet, consescetor adipiscing elit", imageAvatar: ["Avatar4", "Avatar5", "Avatar6"], mainImage: "Image1", numberOfLikes: 10, placeName: "Zagreb Restaraunt", postInfo: "+21 people booked")
                          ]
    var selectedPlace: Place?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let place = places[indexPath.row]
        selectedPlace = place
        performSegue(withIdentifier: "openDetails", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: PlaceTableViewCell = tableView.dequeueReusableCell(withIdentifier: PlaceTableViewCell.id, for: indexPath) as! PlaceTableViewCell
        
        let place = places[indexPath.row]
        cell.mainImage.image = UIImage(named: place.mainImage)
        cell.mainImageDescription.text = place.description
        cell.bottomPlace.text = place.city
        cell.firstFriend.image = UIImage(named: place.imageAvatar[0])
        cell.secondFriend.image = UIImage(named: place.imageAvatar[1])
        cell.thirdFriend.image = UIImage(named: place.imageAvatar[2])
        cell.mainImagePlace.text = place.placeName
        cell.postInfo.text = place.postInfo
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "openDetails", let vc = segue.destination as? PlaceViewController, let place = selectedPlace {
            vc.placeData = place
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addGradient()
        
        Places.delegate = self
        
        Places.dataSource = self
        
        Places.register(UITableViewCell.self, forCellReuseIdentifier: "place")
     
    }
    
    private func addGradient() {
    
        let layer = CAGradientLayer()
//      let rect = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height/2)
        layer.frame = view.bounds
        layer.colors = [UIColor.peach?.cgColor as Any, UIColor.yellow?.cgColor as Any]
        layer.startPoint = CGPoint(x: 1.0, y: 0.0)
        layer.endPoint = CGPoint(x: 1.0, y: 1.0)
        view.layer.insertSublayer(layer, at: 0)
        
    }
    
    
    

}


@IBDesignable extension UIView {
    
    @IBInspectable var shadowRadius: CGFloat {
        get { return layer.shadowRadius }
        set { layer.shadowRadius = newValue }
    }
    
    @IBInspectable var shadowOpacity: CGFloat {
        get { return CGFloat(layer.shadowOpacity) }
        set { layer.shadowOpacity = Float(newValue) }
    }
    
    @IBInspectable var shadowOffset: CGSize {
        get { return layer.shadowOffset }
        set { layer.shadowOffset = newValue }
    }
    
    @IBInspectable var shadowColor: UIColor? {
        get { guard let cgColor = layer.shadowColor else { return nil }
            return UIColor(cgColor: cgColor) }
        
        set { layer.shadowColor = newValue?.cgColor }
        
    }
    
}
