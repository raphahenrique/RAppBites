//
//  RAppBitesEvents.swift
//  RAppBites
//
//  Created by Raphael on 03/03/23.
//

import RCoordinator
import UIKit

protocol RAppBitesEventsProtocol {
    func handle(event: RAppBitesEvents)
}

enum RAppBitesEvents: Event {
    
    case dismiss
    case pop
    case home
    case listOfFeatures
    
    func handle(_ handler: RAppBitesEventsProtocol) {
        handler.handle(event: self)
    }
}
