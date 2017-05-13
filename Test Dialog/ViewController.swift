//
//  ViewController.swift
//  Test Dialog
//
//  Created by Siwawes Wongcharoen on 5/13/2560 BE.
//  Copyright © 2560 siwaweswongcharoen. All rights reserved.
//

import UIKit
import MZFormSheetPresentationController

class ViewController: UIViewController {
    let TAG = "ViewController"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickShowDialog(_ sender: UIButton) {
        print("\(TAG): onClickShowDialog")
        
        let storyboard = UIStoryboard(name: "Dialog", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DialogAdsType2ViewController") as! DialogAdsType2ViewController
        vc.text = "hello"
//        let navigationController = self.storyboard!.instantiateViewController(withIdentifier: "formSheetController") as! UINavigationController
        let formSheetController = MZFormSheetPresentationViewController(contentViewController: vc)
        
//        formSheetController.presentationController?.contentViewSize = CGSize.init(width: 250, height: 250)  // or pass in UILayoutFittingCompressedSize to size automatically with auto-layout
        
        self.present(formSheetController, animated: true, completion: nil)
    }

}

