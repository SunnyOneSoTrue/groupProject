//
//  HomePageViewModel.swift
//  GropProject
//
//  Created by Shotiko Klibadze on 05.07.21.
//

import Foundation
protocol HomePageViewModelProtocol : AnyObject {
    var controller: CoordinatorDelegate {get}
    init(with controller : CoordinatorDelegate)
}

final class HomepageViewModel : HomePageViewModelProtocol {
    
    var controller : CoordinatorDelegate
    
    init(with controller: CoordinatorDelegate) {
        self.controller = controller
    }
    
    
    
}
