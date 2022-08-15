//
//  XCANewsApp.swift
//  XCANewsWatch WatchKit Extension
//
//  Created by Daesy Vences on 8/11/22.
//

import SwiftUI
import WatchKit

@main
struct XCANewsApp: App {
    
    
    @WKExtensionDelegateAdaptor(ExtensionDelegate.self) private var extensionDelegate
    @StateObject private var bookmarkVM = ArticleBookmarkViewModel.shared
    @StateObject private var searchVM = ArticleSearchViewModel.shared
    @StateObject private var connectivityVM = WatchConnectivityViewModel.shared
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(bookmarkVM)
            .environmentObject(searchVM)
            .environmentObject(connectivityVM)
        }
    }
}
