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
        setUpImageGradient()
    }
    
    func setUpImageGradient() {
        guard let imageView = imageView else { return }
        let view  = UIView(frame: bounds)
        let gradient = CAGradientLayer()
        gradient.frame = view.frame

        let color1 = UIColor.black.withAlphaComponent(0).cgColor
        let color2 = UIColor.black.withAlphaComponent(1).cgColor
    
        gradient.colors = [color1, color2]
        gradient.startPoint = CGPoint(x: 0.5, y: 0.4)
        gradient.endPoint = CGPoint(x: 0.5, y: 1)
        
        view.layer.insertSublayer(gradient, at: 0)

        imageView.addSubview(view)
        imageView.bringSubviewToFront(view)
    }
}
