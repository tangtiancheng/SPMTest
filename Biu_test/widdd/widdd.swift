//
//  widdd.swift
//  widdd
//
//  Created by 唐天成 on 2023/10/30.
//

import WidgetKit
import SwiftUI
import Intents
import ClockRotationEffect
import ClockHandRotationKit



//import TPpa


struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
}

struct widddEntryView : View {
    var entry: Provider.Entry

    var body: some View {
//        Text(entry.date, style: .time)
        leftScrollType1()
    }
}

struct widdd: Widget {
    let kind: String = "widdd"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            widddEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct widdd_Previews: PreviewProvider {
    static var previews: some View {
        widddEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
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


