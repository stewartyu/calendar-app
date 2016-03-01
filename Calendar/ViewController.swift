//
//  ViewController.swift
//  Calendar
//
//  Created by Stewart Yu on 2016-02-26.
//  Copyright © 2016 Stewart Yu. All rights reserved.
//

import UIKit
import Button

class ViewController: UIViewController {

    @IBOutlet weak var dropinButton: BTNDropinButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let location: BTNLocation = BTNLocation.init(name: "Yoga", latitude: 40.723027, longitude: -73.9956459);
        let context: BTNContext = BTNContext.init(subjectLocation: location);
        
        if let button = self.dropinButton {
            button.prepareWithContext(context, completion: { (isDisplayable: Bool) -> Void in
                print("Displayable: \(isDisplayable)")
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

