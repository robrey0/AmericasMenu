//
//  DirectorsView.swift
//  FoodMenu
//
//  Created by NEW on 3/8/22.
//

import SwiftUI

struct RestaurantView: View {
    
    struct BoardOfDirectors {
        let name: String
        let dir: Director
    }
    
    let restaurant: Restaurant
    let boardOfDirectors: [BoardOfDirectors]
    
    init(restaurant: Restaurant, boardOfDirectors: [String : Director]) {
        self.restaurant = restaurant
        
        
        self.boardOfDirectors = restaurant.bod.map { director in
            if let directorr = boardOfDirectors[director.name] {
                return BoardOfDirectors(name: director.name, dir: directorr)
            } else {
                fatalError("Missing \(director.name)")
            }
        }
        
        
    }
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(alignment: .center) {
                    Image(restaurant.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 0.6)
                        .padding(.top)
                    
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.white)
                        .padding(.vertical)
                    
                    Text(restaurant.name)
                        .font(.title.bold())
                    Text(restaurant.category)
                    Text(restaurant.description)
                    
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.white)
                        .padding(.vertical)
                    
                    Text("Board Of Directors")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                }
                .padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(boardOfDirectors, id: \.name) { dire in
                            
                            NavigationLink {
                                DirectorView(director: dire.dir)
                            } label: {
                                HStack {
                                    Image(dire.dir.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 104, height: 72)
                                        .clipShape(Capsule())
                                        .overlay {
                                            Capsule()
                                                .strokeBorder(.white, lineWidth: 1)
                                        }
                                    Text(dire.name)
                                        .foregroundColor(Color.white)
                                        .font(.headline)
                                }
                            }
                        }
                    }
                }
            }
        }
        .navigationTitle(restaurant.name)
        .navigationBarTitleDisplayMode(.inline)
        .background(.cyan)
    }
}

struct DirectorsView_Previews: PreviewProvider {
    static let restuanrant: [Restaurant] = Bundle.main.decode("Restaurants.json")
    static let boardOfDirectors: [String: Director] = Bundle.main.decode("boardOfDirectors.json")
    static var previews: some View {
        RestaurantView(restaurant: restuanrant[0], boardOfDirectors: boardOfDirectors)
    }
}
