//
//  ViewControllerStart.swift
//  catchKenny
//
//  Created by Enes Keskin on 8/15/22.
//

import UIKit

class ViewControllerStart: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    @IBAction func btnStart(_ sender: Any) {
        performSegue(withIdentifier: "toPlay", sender: nil)
    }
    
    
}
