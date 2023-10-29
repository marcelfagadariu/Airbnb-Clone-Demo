//
//  GuestSearchView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 28.10.2023.
//

import SwiftUI

struct GuestSearchView: View {
    @Binding var selection: DestinationSearchOption
    @Binding var guests: Int

    var body: some View {
        VStack(alignment: .leading) {
            if selection == .guests {
                Text("Who's comming?")
                    .font(.title2)
                    .fontWeight(.semibold)
                Stepper {
                    Text("\(guests) Adults")
                } onIncrement: {
                    guests += 1
                } onDecrement: {
                    guard guests > 0 else { return }
                    guests -= 1
                }

            } else {
                CollapsedPickerView(title: "Who", description: "Add guests")
            }
        }
        .frame(height: selection == .guests ? 120 : 64)
        .modifier(CollapsibleDestinationViewModifier())
    }
}

#Preview {
    Group {
        GuestSearchView(selection: .constant(.guests), guests: .constant(2))
        GuestSearchView(selection: .constant(.location), guests: .constant(0))
    }
}
