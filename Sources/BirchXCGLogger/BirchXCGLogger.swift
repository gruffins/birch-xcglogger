//
//  BirchXCGLogger.swift
//  BirchXCGLogger
//
//  Created by Ryan Fung on 12/2/22.
//

import Foundation
import XCGLogger
import Birch

open class BirchXCGLogger: BaseDestination {
    public init() {
        super.init()
        outputLevel = .verbose
        showLogIdentifier = false
        showFunctionName = true
        showLevel = false
        showDate = false
    }

    open override func output(logDetails: LogDetails, message: String) {
        switch logDetails.level {
        case .verbose:
            Birch.t { message }
        case .debug, .notice:
            Birch.d { message }
        case .info:
            Birch.i { message }
        case .warning:
            Birch.w { message }
        case .error, .severe, .emergency, .alert:
            Birch.e { message }
        case .none:
            break
        }
    }
}
