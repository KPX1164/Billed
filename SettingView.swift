//
//  SettingView.swift
//  Billed
//
//  Created by Copter on 4/9/2565 BE.
//

import SwiftUI

struct SettingView: View {
    @State private var userName:String = "Hakushin"
    @State private var diplayAutomatic = false
    @State private var displayLight = true
    @State private var displayDark = false
    @State private var gestureEditor = false
    @Environment(\.presentationMode) var presentation
    var body: some View {
        NavigationView {
                    List {
                        //Sign in
                        Section{
                            HStack{
                                Image(systemName: "person.crop.circle")
                                    .font(.system(size: 57))
                                VStack(alignment: .leading){
                                    Text("Sign in")
                                        .font(.headline)
                                    Text("Google, Apple, Facebook, Line")
                                        .font(.subheadline)
                                }
                                
                                
                            }
                            NavigationLink(destination: GeneralView(gestureEditor: self.$gestureEditor)) {
                                Text("Suggestions")
                            }
                        }
                        
                        //Account setting
                        Section{
                            NavigationLink(destination: AccountsView(userName: self.$userName)) {
                                Text("Account")
                            }
                        }
                        //General
                        Section{
                            NavigationLink(destination: GeneralView(gestureEditor: self.$gestureEditor)) {
                                Text("General")
                            }
                            NavigationLink(destination: DisplayView(displayAutomatic: self.$diplayAutomatic,displayLight: self.$displayLight,displayDark: self.$displayDark)) {
                                Text("Display")
                            }
                            NavigationLink(destination: HomeScreenView()) {
                                Text("Home Screen")
                            }
                            NavigationLink(destination: AccessibilityView()) {
                                Text("Accessibility")
                            }
                            NavigationLink(destination: PrivacySecurityView()) {
                                Text("Privacy & Security")
                            }
                        }
                        
                        
                    }.navigationTitle("Setting")
                .toolbar {
                    Button("Done") {
                        presentation.wrappedValue.dismiss()
                                }
                    }
            }
    }
}

struct AccountsView: View {
@Binding var userName:String
var body: some View {
    VStack{
        
    List{
        Section(header: Text(userName+"'s Account")){
            
                HStack{
                    Text("Name")
                    Spacer()
                    TextEditor(text: $userName)
                        .foregroundColor(.secondary)
                
            }
        }
        Section{
            VStack{
                Text("Daily Average")
            }
        }
        Section{
            VStack{
                Text("Weekly Average")
            }
        }
        
        Section{
            VStack{
                Text("Monthly Average")
            }
        }
        
        Section{
            VStack{
                Text("Yearly Average")
            }
        }
    }
    .navigationBarTitle(Text("Account"), displayMode: .inline)
    }
    }
}

struct GeneralView: View {
@Binding var gestureEditor:Bool

var body: some View {
    List{
        Section{
        NavigationLink(destination: AboutView()) {
            Text("About")
        }
        NavigationLink(destination: UpdateView()) {
            Text("Software Update")
        }
        }
        Section{
            NavigationLink(destination: GesturesView(gestureEditor: self.$gestureEditor)) {
                Text("Gestures")
            }
            NavigationLink(destination: LangugeAndRegionView()) {
                Text("Languge & Region")
            }
            NavigationLink(destination: LegalAndRegulatoryView()) {
                Text("Legal & Regulatory")
            }
            
            
        }
        Section{
            NavigationLink(destination: TransferView()) {
                Text("Transfer")
            }
            NavigationLink(destination: ResetView()) {
                Text("Reset")
            }
        }
        Section{
            Button {
                print("Lock Down")
            } label: {
                Text("Lock Down")
            }
            
        }
    }.navigationBarTitle(Text("General"), displayMode: .inline)
}
}

struct AboutView: View {
var body: some View {
    List{
        Section{
            HStack{
                Text("Model Name")
                Spacer()
                Text("Suthep")
                    .foregroundColor(.secondary)
            }
            HStack{
                Text("Model Number")
                Spacer()
                Text("A2201")
                    .foregroundColor(.secondary)
            }
            HStack {
                Text("Software Version")
                Spacer()
                Text("1.0")
                    .foregroundColor(.secondary)
            }
            
        }
        
        Section(footer: Text("Parts and service history is collected and show information on the status and fix details for you.")){
            NavigationLink(destination: SupportView()) {
                Text("Support")
            }
            
        }
        
    }.navigationBarTitle(Text("About"), displayMode: .inline)
    
}
}

struct UpdateView: View {
var body: some View {
    VStack {
        Text("AccountMy 1.0")
            .foregroundColor(.secondary)
            .padding()
        Text("Your app is up to date")
            .foregroundColor(.secondary)
    }
    
}
}


struct HomeScreenView: View {
var body: some View {
    ZStack {
        VStack {
            HomeView()
                .frame(width: 300, height: 630, alignment: .center)
                .border(Color.secondary)
            .cornerRadius(15)
            
            Button {
                print("Edit Active")
            } label: {
                Text("Edit")
                    .frame(width: 100, height: 50, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(5)
                    
            }

        }
    }.navigationBarTitle(Text("About"), displayMode: .inline)
}
}

struct SupportView: View {
var body: some View {
    SettingView()
}
}

struct GesturesView: View {
@Binding var gestureEditor:Bool


var body: some View {
    VStack{
        List{
            Section(header: Text("Editor Gestures"),footer: Text("Press and hold to avtivate editor mode.")){
                HStack{
                Toggle("Press & hold", isOn: $gestureEditor)
                
                if gestureEditor {
                    //Do something
                }
                    
                }
            }
        }
    }
    .navigationBarTitle(Text("Display"), displayMode: .inline)
}
}

struct DisplayView: View {
@Binding var displayAutomatic:Bool
@Binding var displayLight:Bool
@Binding var displayDark:Bool

var body: some View {
    VStack{
        List{
            Section(header: Text("Display")){
                HStack{
                VStack(alignment:.center){
                    //Preview
                    Text("Light")
                    Circle()
                }
                    VStack{
                        //Preview
                        Text("Dark")
                        Circle()
                        
                    }
                    
                }
                HStack{
                Toggle("Automatic", isOn: $displayAutomatic)
                
                if displayAutomatic {
                    //Do something
                }
                    
                }
            }
        }
    }
    .navigationBarTitle(Text("Display"), displayMode: .inline)
}
}

struct AccessibilityView: View {
var body: some View {
    VStack{
               List{
                   
                   Section(header: Text("Vision")){
                       NavigationLink(destination: AboutView()) {
                           Text("Voice Over")
                       }
                       NavigationLink(destination: AboutView()) {
                           Text("Hover Focus")
                       }
                       NavigationLink(destination: AboutView()) {
                           Text("Display & Text")
                       }
                       NavigationLink(destination: AboutView()) {
                           Text("Spoken Content")
                       }
                       NavigationLink(destination: AboutView()) {
                           Text("Eyes Value")
                       }
                       NavigationLink(destination: AboutView()){
                           Text("Colour Blindness")
                       }
                   }
                   Section(header: Text("Physical")){
                       NavigationLink(destination: AboutView()){
                           Text("Touch")
                       }
                       NavigationLink(destination: AboutView()){
                           Text("Voice Control")
                       }
                       NavigationLink(destination: AboutView()){
                           Text("Keyboard")
                       }
                       
                   }
                   Section(header: Text("Hearing")){
                       NavigationLink(destination: AboutView()){
                           Text("Hearing Devices")
                       }
                       NavigationLink(destination: AboutView()){
                           Text("Sound Recognition")
                       }
                       NavigationLink(destination: AboutView()){
                           Text("Audio & Visual")
                       }
                   }
               }.navigationTitle("Accessibility")
                   .navigationBarTitleDisplayMode(.inline)
           }

}
}

struct PrivacySecurityView: View {
var body: some View {
    Text("This PrivacySecurity view")
}
}

struct TransferView: View {
@State var transferID : String = ""
@State var Password:String = ""
var body: some View {
    VStack{
        List{
            Section{
                HStack{
                    Text("Transfer Id")
                    TextField(
                        "Enter Transfer Id",
                        text: $transferID
                    )
                }
                HStack{
                    Text("Password")
                    TextField(
                        "",
                        text: $Password
                    )
                }
            }
            Section(footer: Text("This ID can just only use one times.")){
                Button {
                    print("Generate Transfer ID")
                } label: {
                    Text("Generate Transfer ID")
                        
                        
                }
            }
        
        }
        
        
        
    }.navigationTitle("Transfer")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
                            Button("Transfer") {
                                print("Transfer")
                            }
                        }
}
}

struct LangugeAndRegionView: View {
var body: some View {
    List{
        Section(header: Text("Languges")){
            HStack{
                NavigationLink(destination: AboutView()){
                    Text("Languge")
                    Spacer()
                    Text("English")
                        .foregroundColor(.secondary)
                }
                
            }
        }
        
        Section(header:Text("Regions")){
            HStack{
                NavigationLink(destination: AboutView()){
                    Text("Region")
                    Spacer()
                    Text("Thai")
                        .foregroundColor(.secondary)
                }
                
            }
            
        }
        
    }.navigationBarTitle(Text("Languge & Region"), displayMode: .inline)
    
}
}

struct LegalAndRegulatoryView: View {
var body: some View {
    List{
       Text("This is Legal")
        
    }.navigationBarTitle(Text("Legal & RegulatoryView"), displayMode: .inline)
    
}
}

struct ResetView: View {
var body: some View {
    List{
        VStack{
            Button {
                print("Enject All Data")
            } label: {
                Text("Enject All Data")
                    
            }
        }
        
    }.navigationBarTitle(Text("Legal & RegulatoryView"), displayMode: .inline)
    
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
