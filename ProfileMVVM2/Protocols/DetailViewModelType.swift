//
//  DetailViewModelType.swift
//  ProfileMVVM2
//
//  Created by apple on 08.11.2021.
//

import Foundation

protocol DetailViewModelType {
    var description: String { get }
    var age: Box<String?> { get  }
}
