//
//  PieChartRow.swift
//  ChartView
//
//  Created by Declan Glover on 2020. 06. 01..
//

import SwiftUI

public struct PieChartRow : View {
    var data: [(value: Double, color: Color)]
    var backgroundColor: Color
    var accentColor: Color
    var pieSlices: [pieSection] {
        var tempSlices:[pieSection] = []
        var lastEndDeg:Double = 0
        let values = data.map { $0.value }
        let maxValue = values.reduce(0, +)
        for slice in data {
            let normalized:Double = Double(slice.value)/Double(maxValue)
            let startDeg = lastEndDeg
            let endDeg = lastEndDeg + (normalized * 360)
            lastEndDeg = endDeg
            tempSlices.append(pieSection(startDeg: startDeg, endDeg: endDeg, value: slice.value, normalizedValue: normalized, color: slice.color))
        }
        return tempSlices
    }
    public var body: some View {
        GeometryReader { geometry in
            ZStack{
                ForEach(Array(self.pieSlices.enumerated()), id: \.offset) { i in
                    PieCellCreation(rect: geometry.frame(in: .local), startDeg: self.pieSlices[i.offset].startDeg, endDeg: self.pieSlices[i.offset].endDeg, index: i.offset, backgroundColor: self.backgroundColor,accentColor: self.pieSlices[i.offset].color)
                }
            }
        }
    }
}

struct PieChartRow_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
