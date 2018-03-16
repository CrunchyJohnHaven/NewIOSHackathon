//
//  ViewController.swift
//  IOSMapKitProject
//
//  Created by john bradley on 3/15/18.
//  Copyright © 2018 john. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import Contacts


class ViewControllerOne: UIViewController, CLLocationManagerDelegate {
    var ID: Int = 2
    var location: Artwork?
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    //////

    /////
    
    let initialLocation = CLLocation(latitude: 37.3753590, longitude: -121.910980)
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        

            locationManager.delegate = self
            locationManager.requestWhenInUseAuthorization()
            locationManager.startUpdatingLocation()
     
        /////
        
        
        if self.ID == 2 {
            centerMapOnLocation(location: initialLocation)
        }
        mapView.delegate = self
        //Create pin for
        print("ViewDidLoad")
        let artwork = Artwork(title: "Coding Dojo Silicon Valley",
            tag: "Click to investigate The Dojo!",
            discipline: "Home",
            shortNextClue: "An 'inmate' at The Dojo says MC has friends in the airline industry.",
            longNextClue: "One of the Dojo inmates has little love for MC and his cryptic online tutorials. He tells you that he overheard MC mention a friend in the airline industry. That will be enough to go off of.",
            eventDescription: "Your services have been enlisted to find the notorious fugitive 'MC' who has recently escaped from his dojo prison. What drives this fugitive? Where is he going? Whatever it is, you have received your first clue.",
            image:#imageLiteral(resourceName: "codingDojo.png"),
            identifyer: 1,
            coordinate: CLLocationCoordinate2D(latitude: 37.3753590, longitude: -121.910980))
            mapView.addAnnotation(artwork)
        
    
        let artwork2 = Artwork(title: "San Jose International Airport",
                tag: "'MC' is running into Terminal A!",
                discipline: "Airport",
                shortNextClue: "You watch 'MC' climb into the wheelwell of a plane headed to SEATEAC.",
                longNextClue: "WHERE IS THAT PLANE HEADED!?! A baggage handler tells you it's headed for Seattle Tacoma International Airport just East of Vashon Island by Peugeot Sound.",
                eventDescription: "You make it to the airport, just as a flurry of onlookers point at the runway. An asian man running after a departing Boeing 747! You give chase but 'MC' has escaped.",
                image:#imageLiteral(resourceName: "SJAirport-1"),
                identifyer: 2,
                coordinate: CLLocationCoordinate2D(latitude: 37.3639470, longitude: -121.9289380))
    if self.ID > artwork2.identifyer {
            print("INSTANCE LOADED")
            mapView.addAnnotation(artwork2)
        }
        let artwork3 = Artwork(title: "Seattle Tacoma International Airport",
                               tag: "There's 'MC' on the tarmac!",
                               discipline: "SeattleAirport",
                               shortNextClue: "A dropped scrap of paper says 'Steelhead Diner at Pikes Place Market - tonight.",
                               longNextClue: "The scrap of paper says 'Steelhead Diner at Pikes Place Market tonight, a reference to the famous public market on the Seattle waterfront by the Seattle aquarium. MC escapes, but perhaps not for long.",
                               eventDescription: "You spot 'MC' climbing the fence out of SEATAC, and as you jump to grab his shoe, a scrap of paper slips from his pocket.",
                               image:#imageLiteral(resourceName: "SEATAC") ,
                               identifyer: 3,
                               coordinate: CLLocationCoordinate2D(latitude: 47.4502, longitude: -122.3088))
        if self.ID > artwork3.identifyer {
            mapView.addAnnotation(artwork3)
        }
        let artwork4 = Artwork(title: "Steelhead Diner at Pikes Place Market",
                               tag: "MC eating at the diner!",
                               discipline: "SeattleAirport",
                               shortNextClue: "One of MC's associates reveals that MC will be at The Museum of Glass that very evening.",
                               longNextClue: "The associate says MC has a meeting that very night at 'The Museum of Glass', which could signify The Chihuly Museum of Glass in Lower Queen Anne.",
                               eventDescription: "You see MC eating at the diner with two men in dark suits. You run towards him and MC leaps from a nearby balcony. You bludgeon one of his associates until he reveals your next clue.",
                               image:#imageLiteral(resourceName: "SteelheadDiner-1"),
                               identifyer: 4,
                               coordinate: CLLocationCoordinate2D(latitude: 47.609549, longitude: -122.341182))
            if self.ID > artwork4.identifyer {
                mapView.addAnnotation(artwork4)
            }
        let artwork5 = Artwork(title: "The Chihuly Museum of Glass",
                               tag: "MC among the statues!",
                               discipline: "Museum",
                               shortNextClue: "Seek MC on the World's Tallest Peak.",
                               longNextClue: "You notice that MC is running next to a stout foreighner with a East Asia Trekking jacket. A Tibetan prayer flag and a trip itinerary leaving from Katmandu Nepal fall to the glass-strewn floor.",
                               eventDescription: "You spot MC distorted in the ethereal glass statues. You give chase, firing your service revolver, the shots ricochetting through the sculptures.",
                               image:#imageLiteral(resourceName: "Screen Shot 2018-03-15 at 9.38.18 PM"),
                               identifyer: 5,
                               coordinate: CLLocationCoordinate2D(latitude: 47.6206, longitude: -122.3505))
                                if self.ID > artwork5.identifyer {
                                    mapView.addAnnotation(artwork5)
                                }
        
        let artwork6 = Artwork(title: "Everest Base Camp",
                               tag: "Spotted in The Kumbu Ice Falls!",
                               discipline: "Mountain",
                               shortNextClue: "Seek three kings in Havana Cuba.",
                               longNextClue: "A local guide tells you that MC spoke of seeking solace and warmer climes in Havana Cuba. Seek three kings says the Dalai Llama.",
                               eventDescription: "You fly to Katmandu, and into the the tiny airstrip at Lookla. After hiking for two weeks to Everest Base Camp, you finally find your man, pursuing him through the thin air of the Kumbu Glacier. Once again MC eludes you.",
                               image:#imageLiteral(resourceName: "Everest"),
                               identifyer: 6,
                               coordinate: CLLocationCoordinate2D(latitude: 27.987850, longitude: 86.925026))
        if self.ID > artwork6.identifyer {
            mapView.addAnnotation(artwork6)
        }

        
        let artwork7 = Artwork(title: "Castillo De Los Tres Reyes Del Morro",
                                tag: "There he is!",
                                discipline: "Castillo",
                                shortNextClue: "Travel to the Pyramids near La Ciudad de Mexico.",
                                longNextClue: "'Tlachihualtepetl,' whispers a old beggar woman. 'If seek MC you do, travel West from Veracruz to the SouthEast outskirts of Mexico City you must. There on the ancient pyramids of Cholula shall you find your quarry'",
                                eventDescription: "You chase MC up the steps of The Castillo only to watch as he slips away with a mysterious and beautiful Mexican woman. Don't let him pull her into a Bonnie & Clyde duo.",
                                image: #imageLiteral(resourceName: "castillo.png") ,
                                identifyer: 7,
                                coordinate: CLLocationCoordinate2D(latitude: 23.150760, longitude: -82.356233))
        if self.ID > artwork7.identifyer {
            mapView.addAnnotation(artwork7)
        }
        
        let artwork8 = Artwork(title: "Pyramids of Cholula, Mexico",
                                tag: "There he goes again!",
                                discipline: "pyramids",
                                shortNextClue: "Head to the South East of Mexico City to the home of Frida.",
                                longNextClue: "Word from low places says that MC seeks reflection at the home of his favorite artist Frida Kahlo South of Tlanepantla de Baz and north of Cuernavaca.",
                                eventDescription: "You have spotted your target with an exotic Mexican woman on the steps of the pyramid of Cholula. You give chase, but the couple slips away like ghosts.",
                                image:#imageLiteral(resourceName: "cholula"),
                                identifyer: 8,
                                coordinate: CLLocationCoordinate2D(latitude: 19.057997, longitude: -98.302017))
        if self.ID > artwork8.identifyer {
            mapView.addAnnotation(artwork8)
        }
        

        let artwork9 = Artwork(title: "Fridah",
                                tag: "He's now exploring the arts nearby",
                                discipline: "Fridah",
                                shortNextClue: "MC's friend invited him to the \"Pura Vida\" lifestyle beach Playa Hermosa in Costa Rica.",
                                longNextClue: "Written in the precise handwriting of MC himself is a clue: A letter to a friend addressed to the beautiful beach Playa de Hermosa on Costa Ricas Western shore.",
                                eventDescription: "You spot MC in meditative reflection on a balcony overlooking Frida Kahlo and Diego Rivera's house, but his escape is swift and violent, and he evades you once again.",
                                image:#imageLiteral(resourceName: "frida") ,
                                identifyer: 9,
                                coordinate: CLLocationCoordinate2D(latitude: 19.3551, longitude: -99.1625))
        if self.ID > artwork9.identifyer {
            mapView.addAnnotation(artwork9)
        }
        let artwork10 = Artwork(title: "Aquasport Bar, Playa Hermosa, Costa Rica",
                                tag: "sitting on the beach",
                                discipline: "playa",
                                shortNextClue: "The bartender overheard MC talking about close connections to Pablo Escobar",
                                longNextClue: "Pablo left a hidden briefcase of cash for MC at his old Medellin, Colombia home.",
                                eventDescription: "At the playa you stop to reflect on your journey thus far. Your quarry is still one step ahead of you. What is the meaning of this quest? What are you truly chasing?",
                                image: #imageLiteral(resourceName: "playa_hermosa"),
                                identifyer: 10,
                                coordinate: CLLocationCoordinate2D(latitude: 10.576161, longitude: -85.6774977))
        if self.ID > artwork10.identifyer {
            mapView.addAnnotation(artwork10)
        }
        let artwork11 = Artwork(title: "Casa Museo, Pablo Escobar, Medellin, Colombia",
                                tag: "The MC at Padrinos!",
                                discipline: "pablo",
                                shortNextClue: "MC heads to the Motherland, where tanks once rolled. You seek the MC in a Red Square.",
                                longNextClue: " In desperate need of answers, you pay the ticket agent $500 USD for answers and find he's heading to the other side of the globe, Moscow, Russia. You remember that MC collects Cathedral pictures.",
                                eventDescription: "As you arrived, you catch a glimpse of MC catching a cab towards Bogota. When the cab stops MC is gone, but the cab driver reports he heard MC speaking in Russian, and agreeing to meet in a Red Square.",
                                image: #imageLiteral(resourceName: "Screen Shot 2018-03-16 at 1.06.02 AM"),
                                identifyer: 11,
                                coordinate: CLLocationCoordinate2D(latitude: 6.2186814, longitude: -75.5653182))
        if self.ID > artwork11.identifyer {
            mapView.addAnnotation(artwork11)
        }
        let artwork12 = Artwork(title: "Red Square in Moscow",
                tag: "There's MC in Red Square!",
                discipline: "RedSquare",
                shortNextClue: "MC is homesick and heading to the biggest lake in the state.",
                longNextClue: "You feel certain that you have run MC to ground, and that he will seek refuge where it all began. Rumors have it that MC has a small cabin by a lake view in the mountains on the border between Nevada and California.",
                eventDescription: "MC was strolling down the Red Square wearing an ushanka. He was seen taking pictures of Saint Basil's Cathedral. But lay your cuffs on his elusive wrists you could not",
                image: #imageLiteral(resourceName: "Screen Shot 2018-03-15 at 9.27.36 PM"),
                identifyer: 12,
            
            coordinate: CLLocationCoordinate2D(latitude: 55.7536210, longitude: 37.6225600))
        if self.ID > artwork12.identifyer {
            mapView.addAnnotation(artwork12)
        }
        
        let artwork13 = Artwork(title: "South Lake Tahoe",
                tag: "Your Journey Has Ended",
                discipline: "MC found",
                shortNextClue: "At long last, your journey has ended.",
                longNextClue: "Your next journey shall be yours and yours along to walk. No longer shall you chase or follow.",
                eventDescription: "You have caught up to MC at last, but as you find your long sought quarry, you discover that the person you have truly sought on your quest was yourself. You leave MC in peace beside a lake overlooking the bay.",
                image: #imageLiteral(resourceName: "Screen Shot 2018-03-15 at 9.26.50 PM"),
                identifyer: 13,
            coordinate: CLLocationCoordinate2D(latitude: 38.9399260, longitude: -119.9771870))
        if self.ID > artwork13.identifyer {
            mapView.addAnnotation(artwork13)
        }
    }
    ////
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        let location = locations[0]
//        let center = location.coordinate
//        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//        let region = MKCoordinateRegion(center:center, span:span)
//        mapView.setRegion(region, animated: true)
        mapView.showsUserLocation = true


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   ///////
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowClue" {
            self.ID = self.ID + 1
            print("self.ID:", self.ID)
            viewDidLoad()
            let navigationController = segue.destination as! UINavigationController
            let viewControllerTwo = navigationController.topViewController as! ViewControllerTwo
            viewControllerTwo.delegate = self
            viewControllerTwo.location = location
            
//           self.location = view.annotation as! Artwork
//            print("self.location.longNextClue: ",self.location.longNextClue)
//            print("self.location.description: ", self.location.description)
//            print("self.location.title: ", self.location.title!)
//            print("self.location.image: ", self.location.image!)
//            print("self.location.identifyer: ", self.location.identifyer)
//            print("self.location.discipline: ", self.location.discipline)
//            print("self.location.coordinate: ", self.location.coordinate)
//            print("self.location.tag: ", self.location.tag)
            
        }
    }
    @IBAction func menuButtonPressen(_ sender: UIButton) {
        performSegue(withIdentifier: "MenuSegue", sender:  self)
    }
    



}
extension ViewControllerOne: MKMapViewDelegate {
    // 1 - gets called for every annotation added
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        // 2
        guard let annotation = annotation as? Artwork else { return nil }
        // 3
        let identifier = "marker"
        var view: MKMarkerAnnotationView
        // 4
        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            as? MKMarkerAnnotationView {
            dequeuedView.annotation = annotation
            view = dequeuedView
        } else {
            // 5
            view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            view.canShowCallout = true
            view.calloutOffset = CGPoint(x: -5, y: 5)
            view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }
        return view
    }
    //OPENING MAPS - tell mapkit what to do when user taps callout button
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView,
                 calloutAccessoryControlTapped control: UIControl) {
        
        self.location = view.annotation as? Artwork
        print("tapped")
        performSegue(withIdentifier: "ShowClue", sender: Any?.self)
        print("self.location.longNextClue: ",self.location?.longNextClue as Any)
        print("location.description: ", self.location?.description as Any)
        print("self.location.title: ", self.location?.title! as Any)
        print("self.location.image: ", self.location?.image! as Any)
        print("self.location.identifyer: ", self.location?.identifyer as Any)
        print("self.location.discipline: ", self.location?.discipline as Any)
        print("self.location.coordinate: ", self.location?.coordinate as Any)
        print("self.location.tag: ", self.location?.tag as Any)
        
        labelOutlet.text = self.location?.shortNextClue
//        let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
//        self.location.mapItem().openInMaps(launchOptions: launchOptions)
    }
}

extension ViewControllerOne: CancelButtonDelegate {
    func cancelButtonPressed(by controller: UIViewController) {
        dismiss(animated: true, completion: nil)
        print("Pressed")
    }
}
