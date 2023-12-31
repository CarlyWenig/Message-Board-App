import SwiftUI
import Foundation

struct AddMessages: View {
    @ObservedObject var messages : Messages
    @State private var inputtedUsername = ""
    @State private var inputtedMessage = ""
    @State private var badWordAlert = false
    @State private var buttonAction = false
    @State private var textLimit = 128
    @State private var isBackgroundHidden = false
    @State private var listOfBadWords = ["crap", "Crap", "Darn", "darn", "Damn", "damn"]
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        VStack {
            
            Form {
                Section {
                    TextField("Input username", text: $inputtedUsername)
                }
                
                Section {
                    TextField("Input message", text: $inputtedMessage)
                        .onReceive(inputtedMessage.publisher.collect()) {
                            let limitedMessage = String($0.prefix(textLimit))
                            if (inputtedMessage != limitedMessage) {
                                inputtedMessage = limitedMessage
                            }
                            
                        }
                }
                Section {
                    Button() {
                        badWordAlert = false
                        for word in listOfBadWords {
                            if inputtedMessage.contains(word) {
                                badWordAlert = true
                            }
                        }
                        
                        if !badWordAlert {
                            let newMessage = Message(username: inputtedUsername, message: inputtedMessage, time: Date.now)
                            messages.listMessages.append(newMessage)
                            dismiss()
                            
                        }
                    } label : {
                        Text("Add Message")
                            .font(.system(size: 20, weight: .regular, design: .monospaced))
                            .bold()
                            .foregroundColor(.purple)
                            .monospaced()
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        
                    }
                    .disabled(inputtedMessage.isEmpty)
                }
                
            }
            .scrollContentBackground(isBackgroundHidden ? .hidden : .visible)
            .background(isBackgroundHidden ? Color(red: 255/255, green: 209/255, blue: 220/255) : .clear)
            Button(action: {
                isBackgroundHidden.toggle()
            }, label: {
                Text("Change Background Color")
                    .font(.system(size: 20, weight: .regular, design: .monospaced))
                    .bold()
                    .foregroundColor(.purple)
                    .monospaced()
                    .frame(maxWidth: .infinity, alignment: .center)
            })
            
            .alert(isPresented: $badWordAlert) {
                Alert(title: Text(""),
                      message: Text("bad word detected"))
            }
        }
        
        
    }
}

struct AddMessages_Previews: PreviewProvider {
    static var previews: some View {
        AddMessages(messages : Messages())
    }
}
