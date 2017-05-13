//
//  DialogAdsType2ViewController.swift
//  Test Dialog
//
//  Created by Siwawes Wongcharoen on 5/13/2560 BE.
//  Copyright © 2560 siwaweswongcharoen. All rights reserved.
//

import Foundation
import UIKit
import AlamofireImage

class DialogAdsType2ViewController: UIViewController {
    let TAG = "DialogAdsType2ViewController"
    
    @IBOutlet weak var ivImage: UIImageView!
    
    var text:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("\(TAG): text=\(text)")
        
        ivImage
            .af_setImage(withURL: URL(string: "https://images.droidsans.com/wp-content/uploads/2017/05/motog5plus_aa.jpg")!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClickBtnAction(_ sender: UIButton) {
        print("\(TAG): text=\(text)")
        
        print("\(TAG): onClickBtnAction")
        self.dismiss(animated: true, completion: nil)
    }
}
