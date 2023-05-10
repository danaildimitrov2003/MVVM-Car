//
//  CarView.swift
//  MVVM Car
//
//  Created by Danail Dimitrov on 10.05.23.
//
import Foundation
import UIKit

class CarView: UIView{
    let carLabel : UILabel = {
        let carLabel = UILabel()
        carLabel.translatesAutoresizingMaskIntoConstraints = false
        carLabel.textAlignment = .center
        carLabel.font = carLabel.font.withSize(27)
        carLabel.textColor = .init(named: "SecondaryColor")
        return carLabel
    }()
    
    let carImageView : UIImageView = {
        let carImageView = UIImageView()
        carImageView.contentMode = UIView.ContentMode.scaleAspectFill
        carImageView.translatesAutoresizingMaskIntoConstraints = false
        carImageView.layer.cornerRadius = 4.0
        carImageView.clipsToBounds = true
        return carImageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder Coder: NSCoder) {
        super.init(coder: Coder)
        configureView()
    }
    
    private func configureView() {
        addSubview(carLabel)
        addSubview(carImageView)
        
        NSLayoutConstraint.activate([
            carLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            carLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            carImageView.topAnchor.constraint(equalTo: carLabel.bottomAnchor, constant: 20),
            carImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            carImageView.widthAnchor.constraint(equalToConstant: 200),
            carImageView.heightAnchor.constraint(equalToConstant: 200),    
        ])
    }
    
    func configure(with car: CarViewModel) {
        carLabel.text = car.labelText
        carImageView.image = car.photo
    }
    
}

