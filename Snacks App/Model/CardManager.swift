//
//  CardManager.swift
//  Snacks App
//
//  Created by user on 01/01/24.
//

import SwiftUI

class CardManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addCard(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCard(product: Product) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
    
}


