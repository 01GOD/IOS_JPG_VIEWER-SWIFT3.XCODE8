//
//  ViewController.swift
//  CUSTOM_MD_APP
//
//  Created by GOD on 3/26/17.
//  Copyright © 2017 ALL ONE SUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
//Make an array of data or an empty array
    var data:[Int]=[]
    var setNumberOfRows=10
    var dataInTextField:[String]=[]
    var files:[String]=[]
    var FM=FILE_MANAGER()
    
//Make a var to be assigned in didSelectRowAt to get the IndexPath.row so that can be used to get the index row of the selected row to access appropriate data from the array
    var SelectedRow:Int=0
//Populate array with some data using this in viewDidLoad
    func arrayRangeMaker(_ numberOfRows:Int){
        for index in 1...numberOfRows{data.append(index)
        dataInTextField.append("\(index)")}
    }
    func title_array_maker(){
        for index in 1...FM.path.count{
            data.append(index)
        }
    }
    
//Connect the table view
    @IBOutlet var theTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//Make a range
        arrayRangeMaker(100)
//Log the path to console
        print(FM.path[1])
// Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
//Generate cell for row that will be used in the table view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
//Reusable way, remember that the cell id is specified in attributes inspector on the UITableViewCell
    
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!

//Set label
        cell.textLabel?.text="IMAGE "+String(describing:data[indexPath.row])
        //cell.textLabel?.text=FM.path[indexPath.row]

//Return the UITableView cell from the method call
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
//Programatically say number of rows from number of rows in an array
        return FM.path.count
    }
   
// Run this when the row is touched
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
//Set the SelectedRow variable to indexPath.row so now have a way to access it outside this function
        SelectedRow=indexPath.row
        
// Segue to the second view controller
        performSegue(withIdentifier: "ShowNote", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
// get a reference to the second view controller using segue.destination because simply instantiating the class won't select the instance this is seguing to
        
        let secondViewController=segue.destination as! SecondViewController
        print(FM.path[SelectedRow])

// set a variable in the second view controller with the data and then, in secondary view controller, set the Text of the view to the receivedData variable 
        secondViewController.receivedData = FM.path[SelectedRow]
        

    }

}


