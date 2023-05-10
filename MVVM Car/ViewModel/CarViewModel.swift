//
//  CarViewModel.swift
//  MVVM Car
//
//  Created by Danail Dimitrov on 10.05.23.
//

import Foundation
import UIKit.UIImage


struct CarViewModel: Equatable {
    let labelText: String
    let photo: UIImage
}

var carsViewModel: [CarViewModel] = [
    CarViewModel(labelText: "\(cars[0].make) \(cars[0].name)", photo: UIImage(named: "bmw")!),
    CarViewModel(labelText: "\(cars[1].make) \(cars[1].name)", photo: UIImage(named: "porsche")!)
]




