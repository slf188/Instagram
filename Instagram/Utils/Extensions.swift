//
//  Extensions.swift
//  Instagram
//
//  Created by Felipe Vallejo on 2/8/21.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
