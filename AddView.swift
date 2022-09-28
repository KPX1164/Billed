//
//  AddView.swift
//  Billed
//
//  Created by Copter on 27/9/2565 BE.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentation
    var body: some View {
        VStack{
            HStack{
            Spacer()
            Button(action: {
                // What to perform
                print("Accessed")
                presentation.wrappedValue.dismiss()
            })
            {
                Text("Done")
                    .foregroundColor(.blue)
                    .padding()
            }

        }//HStack
            TabView {
                IncomeView()
                    .tabItem {
                        Label("Income", systemImage: "plus.square.fill")
                    }

                ExpensesView()
                    .tabItem {
                        Label("Expenses", systemImage: "minus.square.fill")
                    }
            }
        }//VStack
        .navigationTitle(Text("Add"))
        .background(Color(.tertiarySystemGroupedBackground))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
