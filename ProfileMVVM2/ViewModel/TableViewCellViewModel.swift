//
//  TableViewCellViewModel.swift
//  ProfileMVVM2
//
//  Created by apple on 08.11.2021.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
   
    private var profile: Profile
    
    var fullName: String {
        return profile.name + " " + profile.surname
    }
    var age: String {
        return String(describing: profile.age)
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
