//
//  welcomeCell.swift
//  GropProject
//
//  Created by lado tsivtsivadze on 7/4/21.
//

import UIKit

class welcomeCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    var imageView: UIImageView?
    var image: UIImage?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        guard let image = image else { return }
        imageView = UIImageView()
        imageView!.frame = bounds
        imageView!.image = image
        addSubview(imageView!)
    }
}
