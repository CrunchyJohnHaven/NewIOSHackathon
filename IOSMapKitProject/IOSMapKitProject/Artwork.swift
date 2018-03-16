import UIKit
import MapKit
import Contacts

class Artwork: NSObject, MKAnnotation {
    let title: String?
    let discipline: String
    let tag: String
    let shortNextClue: String
    let longNextClue: String
    let eventDescription: String
    let image: UIImage?
    let identifyer: Int
    let coordinate: CLLocationCoordinate2D
        
    init(title: String, tag: String, discipline: String, shortNextClue: String, longNextClue: String, eventDescription: String, image: UIImage, identifyer: Int,  coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.tag = tag
        self.discipline = discipline
        self.shortNextClue = shortNextClue
        self.longNextClue = longNextClue
        self.eventDescription = eventDescription
        self.image = image
        self.identifyer = identifyer
        
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return tag
    }
    ///!!!! OPENING MAPS - create MKMapItem from an MKPlacemark
    func mapItem() -> MKMapItem {
        let addressDict = [CNPostalAddressStreetKey: subtitle!]
        let placemark = MKPlacemark(coordinate: coordinate, addressDictionary: addressDict)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = title
        return mapItem
    }
}



//    let title: String?
//    let locationName: String
//    let discipline: String
//    let coordinate: CLLocationCoordinate2D
//
//    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
//        self.title = title
//        self.locationName = locationName
//        self.discipline = discipline
//        self.coordinate = coordinate
//
