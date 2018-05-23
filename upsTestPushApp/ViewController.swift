//
//  ViewController.swift
//  upsTestPushApp
//
//  Created by Colum Foskin on 21/05/2018.
//  Copyright © 2018 Colum Foskin. All rights reserved.
//

import UIKit
import AGSPush

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func application(_ application: UIApplication,
                     didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        var config = UnifiedPushConfig()
        config.alias = "Example Push App"
        config.categories = ["iOS", "Example"]
        
        AgsPush.instance.register(
            deviceToken,
            config,
            success: {
                print("Successfully registered to Unified Push Server")
        },
            failure: { (error: Error!) in
                print("Failure to register for on Unified Push Server: \(error)")
        }
        )
    }

}

