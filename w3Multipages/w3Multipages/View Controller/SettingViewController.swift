//
//  SettingViewController.swift
//  w3Multipages
//
//  Created by Sherwin on 2020-01-20.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet var slVol : UISlider!
    @IBOutlet var lbVol : UILabel!
    
    
    func updateLabel()
    {
        
        let vol = slVol.value
        let strVol = String(format: "%.2f",vol)
        lbVol.text = strVol
        
    }
    
    @IBAction func sliderValueChanged(sender : UISlider)
    {
        
        updateLabel()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
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
