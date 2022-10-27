//
//  SplashController.swift
//  MAPD714-F2022-Shopping List App
//
//  Created by Muhammad Bilal Dilbar on 2022-10-27.
//

import UIKit

class SplashController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3)
        {
            self.performSegue(withIdentifier: "splashScreen", sender: nil)
        }
    }
    
}
