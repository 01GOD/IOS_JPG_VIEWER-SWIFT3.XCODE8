//
//  SecondViewController.swift
//  CUSTOM_MD_APP
//
//  Created by GOD on 3/26/17.
//  Copyright © 2017 ALL ONE SUN. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    //This is the variable where the data for each row is received from prepareForSegue in the main view controller
    var receivedData:String=""
    
   //Load the data from receivedData into the Text Field
    override func viewWillAppear(_ animated: Bool) {
        ImageView.image=UIImage(named:receivedData)
        
        //TextView.text="THIS IS THE DATA AT NUMBER : "+receivedData;
    }
    @IBOutlet var ImageView: UIImageView!
//   @IBOutlet var TextView: UITextView!
//  @IBOutlet var Map: MKMapView!
    override func viewDidLoad() {
        
//Print the received data sent from main view controller
        print(receivedData)
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
