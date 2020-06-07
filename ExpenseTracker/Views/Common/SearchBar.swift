//
//  SearchBar.swift
//  ExpenseTracker
//
//  Created by Alfian Losari on 18/04/20.
//  Copyright © 2020 Alfian Losari. All rights reserved.
//

import SwiftUI

struct SearchBar: UIViewRepresentable {
    
    @Binding var text : String
    @Binding var keyboardHeight: CGFloat
    var placeholder: String
    
    class Cordinator : NSObject, UISearchBarDelegate {
        
        @Binding var text : String
        @Binding var SearchBarHeight: CGFloat

        
        init(text : Binding<String>, SearchBarHeight: Binding<CGFloat>) {
            _text = text
            _SearchBarHeight = SearchBarHeight
            
            super.init()
            NotificationCenter.default.addObserver(
                self,
                selector: #selector(keyboardWillShow),
                name: UIResponder.keyboardWillShowNotification,
                object: nil
            )
            
            NotificationCenter.default.addObserver(
                self,
                selector: #selector(keyboardWillHide),
                name: UIResponder.keyboardWillHideNotification,
                object: nil
            )
        }
        
        func SearchBar(_ SearchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
        
        
        func SearchBarSearchButtonClicked(_ SearchBar: UISearchBar) {
            SearchBar.resignFirstResponder()
        }
        
        @objc func keyboardWillShow(_ notification: Notification) {
            if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
                let keyboardRectangle = keyboardFrame.cgRectValue
                SearchBarHeight = keyboardRectangle.height
            }
        }
        
        @objc func keyboardWillHide(_ notification: Notification) {
            SearchBarHeight = 0
        }
    }
    
    func makeCoordinator() -> SearchBar.Cordinator {
        return Cordinator(text: $text, SearchBarHeight: $keyboardHeight)
    }
    
    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let SearchBar = UISearchBar(frame: .zero)
        SearchBar.placeholder = placeholder
        SearchBar.delegate = context.coordinator
        SearchBar.enablesReturnKeyAutomatically = false
        return SearchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = text
    }
}




struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
