//
//  DetailsViewController.swift
//  M2Homework6-Extra
//
//  Created by Oleg Konstantinov on 16.11.2025.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var item: Movie?
    
    private lazy var titleLabel = setupLabel(text: item?.title, font: .boldSystemFont(ofSize: 20),alignment: .center)
    private lazy var originalNameLabel = setupLabel(text: item?.originalTitle, font: .systemFont(ofSize: 14), alignment: .center)
    private lazy var genreLabel = setupLabel(text: setupGenres(genres: item?.genreIDS), font: .italicSystemFont(ofSize: 14), alignment: .center)
    private lazy var descriptionLabel = setupLabel(text: item?.overview)
    private lazy var voteStackView: UIStackView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        guard let voteAverage = item?.voteAverage else { return $0 }
        let star = UIImageView()
        let vote = UILabel()
        star.image = UIImage(systemName: "star.fill")
        star.translatesAutoresizingMaskIntoConstraints = false
        star.tintColor = UIColor(red: 1, green: 0.65, blue: 0, alpha: 1)
        star.heightAnchor.constraint(equalToConstant: 19).isActive = true
        star.widthAnchor.constraint(equalTo: star.heightAnchor, multiplier: 1.1).isActive = true
        vote.translatesAutoresizingMaskIntoConstraints = false
        vote.text = String(voteAverage)
        vote.font = .systemFont(ofSize: 14)
        $0.alignment = .leading
        $0.alignment = .bottom
        
        
        $0.spacing = 4
        $0.addArrangedSubview(star)
        $0.addArrangedSubview(vote)
        return $0
    }(UIStackView())
    
    private lazy var customView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .bgCustomView
        //Shadow
        $0.layer.cornerRadius = 20
        $0.layer.shadowColor = UIColor.black.cgColor
        $0.layer.shadowOpacity = 0.1
        $0.layer.shadowOffset = .zero
        $0.layer.shadowRadius = 10

        $0.addSubview(posterImageView)
        $0.addSubview(titleLabel)
        $0.addSubview(originalNameLabel)
        $0.addSubview(genreLabel)
        $0.addSubview(descriptionLabel)
        $0.addSubview(voteStackView)
        
        
        NSLayoutConstraint.activate([
            posterImageView.leadingAnchor.constraint(equalTo: $0.leadingAnchor, constant: 5),
            posterImageView.trailingAnchor.constraint(equalTo: $0.trailingAnchor, constant: -5),
            posterImageView.topAnchor.constraint(equalTo: $0.topAnchor, constant: 20),
            posterImageView.heightAnchor.constraint(equalTo: $0.widthAnchor, multiplier: 0.75),
            
            titleLabel.leadingAnchor.constraint(equalTo: $0.leadingAnchor, constant: 5),
            titleLabel.trailingAnchor.constraint(equalTo: $0.trailingAnchor, constant: -5),
            titleLabel.topAnchor.constraint(equalTo: posterImageView.bottomAnchor, constant: 20),
            
            originalNameLabel.leadingAnchor.constraint(equalTo: $0.leadingAnchor, constant: 5),
            originalNameLabel.trailingAnchor.constraint(equalTo: $0.trailingAnchor, constant: -5),
            originalNameLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            
            genreLabel.leadingAnchor.constraint(equalTo: $0.leadingAnchor, constant: 5),
            genreLabel.trailingAnchor.constraint(equalTo: $0.trailingAnchor, constant: -5),
            genreLabel.topAnchor.constraint(equalTo: originalNameLabel.bottomAnchor, constant: 4),
            
            descriptionLabel.leadingAnchor.constraint(equalTo: $0.leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: $0.trailingAnchor, constant: -20),
            descriptionLabel.topAnchor.constraint(equalTo: genreLabel.bottomAnchor, constant: 20),
            
            voteStackView.leadingAnchor.constraint(equalTo: $0.leadingAnchor, constant: 20),
            voteStackView.trailingAnchor.constraint(equalTo: $0.trailingAnchor, constant: -20),
            voteStackView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 10),
            voteStackView.bottomAnchor.constraint(equalTo: $0.bottomAnchor, constant: -10),
        ])
        
        return $0
    }(UIView())
    
    private lazy var posterImageView: UIImageView = {
        guard let item = self.item else { return $0 }
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(named: item.posterPath)
        $0.contentMode = .scaleAspectFit
        $0.layer.cornerRadius = 20
        $0.layer.shadowColor = UIColor.black.cgColor
        $0.layer.shadowOpacity = 0.8
        $0.layer.shadowOffset = .zero
        $0.layer.shadowRadius = 10
        return $0
    }(UIImageView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(customView)
        
        setupConstraints()
    }
    
    
    private func setupLabel(text: String?, font: UIFont = .systemFont(ofSize: 16), alignment: NSTextAlignment = .left) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        guard let text = text else { return label }
        label.text = text
        label.font = font
        label.textAlignment = alignment
        label.numberOfLines = 0
        
        return label
    }
    
    private func setupGenres (genres: [Int]?) -> String {
        let data = Genre.mockData()
        var result: String = ""
        
        guard let genres else { return result }
        
        let names = genres.compactMap{ id in
            data.first{ $0.id == id }?.name
        }
        for (index, name) in names.enumerated() {
            result.append(name)
            if index != names.count - 1 {
                result.append(", ")
            }
        }
        return result
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
        
    }
}
