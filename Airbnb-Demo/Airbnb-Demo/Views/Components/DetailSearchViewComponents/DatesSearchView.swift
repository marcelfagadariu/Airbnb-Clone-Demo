//
//  DatesSearchView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 28.10.2023.
//

import SwiftUI

struct DatesSearchView: View {
    @Binding var selection: DestinationSearchOption
    @Binding var startDate: Date
    @Binding var endDate: Date

    var body: some View {
        VStack(alignment: .leading) {
            if selection == .dates {
                Text("When's your trip?")
                    .font(.title2)
                    .fontWeight(.semibold)
                VStack {
                    DatePicker("From", selection: $startDate, displayedComponents: .date)
                    Divider()
                    DatePicker("To", selection: $endDate, displayedComponents: .date)
                }
                .foregroundStyle(.gray)
                .font(.subheadline)
                .fontWeight(.semibold)
            } else {
                CollapsedPickerView(title: "When", description: "Add dates")
            }
        }
        .frame(height: selection == .dates ? 180 : 64)
        .modifier(CollapsibleDestinationViewModifier())
    }
}

#Preview {
    Group {
        DatesSearchView(selection: .constant(.dates), startDate: .constant(Date()), endDate: .constant(Date()))
        DatesSearchView(selection: .constant(.location), startDate: .constant(Date()), endDate: .constant(Date()))
    }
}
