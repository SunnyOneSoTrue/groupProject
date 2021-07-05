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
    var pageControl: UIPageControl!
    
    init(with collectionView: UICollectionView, with pageControl: UIPageControl) {
        super.init()
        self.collectionView = collectionView
        self.pageControl = pageControl
        self.configCollectionView()
    }
    
    func configCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let nib = UINib(nibName: "welcomeCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "welcomeCell")
        collectionView.isPagingEnabled = true
    }
    
    func goToNextPage() {
        //collectionView.scro
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "welcomeCell", for: indexPath) as? welcomeCell
        cell!.image = UIImage(named: "testImage")
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int((collectionView.contentOffset.x / collectionView.frame.width).rounded(.toNearestOrAwayFromZero))
    }
}

