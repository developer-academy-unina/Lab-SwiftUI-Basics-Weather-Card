//
//  ContentView.swift
//  Weather
//
//  Created by Luca Palmese for the Apple Developer Academy on 01/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 15) {
            // Header with location and date/time
            VStack {
                Text("San Francisco")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Tue, 09 Jan 2007 | 09:41 AM")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
            
            Divider()
                .padding(.horizontal)
            
            // Main weather info
            HStack {
                VStack {
                    ZStack {
                        Circle()
                            .fill(Color.blue.opacity(0.8))
                            .frame(width: 80, height: 80)
                        
                        Image(systemName: "sun.max.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(.yellow)
                    }
                    
                    Text("Clear")
                        .font(.headline)
                        .foregroundStyle(.gray)
                }
                
                Spacer()
                
                Text("12°C")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
            }
            .padding(.horizontal)
            
            // Additional weather details
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "wind")
                            .foregroundStyle(.gray)
                        Text("10 km/h")
                            .font(.subheadline)
                    }
                    HStack {
                        Image(systemName: "drop.fill")
                            .foregroundStyle(.blue)
                        Text("60%")
                            .font(.subheadline)
                    }
                }
                .padding(.horizontal)
                Spacer()
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "thermometer")
                            .foregroundStyle(.gray)
                        Text("Feels like 17°C")
                            .font(.subheadline)
                    }
                    HStack {
                        Image(systemName: "cloud.rain.fill")
                            .foregroundStyle(.blue)
                        Text("20% chance of rain")
                            .font(.subheadline)
                    }
                }
                .padding(.horizontal)
            }
            .padding(.top, 10)
            
        }
        .padding()
        .background(.background)
        .cornerRadius(20)
        .shadow(color: .gray.opacity(0.5), radius: 10)
        .padding(.horizontal, 20)
    }
}


#Preview {
    ContentView()
}
