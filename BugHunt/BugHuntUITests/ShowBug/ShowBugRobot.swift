//
//  BugHuntRobot.swift
//  BugHuntUITests
//
//  Created by Pete Smith on 08/06/2021.
//

import XCTest

// MARK: - Actions
struct ShowBugRobot {

    @discardableResult
    func tapShowBugButton(file: StaticString = #file, line: UInt = #line) -> Self {
        let button = ShowBugPage.Buttons.showBugButton
        XCTAssertTrue(button.exists, "Show bug button does not exist", file: file, line: line)
        button.tap()
        return self
    }

    @discardableResult
    func tapShowBugAlertOkButton(file: StaticString = #file, line: UInt = #line) -> Self {
        let button = ShowBugPage.Buttons.okButton
        XCTAssertTrue(button.exists, "Show bug alert ok button does not exist", file: file, line: line)
        button.tap()
        return self
    }
}

// MARK: - Asserts
extension ShowBugRobot {

    @discardableResult
    func assertShowBugAlertMessageDisplayed(file: StaticString = #file, line: UInt = #line) -> Self {
        let  alertMessage = ShowBugPage.Alerts.showBugAlertMessage.waitForExistence(timeout: 5)
        XCTAssertTrue(alertMessage, "Show bug alert message not displayed", file: file, line: line)
        return self
    }

    @discardableResult
    func assertShowBugAlertMessageNotDisplayed(file: StaticString = #file, line: UInt = #line) -> Self {
        let  alertMessage = ShowBugPage.Alerts.showBugAlertMessage
        XCTAssertFalse(alertMessage.exists, "Show bug alert message displayed", file: file, line: line)
        return self
    }
}
