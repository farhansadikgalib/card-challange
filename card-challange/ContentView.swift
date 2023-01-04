//
//  ContentView.swift
//  card-challange
//
//  Created by Farhan Sadik on 3/1/23.
//

import SwiftUI

struct ContentView: View {
  @State  var playerCard = "card3"
  @State  var cpuCard="card7"
  @State  var playerScore = 0
  @State  var cpuScore = 0
    
    var body: some View {
         
        ZStack {
            Image("background").ignoresSafeArea( )
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()

                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                .coordinateSpace(name: /*@START_MENU_TOKEN@*/CoordinateSpace.local/*@END_MENU_TOKEN@*/)

                Spacer()
 
                
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard =  "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                
                    if(playerRand>cpuRand){
                        playerScore += 1

                    }else if(playerRand==cpuRand){
                        cpuScore += 1
                        playerScore += 1

                    }
                    
                    
                    else{
                        cpuScore += 1

                    }
                    
                    
                },
                    label:{
                    Image("dealbutton")
                })
                
                
                Spacer()

                HStack{
                    Spacer()

                    VStack{
                        Text("Player")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.top, 5.0)
                    }
                    
                    Spacer()

                    
                    VStack{
                        Text("Computer")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 5.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .lineLimit(nil)
                    }
                    Spacer()

                }
                Spacer()

                
            }
            

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
