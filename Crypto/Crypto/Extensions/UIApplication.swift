//
//  UIApplication.swift
//  Crypto
//
//  Created by Сергей Киров on 21.02.2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
