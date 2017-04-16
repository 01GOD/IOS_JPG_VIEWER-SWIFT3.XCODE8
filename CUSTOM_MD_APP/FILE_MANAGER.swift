//
//  FILE_MANAGER.swift
//  CUSTOM_MD_APP
//
//  Created by GOD on 3/30/17.
//  Copyright © 2017 ALL ONE SUN. All rights reserved.
//

import UIKit

class FILE_MANAGER: NSObject {
var path=Bundle.main.paths(forResourcesOfType: "jpg", inDirectory: "JPG")
    let FM=FileManager.default
    //var error:Error?=nil
    
    func listFiles()->[String]?{
        return path
        //try? FM.contentsOfDirectory(atPath: path)
    }
}
