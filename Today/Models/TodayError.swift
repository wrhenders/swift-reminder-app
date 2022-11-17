//
//  TodayError.swift
//  Today
//
//  Created by Ryan Henderson on 11/17/22.
//

import Foundation

enum TodayError: LocalizedError {
    case accessDenied
    case accessRestricted
    case failedRedingCalendarItem
    case failedReadingReminders
    case reminderHasNoDueDate
    case unknown
    
    var errorDescription: String? {
        switch self {
        case .accessDenied:
            return NSLocalizedString("The app doesn't have permission to read reminders", comment: "access denied error")
        case .accessRestricted:
            return NSLocalizedString("This device doesn't allow access to reminders", comment: "access restriced error")
        case .failedReadingReminders:
            return NSLocalizedString("Failed to read reminders", comment: "failed reading reminders error description")
        case .failedRedingCalendarItem:
            return NSLocalizedString("Failed to read a calendar item", comment: "failed calendar item error description")
        case .reminderHasNoDueDate:
            return NSLocalizedString("A reminder has no due date", comment: "reminder has no due date error description")
        case .unknown:
            return NSLocalizedString("An unknown error occurred", comment: "unknown error description")
        }
    }
}
