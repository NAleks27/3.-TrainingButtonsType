//
//  Alerts.swift
//  Buttons
//
//  Created by Aleksey Nosik on 27.09.2022.
//

import SwiftUI

struct Alerts: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Please read this")
        }
    }
}

struct Alerts_Previews: PreviewProvider {
    static var previews: some View {
        Alerts()
    }
}
