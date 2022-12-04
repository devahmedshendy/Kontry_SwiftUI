//
//  ViewExtensions.swift
//  Kontry
//
//  Created by  Ahmed Shendy on 6/24/21.
//

import Foundation
import SwiftUI

extension View {
    func clearListStyle() {
        UITableView.appearance().separatorStyle = .none
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
}
