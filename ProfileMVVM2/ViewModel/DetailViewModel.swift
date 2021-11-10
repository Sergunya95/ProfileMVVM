//
//  DetailViewModel.swift
//  ProfileMVVM2
//
//  Created by apple on 08.11.2021.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var description: String {
        return String(describing: "\(profile.name) \(profile.surname) is \(profile.age) old")
    }
    
    var age: Box<String?> = Box(nil)
    
    init(profile: Profile) {
        self.profile = profile
    }
    
}
