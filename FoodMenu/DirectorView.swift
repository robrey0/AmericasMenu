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
            Text(director.name)
            Text(director.description)
        }
    }
}

//struct DirectorView_Previews: PreviewProvider {
//    static var previews: some View {
//        DirectorView()
//    }
//}
