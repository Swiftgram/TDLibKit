//
//  Log.swift
//  tl_parser_lib
//
//  Created by Anton Glezman on 22/09/2019.
//

import Foundation

/**
 Override to forward logs somewhere else than ```stdout```
 */
open class Log {
    
    /**
     Verbose print to ```stdout```
     */
    open class func v(_ message: String) {
        print(message)
    }
    
}
