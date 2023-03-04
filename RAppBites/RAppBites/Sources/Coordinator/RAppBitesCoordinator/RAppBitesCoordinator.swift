//
//  RAppBitesCoordinator.swift
//  RAppBites
//
//  Created by Raphael on 03/03/23.
//

import RCoordinator
import UIKit

class RAppBitesCoordinator: Coordinator {

    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = HomeViewController()
        // vc.view.backgroundColor = .red
        // vc.homeCoordinator = self
        push(viewController: vc, animated: false)
    }
    
}

extension RAppBitesCoordinator: RAppBitesEventsProtocol {

    func handle(event: RAppBitesEvents) {
        switch event {
        case .dismiss:
            dismiss(animated: true)
        case .pop:
            pop(animated: true)
        case .home:
            let homeVC = UIViewController()
            present(viewController: homeVC, animated: true)
        case .listOfFeatures:
            let listVC = UIViewController()
            push(viewController: listVC, animated: true)
        }

    }
    
}
