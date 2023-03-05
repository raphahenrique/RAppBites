//
//  HomeView.swift
//  RAppBites
//
//  Created by Raphael on 03/03/23.
//

import UIKit

class HomeView: UIView {

    private let avatarImageView: UIImageView
    private let nameLabel: UILabel
    private var titleLabel: UILabel
    private var squareView: UIView

    init() {
        avatarImageView = UIImageView()
        nameLabel = UILabel()
        titleLabel = UILabel()
        squareView = UIView()
        
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension HomeView: ViewCodable {
    
    func configureViews() {
        backgroundColor = .white

        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarImageView.contentMode = .scaleAspectFill
        avatarImageView.layer.cornerRadius = 25
        avatarImageView.clipsToBounds = true
        avatarImageView.image = UIImage(named: "avatar")
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        nameLabel.textColor = .black
        nameLabel.text = "Welcome"

        titleLabel.text = "Hello World!"
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        squareView.backgroundColor = .red
        squareView.translatesAutoresizingMaskIntoConstraints = false
        
    }

    func buildHierarchy() {
        addSubview(avatarImageView)
        addSubview(nameLabel)
        addSubview(titleLabel)
        addSubview(squareView)
    }

    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            avatarImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            avatarImageView.widthAnchor.constraint(equalToConstant: 50),
            avatarImageView.heightAnchor.constraint(equalToConstant: 50),
            
            nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 20),
            nameLabel.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 24),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            squareView.centerXAnchor.constraint(equalTo: centerXAnchor),
            squareView.centerYAnchor.constraint(equalTo: centerYAnchor),
            squareView.widthAnchor.constraint(equalToConstant: 100),
            squareView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    func setupAccessibility() {
        
    }

    
}
