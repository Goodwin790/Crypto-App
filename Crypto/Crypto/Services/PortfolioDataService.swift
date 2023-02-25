//
//  PortfolioDataService.swift
//  Crypto
//
//  Created by Сергей Киров on 24.02.2023.
//

import CoreData
import Foundation

class PortfolioDataService {
    private let container: NSPersistentContainer
    private let containerNamme = "PortfolioContainer"
    private let entityName = "PortfolioEntity"
    
    @Published var savedEntities: [PortfolioEntity] = []
    
    init() {
        container = NSPersistentContainer(name: containerNamme)
        container.loadPersistentStores { _, error in
            if let error = error {
                print("Error loading Core Data! \(error)")
            }
        }
        self.getPortfolio()
    }
    
    // MARK: PUBLIC
    func updatePortfolio(coin: CoinModel, amount: Double) {
        //Check if coin is already in Portfolio
        if let entity = savedEntities.first(where: {$0.coinID == coin.id}) {
            if amount > 0 {
                update(entity: entity, amount: amount)
            } else {
                delete(entity: entity)
            }
        } else {
            add(coin: coin, amount: amount)
        }
    }

    // MARK: PRIVATE
    private func getPortfolio() {
        let request = NSFetchRequest<PortfolioEntity>(entityName: entityName)
        do {
           savedEntities = try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching Portfolio entities! \(error)")
        }
    }
    
    private func add( coin: CoinModel, amount: Double) {
        let entity = PortfolioEntity(context: container.viewContext)
        entity.coinID = coin.id
        entity.amount = amount
        applyChanges()
    }
    
    private func update(entity: PortfolioEntity, amount: Double) {
        entity.amount = amount
        applyChanges()
    }
    
    private func delete(entity: PortfolioEntity) {
        container.viewContext.delete(entity)
        applyChanges()
    }
    
    private func save() {
        do {
            try container.viewContext.save()
        } catch let error {
            print("Error saving to Core Data \(error)")
        }
    }
    
    private func applyChanges() {
        save()
        getPortfolio()
    }
}
