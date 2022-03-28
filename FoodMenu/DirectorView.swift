//
//  DirectorView.swift
//  FoodMenu
//
//  Created by NEW on 3/9/22.
//

import SwiftUI

struct DirectorView: View {
    let director: Director
    var body: some View {
        VStack {
            Image(director.imageName)
                .resizable()
                .scaledToFit()
                
            Spacer()
            Text(director.name)
                .foregroundColor(.white)
            
            Spacer()
            
            Text(director.description)
        }
        
        .padding()
        .background(.green)
    }
}

//struct DirectorView_Previews: PreviewProvider {
//    static var previews: some View {
//        DirectorView()
//    }
//}
