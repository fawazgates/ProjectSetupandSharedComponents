//
//  Item.swift
//  ProjectSetupandSharedComponents
//
//  Created by User on 29/03/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
