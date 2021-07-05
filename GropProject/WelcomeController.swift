//
//  ViewController.swift
//  GropProject
//
//  Created by USER on 05.07.21.
//

import UIKit

class WelcomeController: UIViewController {

    @IBOutlet weak var collectView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    private var collectionDataSource: WelcomeDataSource?
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionDataSource = WelcomeDataSource(with: collectView, with: pageControl)
    }
    
    @IBAction func onSkip(_ sender: Any) {
    }
    
    
    @IBAction func onNext(_ sender: Any) {
        collectionDataSource?.scrollToNextItem()
    }
    
}

