//
//  HomeViewController.swift
//  RAppBites
//
//  Created by Raphael on 03/03/23.
//

import UIKit

class HomeViewController: UIViewController {

    var theView: HomeView!

    override func viewDidLoad() {
        super.viewDidLoad()

        print("done for the night")
//        router?.handle(event: RAppBitesEvents.listOfFeatures)
    }

    override func loadView() {
        theView = HomeView()
        view = theView
    }
}
