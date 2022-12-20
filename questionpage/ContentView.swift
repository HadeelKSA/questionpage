//
//  ContentView.swift
//  questionpage
//
//  Created by Hadeel Alturaier on 14/05/1444 AH.
//

import SwiftUI

struct GameView: View {
    
    @Binding var showBox1: Bool
   
//    func buttonPressed(){
//        print ("button pressed")
//    }
  
    var body: some View {
        ZStack{
            Image("ship")
                .resizable()
                .frame(width: 1200, height: 840)
                //.aspectRatio(UIImage(named: "ship")!.size, contentMode: .fill)
            VStack(alignment: .center) {
                
                
                Text("Mercury has no")
                    .foregroundColor(.white)
                    .font(Font.custom( "SFNSRounded.ttf", size: 72))
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                Spacer()

//HStack{
//
//
//    Button (action:{buttonPressed() }){
//
//        Image ("answer1")
//        .resizable()
//        .frame(width: 300, height: 250)
//        .padding()
//    }
//
//    Button (action:{buttonPressed() }){
//
//        Image ("answer2")
//        .resizable()
//        .frame(width: 300, height: 250)
//        .padding()
//    }
//
//    Button (action:{buttonPressed() }){
//
//        Image ("answer3")
//        .resizable()
//        .frame(width: 300, height: 250)
//        .padding()
//    }
//}
                
            }
            .padding(.top, 170.0)



        }
        

        
    }
}
struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView: View {

    @State var showBox1 = false
    @State var showBox2 = false
    @State var showBox3 = false
    
    @State var bg = false
    
    @State var close : Bool = false
    
    @State var showDetails = false
    
    var body: some View {
        ZStack {
            ZStack {
                GameView(showBox1: self.$showBox1)
                //                Button(action: {
                //                    withAnimation {
                //                        self.showBox.toggle()
                //                    }
                //
                
                //    }, label: {  })
                
                
                if(bg == true){
                    Image("B.G")
                        .resizable()
                        .frame(width: 1246, height: 872)
                }
                
                HStack{
                    
                Button(action: {
                    
                    withAnimation {
                        self.showBox1.toggle()
                        self.showBox2 = false
                        self.showBox3 = false
                        
                        if(showBox1 == true){
                            self.bg = true

                        }else {
                            self.bg = false
                        }
                        

                        
                    }
                }, label: {
                    HStack{
                        //1
                        VStack{
                            Image ("answer1")
                                .resizable()
                                .frame(width: 300, height: 250)
                                .padding()
                            if self.showBox1 {
                                VStack {
                                    Spacer()
                                    
                                    Spacer()
                                    ZStack(alignment: .center){Image ("box")
                                            .resizable()
                                            .frame(width: 500, height: 350)
                                            .padding()
                                        VStack{Text("Mission completed")
                                                .foregroundColor(.white)
                                                .font(Font.custom( "SFNSRounded.ttf", size: 42))
                                                .fontWeight(.black)
                                                .multilineTextAlignment(.center)
                                            
                                        }}
                                    Spacer()
                                }
                            }
                        }
                    }
                })
                
                
                //2
                    
                Button(action: {
                    withAnimation {
                        self.showBox2.toggle()
                        self.showBox1 = false
                        self.showBox3 = false
                        if(showBox2 == true){
                            self.bg = true

                        }else {
                            self.bg = false
                        }

                    }
                }, label: {
                    HStack{
                        
                        
                        VStack{
                            Image ("answer2")
                                .resizable()
                                .frame(width: 300, height: 250)
                                .padding()
                            if self.showBox2 {
                                VStack {
                                    Spacer()
                                    
                                    Spacer()
                                    ZStack(alignment: .center){Image ("box")
                                            .resizable()
                                            .frame(width: 500, height: 350)
                                            .padding()
                                        Text("Mission incomplete")
                                            .foregroundColor(.white)
                                            .font(Font.custom( "SFNSRounded.ttf", size: 45))
                                            .fontWeight(.black)
                                            .multilineTextAlignment(.center)
                                          
                                           
                                        
                                        
                                        
                                        Spacer()
                                    }
                                    Spacer()
                                }
                            }
                        }}
                })
                
                //3
                Button(action: {
                    withAnimation {
                        self.showBox3.toggle()
                        self.showBox1 = false
                        self.showBox2 = false
                        if(showBox3 == true){
                            self.bg = true

                        }else {
                            self.bg = false
                        }
                        
                    }
                    
                }, label: {
                    HStack{
                        
                        VStack{
                            Image ("answer3")
                                .resizable()
                                .frame(width: 300, height: 250)
                                .padding()
                            
                            if self.showBox3 {
                                VStack {
                                    Spacer()
                                    
                                    Spacer()
                                    ZStack(alignment: .center)
                                    {
//                                        
                                        Image("box")
                                            .resizable()
                                            .frame(width: 500, height: 350)
                                            .padding()
                                        Text("Mission incomplete")
                                            .foregroundColor(.white)
                                            .font(Font.custom( "SFNSRounded.ttf", size: 42))
                                            .fontWeight(.black)
                                            .multilineTextAlignment(.center)
                                        
                                        
                                        
                                        Spacer()
                                    }
                                    Spacer()
                                }
                            }
                        }
                        
                    }//////h
                    
                    
                }
                       
                )
            }//////hhhhhh
                ///////////////////////////////////////////////////
                ///
                ///
                ///
                ///
                ///
                ///
            }

        }
    }

}


