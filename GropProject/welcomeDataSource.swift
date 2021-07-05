//
//  welcomeDataSource.swift
//  GropProject
//
//  Created by lado tsivtsivadze on 7/4/21.
//

import Foundation
import UIKit

class WelcomeDataSource: CollectionDataSource {
    
    var collectionView: UICollectionView!
    
    init(with collectionView: UICollectionView) {
        self.collectionView = collectionView
    }
    
    func configCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let nib = UINib(nibName: "welcomeCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "welcomeCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        <#code#>
//    }
}

