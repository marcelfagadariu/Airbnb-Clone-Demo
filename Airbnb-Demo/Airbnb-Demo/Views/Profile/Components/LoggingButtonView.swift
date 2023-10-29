//
//  LoggingButtonView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 29.10.2023.
//

import SwiftUI

struct LoggingButtonView: View {
    var body: some View {
        Button {
            print("Log in")
        } label: {
            Text("Log in")
                .foregroundStyle(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 48)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    LoggingButtonView()
}
