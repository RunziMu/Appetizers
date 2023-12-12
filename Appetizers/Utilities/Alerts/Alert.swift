//
//  Alert.swift
//  Appetizers
//
//  Created by Runzi Mu on 2023-12-07.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    //MARK: - Network Alerts
    static let invalidData =      AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid. Please contact support."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidResponse =  AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from the server. Please try again or contact support."),
                                           dismissButton: .default(Text("OK")))
    
    static let invalidURL =       AlertItem(title: Text("Server Error"),
                                      message: Text("There was an issue connecting to the server. If this persists, please contact support."),
                                      dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("No Internet Connnection"),
                                            message: Text("Your iPhone is not connected to the internet. To connect, turn off Airplane Mode or connect to a Wi-Fi network."),
                                            dismissButton: .default(Text("OK")))
    //MARK: - Account Alerts
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                            message: Text("Please ensure all fields in the form have been filled out."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Please ensure your Email is correct."),
                                            dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(title: Text("Changes Saved"),
                                            message: Text("Cheers! 🎉"),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidUserData = AlertItem(title: Text("Prifile Error"),
                                            message: Text("There was an Error saving or retriving your profile."),
                                            dismissButton: .default(Text("OK")))
    
    static let orderPlacedSuccess = AlertItem(title: Text("Order Placed"),
                                            message: Text("Cheers! 🎉"),
                                            dismissButton: .default(Text("OK")))
}

