//
//  Ticket.swift
//  SwiftAlgoPlayground
//
//  Created by Dzmitry Arlou on 9/8/21.
//

import Foundation

public struct Ticket: Equatable {
    
    public var id: UUID = .init()
    public var title: String
    public var order: Int
    public var createdAt: Date?
    public var isUserGenerated: Bool = false

}

extension Date {
    
    func date(byAddingHours hours: Int) -> Date {
        Calendar.current.date(byAdding: .hour, value: hours, to: self) ?? Date()
    }
    
}


