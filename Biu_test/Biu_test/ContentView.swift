//
//  ContentView.swift
//  Biu_test
//
//  Created by 唐天成 on 2023/10/27.
//

import SwiftUI
//import Biu
//import BiM
//import BiT


import RxSwift
import RxCocoa
import RxRelay

import TPpa1
import TPpa2


import ClockHandRotationKit
import ClockRotationEffect




func ff() -> Bool {
    var v = TPpa1()
    v.bb1()
    return true
}


//import ClockRotationEffect

//import ClockRotationEffect

//import ClockRotationEffect
//import ClockRotationEffect


struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            var b = ff()
            var b1 = g();
//            leftScrollType1()
            ClockHandR()
        }
        .padding()
    }
    
}

struct ClockHandR: View {
    
    let size: CGSize = CGSize(width: 75, height: 75)
    
    var body: some View {
        ZStack(alignment: .center) {
            ZStack(alignment: .center){
                //Text("AAAAAAAAAAAAAAAAAA")
                    //.offset(x: 0, y: 0)
                    //.modifier(ClockRotationModifier(period: ClockRotationPeriod.custom(5), timezone: TimeZone.current, anchor: .center))
            }
            .frame(width: 250,height: 50)
            .background(Color.blue)
            //.opacity(0.5)
            .offset(x: 0, y: 0)
            .modifier(ClockRotationModifier(period: ClockRotationPeriod.custom(-5), timezone: TimeZone.current, anchor: .center))
        }
        .frame(width: 155,height: 2)
        .background(Color.yellow)
        .offset(x:0, y: 10)
        .clockHandRotationEffect(period: .custom(-30 / 2))
    }
    
}
    


struct leftScrollType1: View {
    
    let size: CGSize = CGSize(width: 75, height: 75)
    
    var body: some View {
        ZStack(alignment: .center) {
            ZStack(alignment: .center){
                //Text("AAAAAAAAAAAAAAAAAA")
                    //.offset(x: 0, y: 0)
                    //.modifier(ClockRotationModifier(period: ClockRotationPeriod.custom(5), timezone: TimeZone.current, anchor: .center))
            }
            .frame(width: 250,height: 50)
            .background(Color.blue)
            //.opacity(0.5)
            .offset(x: 0, y: 0)
            .modifier(ClockRotationModifier(period: ClockRotationPeriod.custom(-5), timezone: TimeZone.current, anchor: .center))
        }
        .frame(width: 155,height: 2)
        .background(Color.yellow)
        .offset(x:0, y: 10)
        .modifier(ClockRotationModifier(period: ClockRotationPeriod.custom(5), timezone: TimeZone.current, anchor: .center))
    }
    
}






func g()->Bool {
    
  
    
    TPpa11().bb11()
    
    
    
    let observable = Observable<Double>.create { observer in

        observer.onNext(1)
        observer.onNext(2)
        observer.onCompleted()
        return Disposables.create()

    }

//        observable.bind(to: label.rx.text)
    print(123)

    observable.subscribe { event in
        switch event {
        case .next(let element):
            print("next1",element)
        case .error(let error):
            print("error1",error)
        case .completed:
            print("complete1")
        }
    }
//        .dispose()
    
    
    print(234)
    observable.subscribe { event in
        switch event {
        case .next(let element):
            print("next2",element)
        case .error(let error):
            print("error2",error)
        case .completed:
            print("complete2")
        }

    }
    
    return true
//        .dispose()

}

//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
