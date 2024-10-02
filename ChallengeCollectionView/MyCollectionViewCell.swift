//
//  MyCollectionViewCell.swift
//  ChallengeCollectionView
//
//  Created by Juan Camilo Rodriguez Betacourt on 1/10/24.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell{
    static let identifier = "MyCollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        let colors: [UIColor] = [
            .red,
            .black,
            .blue,
            .brown,
            .cyan,
            .green,
            .orange,
            .yellow,
            .purple,
            .red,
            .systemPink
            
            
        ].compactMap({$0})
        imageView.backgroundColor = colors.randomElement()
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
}
