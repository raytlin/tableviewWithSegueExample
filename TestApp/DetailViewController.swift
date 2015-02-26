//
//  DetailViewController.swift
//  TestApp
//
//  Created by Ray Lin on 12/23/14.
//  Copyright (c) 2014 Ray Lin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var datum: (String, String) = ("", "")
    
    @IBOutlet weak var detailLabel: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        detailLabel.text = datum.1
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
