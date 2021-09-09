//
//  Ticket+Stubs.swift
//  AlgoModel
//
//  Created by Dzmitry Arlou on 9/9/21.
//

import Foundation

public extension Ticket {
    
    static func userGeneratedTickets(count: Int) -> [Ticket] {
        (0..<count).map {
            Ticket(
                title: "User Generated Ticket \($0)",
                order: $0,
                createdAt: Date().date(byAddingHours: $0),
                isUserGenerated: true
            )
        }
    }
    
    static func orderedTickets(count: Int) -> [Ticket] {
        (0..<count).map {
            Ticket(
                title: "Ticket \($0)",
                order: $0
            )
        }
    }

    static var shuffledTickets: [Ticket] {
        (Ticket.userGeneratedTickets(count: 4) + Ticket.orderedTickets(count: 4)).shuffled()
    }
    
}
