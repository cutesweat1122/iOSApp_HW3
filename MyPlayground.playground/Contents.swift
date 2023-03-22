import UIKit
import AVFoundation
import AVKit
import PlaygroundSupport
import SafariServices
import MapKit
import Foundation
import AVFAudio

// ---------- 1. Function ----------
// _ :neglect the argument label
func fahrenheitToCelsius (_ f: Float) -> Float {
    return (f - 32) * 5 / 9
}

// hotFahrenheit: Float = 100
//print ("100 degrees Fahrenheit = \(fahrenheitToCelsius(hotFahrenheit)) degrees Celsius")


// ---------- 2. Class ----------
class GoodHusband {
    let rich = true
    let height = 180
    
    func compliment() -> Void {
        print("You are so pretty!")
    }
}

var myHusband = GoodHusband()
print(myHusband.height)
myHusband.compliment()


// ---------- 3. Play music by AVPlayer ----------
// import AVFoundation
let url = URL(string: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/69/0e/98/690e98db-440d-cb0c-2bff-91b00a05bdda/mzaf_1674062311671795807.plus.aac.p.m4a")
let player = AVPlayer(url: url!)
//player.play()

// ---------- 4. Play video by AVPlayerViewController ----------
// import AVKit
// import PlaygroundSupport
let url2 = URL(string: "https://video-ssl.itunes.apple.com/apple-assets-us-std-000001/Video128/v4/ac/7c/62/ac7c6274-60ea-5b7c-4c99-f08d78bfe574/mzvf_484000410198456586.640x352.h264lc.U.p.m4v")
let player2 = AVPlayer(url: url2!) // music
let controller = AVPlayerViewController() // view
controller.player = player2
PlaygroundPage.current.liveView = controller
//player2.play()


// ---------- 5. Show web page by SFSafariViewController ----------
// import SafariServices
// import PlaygroundSupport
let url3 = URL(string: "https://magnifier.cmoney.tw/2023/03/16/cs_big_news/")
let controller2 = SFSafariViewController(url: url3!)
//PlaygroundPage.current.liveView = controller2


// ---------- 6. Show map by MKMapView ----------
// import MapKit
// import PlaygroundSupport
// (1) Show the map & Specify the region of the view
let mapView = MKMapView(frame: CGRect(x: 0, y: 0, width: 400, height: 400)) // location and size of the view
mapView.region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 29.717343, longitude: -95.403063), latitudinalMeters: 2500, longitudinalMeters: 2500) // region of the view
//PlaygroundPage.current.liveView = mapView

// (2) Mark sites by MKPointAnnotation
let duncanHallAnnotation = MKPointAnnotation()
duncanHallAnnotation.coordinate = CLLocationCoordinate2D(latitude: 29.720628031984976, longitude: -95.39861334465334)
duncanHallAnnotation.title = "Duncan Hall"
duncanHallAnnotation.subtitle = "computer science"
mapView.addAnnotation(duncanHallAnnotation)

let riceGraduateApartmentAnnotation = MKPointAnnotation()
riceGraduateApartmentAnnotation.coordinate = CLLocationCoordinate2D(latitude: 29.72572416901241, longitude: -95.39830381347149)
riceGraduateApartmentAnnotation.title = "Rice Graduate Apartment"
riceGraduateApartmentAnnotation.subtitle = "dormitory"
mapView.addAnnotation(riceGraduateApartmentAnnotation)

//PlaygroundPage.current.liveView = mapView


// (3) Set up the mapeType
// default: .standard
mapView.mapType = .mutedStandard
//PlaygroundPage.current.liveView = mapView


// (4) Set up points of interest
mapView.pointOfInterestFilter = MKPointOfInterestFilter(including: [.university, .library, .restaurant, .bakery, .cafe, .foodMarket, .store, .bank, .atm, .airport, .postOffice, .hospital, .pharmacy])
//PlaygroundPage.current.liveView = mapView


// ---------- 7. Print Time by Date or Calendar ----------
// import Foundation
// (1) Current Time
var currentTime = Date()
print(currentTime) // GMT + 0

// (2) Add time interval
var laterTime = currentTime.addingTimeInterval(61) // sec
print(laterTime)

// (3) Print formatted time in string
let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd HH:mm"
let currentTimeString = formatter.string(from: currentTime)

// (4) Print current date
let dateComponents = Calendar.current.dateComponents(in: TimeZone.current, from: currentTime)
let currentYear = dateComponents.year!
let currentMonth = dateComponents.month!
let currentDay = dateComponents.day!


// ---------- 8. Speak by AVSpeechSynthesizer ----------
// import AVFAudio
let utterance = AVSpeechUtterance(string: "魔鏡呀魔鏡")
utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW") // language
utterance.rate = 0.7 // rate
utterance.pitchMultiplier = 1 // pitch
let synthesizer = AVSpeechSynthesizer()
//synthesizer.speak(utterance)




