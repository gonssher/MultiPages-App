//
//  GameViewController.swift
//  w3Multipages
//
//  Created by Sherwin on 2020-01-20.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    
    @IBOutlet var sgdiff : UISegmentedControl!
    @IBOutlet var lbDiff : UILabel!
    @IBOutlet var lbLevel : UILabel!
    @IBOutlet var lbScore : UILabel!
    @IBOutlet var lbTime : UILabel!
    

    
    func updateDifficulty()
    {
        let diff = sgdiff.selectedSegmentIndex
        if(diff == 0)
        {
            lbDiff.text = "Easy"
            
        }
        else if (diff == 1 )
        {
            lbDiff.text = "Medium"
            
        }
        else
        
        {
            lbDiff.text = "hard"
            
            
        }
        
        
    }
    
    
    @IBAction func segmentDidChange (sender : UISegmentedControl)
    {
        updateDifficulty()

        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDifficulty()


        lbLevel.text = "level 5"
        lbScore.text = "Score:365,321"
        lbTime.text = "Time Left : 54"
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
