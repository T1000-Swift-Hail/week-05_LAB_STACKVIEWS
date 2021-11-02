//
//  secondViewController.swift
//  STACKVIEWS
//
//  Created by Dalal AlSaidi on 27/03/1443 AH.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var moreInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moreInfo.text = "Kandersteg is a municipality in the Frutigen-Niedersimmental administrative district in the canton of Bern in Switzerland. It is located along the valley of the River Kander, west of the Jungfrau massif. It is noted for its spectacular mountain scenery and sylvan alpine landscapes. Tourism is a very significant part of its economic life today. It offers outdoor activities year-round, with hiking trails and mountain climbing as well as downhill and cross-country skiing."
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
