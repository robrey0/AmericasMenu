//
//  ContentView.swift
//  FoodMenu
//
//  Created by NEW on 2/22/22.
//


import SwiftUI

struct ContentView: View {
    
    let restaurants: [Restaurant] = Bundle.main.decode("Restaurants.json")
    
    let boardOfDirectors: [String: Director] = Bundle.main.decode("boardOfDirectors.json")
    
    
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(restaurants) { restaurant in
                        NavigationLink {
                            RestaurantView(restaurant: restaurant, boardOfDirectors: boardOfDirectors)
                        } label: {
                            VStack {
                                
                                Image(restaurant.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .padding()
                                
                                Text(restaurant.name)
                                    .font(.headline)
                                    .foregroundColor(.yellow)
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.cyan)
                        )

                    }
                }
                .padding([.horizontal, .bottom])

            }
            .navigationTitle("America's Favorite Foods")
            .background(Color.mint)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
