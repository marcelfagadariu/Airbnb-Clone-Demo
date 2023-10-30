//
//  WhereToGoView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 28.10.2023.
//

import SwiftUI

struct WhereToGoView: View {

    @Binding var selection: DestinationSearchOption
    @Binding var isDismissed: Bool
    @Bindable var viewModel: ExploreViewModel

    var body: some View {
        VStack(alignment: .leading) {
            if selection == .location {
                Text("Where to?")
                    .font(.title2)
                    .fontWeight(.semibold)
                HStack {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.small)
                    TextField("Search destination", text: $viewModel.searchLocation)
                        .font(.subheadline)
                        .onSubmit {
                            viewModel.updateListing()
                            isDismissed.toggle()
                        }
                }
                .frame(height: 44)
                .padding(.horizontal)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1)
                        .foregroundStyle(Color(.systemGray4))
                }
            } else {
                CollapsedPickerView(title: "Where", description: "Add destination")
            }
        }
        .frame(height: selection == .location ? 120 : 64)
        .modifier(CollapsibleDestinationViewModifier())
    }
}

#Preview {
    Group {
        WhereToGoView(selection: .constant(.guests), isDismissed: .constant(true), viewModel: ExploreViewModel(service: ExplorerService()))
        WhereToGoView(selection: .constant(.location), isDismissed: .constant(true), viewModel: ExploreViewModel(service: ExplorerService()))
    }
}
