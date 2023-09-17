//
//  ModalScreen.swift
//  MyAppSUI2308
//
//  Created by Журавлев Лев on 14.09.2023.
//

import SwiftUI

struct ModalScreen: View {
    
    @State private var modalIsOpen: Bool = false
    
    var body: some View {
        VStack {
            BasicUIViewRepresentable()
                .frame(width: 400, height: 100)
            Button("Open Modal") {
                modalIsOpen.toggle()
            }.sheet(isPresented: $modalIsOpen) {
                Text("Modal opened 👌")
            }
        }
    }
}

struct ModalScreen_Previews: PreviewProvider {
    static var previews: some View {
        ModalScreen()
    }
}

struct BasicUIViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let view = UIView()
        view.backgroundColor = .systemRed
        view.layer.cornerRadius = 8
        
        let label = UILabel()
        label.text = "It's UIViewRepresentable view"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
                
        return view
    }
    
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
}
