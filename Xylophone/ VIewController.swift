//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController{
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    let noteArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    
    @IBAction func notePressed(_ sender: UIButton) {

        let count : Int = sender.tag
        noteSelector(noteNumber: noteArray[count-1])
       
    }
    
    
}


func noteSelector(noteNumber : String){
      
        if let soundURL = Bundle.main.url(forResource: noteNumber, withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            AudioServicesPlaySystemSound(mySound);
            
            
    }

}
  


