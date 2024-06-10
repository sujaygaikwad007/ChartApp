
import SwiftUI
import Charts

struct BarChart: View {
    var entries: [BarChartDataEntry]
    
    var body: some View {
        ChartView(entries: entries) { dataSet in
            BarChartView(dataSet: dataSet)
        }
    }
}

struct LineChart: View {
    var entries: [ChartDataEntry]
    
    var body: some View {
        ChartView(entries: entries) { dataSet in
            LineChartView(dataSet: dataSet)
        }
    }
}
