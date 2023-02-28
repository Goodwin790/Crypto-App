//
//  Date.swift
//  Crypto
//
//  Created by Сергей Киров on 28.02.2023.
//

import Foundation

extension Date {
    
    //"2021-03-13T20:49:26.606Z"
    init(coinGekoString: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = formatter.date(from: coinGekoString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
    
    private var shortFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    func asShortDateString() -> String {
        return shortFormatter.string(from: self)
    }
    
}
