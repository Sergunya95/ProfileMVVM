//
//  ViewModel.swift
//  ProfileMVVM2
//
//  Created by apple on 08.11.2021.
//

import Foundation

class ViewModel: TableViewViewModelType {
   
    private var selectedIndexPath: IndexPath?
    var  profiles = [
         Profile(name: "John", surname: "Weak", age: 55),
         Profile(name: "Max", surname: "Pain", age: 34),
         Profile(name: "Jack", surname: "Rusel", age: 27)
    ]
    
    func numberOfRows() -> Int {
        return profiles.count 
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil } 
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
    
}
