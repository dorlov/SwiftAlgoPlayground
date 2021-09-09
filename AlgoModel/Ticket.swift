//
//  Ticket.swift
//  SwiftAlgoPlayground
//
//  Created by Dzmitry Arlou on 9/8/21.
//

import Foundation

public struct Ticket {
    
    public var id: UUID = .init()
    public var title: String
    public var order: Int
    public var createdAt: Date?
    
    
    public static func userGeneratedTickets(count: Int) -> [Ticket] {
        (0..<count).map {
            Ticket(
                title: "User Generated Ticket \($0)",
                order: $0,
                createdAt: Date().date(byAddingHours: $0)
            )
        }
    }
    
    public static func orderedTickets(count: Int) -> [Ticket] {
        (0..<count).map {
            Ticket(
                title: "Ticket \($0)",
                order: $0
            )
        }
    }

}

extension Date {
    
    func date(byAddingHours hours: Int) -> Date {
        Calendar.current.date(byAdding: .hour, value: hours, to: self) ?? Date()
    }
    
}


