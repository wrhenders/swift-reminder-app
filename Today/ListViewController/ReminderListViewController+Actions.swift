//
//  ReminderListViewController+Actions.swift
//  Today
//
//  Created by Ryan Henderson on 11/16/22.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(with: id)
    }
}
