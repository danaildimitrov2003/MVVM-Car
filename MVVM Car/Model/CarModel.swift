//
//  CarModel.swift
//  MVVM Car
//
//  Created by Danail Dimitrov on 10.05.23.
//

import Foundation
import UIKit

struct Car {
    let name: String
    let make: String
    let year: Int
    let horsePower: Int
    let photo: UIImage
}

var cars: [Car] = [
    Car(name: "E36 M3", make: "BMW", year: 1989, horsePower: 320, photo: UIImage(named: "bmw")!),
    Car(name: "959", make: "Porsche", year: 1986, horsePower: 444, photo: UIImage(named: "porsche")!)
]
