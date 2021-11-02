//
//  ViewController.swift
//  STACKVIEWS
//
//  Created by Dalal AlSaidi on 27/03/1443 AH.
//

import UIKit

enum Segue : String{
    case secondViewController = "Second"
}

class ViewController: UIViewController {

    @IBOutlet weak var imageCity: UIImageView!
    @IBOutlet weak var myText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageCity.image = UIImage(named: "1")
        
        myText.text = "Kandersteg is a municipality in the Frutigen-Niedersimmental administrative district in the canton of Bern in Switzerland. It is located along the valley of the River Kander, west of the Jungfrau massif. It is noted for..."
        // Do any additional setup after loading the view.
    }

    @IBAction func squareBotton(_ sender: Any) {
    }
    
    @IBAction func moreInformation(_ sender: UIButton) {
        
        performSegue(withIdentifier: Segue.secondViewController.rawValue, sender:nil)
            
        
        
        
    }
    
    @IBAction func sharingButton(_ sender: UIButton) {
        

         // Setting url
         let secondActivityItem : NSURL = NSURL(string: "https://en.wikipedia.org/wiki/Kandersteg")!
         
         // If you want to use an image
        // let image : UIImage = UIImage(named: "your-image-name")!
         let activityViewController : UIActivityViewController = UIActivityViewController(
             activityItems: [secondActivityItem], applicationActivities: nil)
         
         // This lines is for the popover you need to show in iPad
        activityViewController.popoverPresentationController?.sourceView = sender
         
        // This line remove the arrow of the popover to show in iPad
         activityViewController.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection.down
         activityViewController.popoverPresentationController?.sourceRect = CGRect(x: 150, y: 150, width: 0, height: 0)
         
         // Pre-configuring activity items
         activityViewController.activityItemsConfiguration = [
         UIActivity.ActivityType.message
         ] as? UIActivityItemsConfigurationReading
        
         activityViewController.isModalInPresentation = true
         self.present(activityViewController, animated: true, completion: nil)
        
        
    }
    
    
    
}

