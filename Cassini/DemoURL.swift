//
//  DemoURL.swift
//  Cassini
//
//  Created by Braden Gray on 11/19/16.
//  Copyright © 2016 Graycode. All rights reserved.
//

import Foundation

struct DemoURL {
    static let Stanford = "http://comm.stanford.edu//mm/2016/08/mcclatchy-hall-600x300.jpg"
    
    static let NASA = [
        "Cassini" : "http://www.jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg",
        "Earth" : "http://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
        "Saturn" : "http://www.nasa.gov/sites/default/files/saturn_collage.jpg"
    ]
    
    static func NASAImageNamged(imageName: String?)-> NSURL? {
        if let urlstring = NASA[imageName ?? ""] {
            return NSURL(string: urlstring)
        } else {
            return nil
        }
    }
}
