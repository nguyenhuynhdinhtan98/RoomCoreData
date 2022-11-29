//
//  AddRoomViewModel.swift
//  Rooms
//
//  Created by Tân Nguyễn on 28/11/2022.
//

import Foundation
class AddRoomViewModel: ObservableObject {
    let coreDataManager: CoreDataManager
    
    var name: String
    var color: UIColor
    var length: Double
    var width: Double
    
    private init () {
        coreDataManager = CoreDataManager.shared
    }
}
