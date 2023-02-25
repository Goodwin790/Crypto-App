//
//  XMarkButton.swift
//  Crypto
//
//  Created by Сергей Киров on 23.02.2023.
//

import SwiftUI

struct XMarkButton: View {


    var body: some View {
        Button(action: {

}, label: {
Image(systemName: "xmark")
        .font(.headline)
})
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton()
    }
}
