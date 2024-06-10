import SwiftUI
import Charts

struct HomeView: View {
    @State private var selectedChartType: ChartType = .barChart

    var body: some View {
        VStack {
            Text("Monthly Sales")
                .font(.title)
                .padding()

            PickerView(selectedChartType: $selectedChartType)

            if selectedChartType == .barChart {
                BarChartViewWrapper(entries: [
                    BarChartDataEntry(x: 0, y: 200),
                    BarChartDataEntry(x: 1, y: 300),
                    BarChartDataEntry(x: 2, y: 250),
                    BarChartDataEntry(x: 3, y: 400),
                    BarChartDataEntry(x: 4, y: 350),
                    BarChartDataEntry(x: 5, y: 450)
                ])
                .frame(height: 300)
                .padding()
            } else if selectedChartType == .lineChart {
                LineChartViewWrapper(entries: [
                    ChartDataEntry(x: 0, y: 200),
                    ChartDataEntry(x: 1, y: 300),
                    ChartDataEntry(x: 2, y: 250),
                    ChartDataEntry(x: 3, y: 400),
                    ChartDataEntry(x: 4, y: 350),
                    ChartDataEntry(x: 5, y: 450)
                ])
                .frame(height: 300)
                .padding()
            } else if selectedChartType == .pieChart {
                PieChartViewWrapper(entries: [
                    PieChartDataEntry(value: 200, label: "January"),
                    PieChartDataEntry(value: 300, label: "February"),
                    PieChartDataEntry(value: 250, label: "March"),
                    PieChartDataEntry(value: 400, label: "April"),
                    PieChartDataEntry(value: 350, label: "May"),
                    PieChartDataEntry(value: 450, label: "June")
                ])
                .frame(height: 300)
                .padding()
            } else if selectedChartType == .scatterChart {
                ScatterChartViewWrapper(entries: [
                    ChartDataEntry(x: 0, y: 200),
                    ChartDataEntry(x: 1, y: 300),
                    ChartDataEntry(x: 2, y: 250),
                    ChartDataEntry(x: 3, y: 400),
                    ChartDataEntry(x: 4, y: 350),
                    ChartDataEntry(x: 5, y: 450)
                ])
                .frame(height: 300)
                .padding()
            } else if selectedChartType == .radarChart {
                RadarChartViewWrapper(entries: [
                    RadarChartDataEntry(value: 200),
                    RadarChartDataEntry(value: 300),
                    RadarChartDataEntry(value: 250),
                    RadarChartDataEntry(value: 400),
                    RadarChartDataEntry(value: 350),
                    RadarChartDataEntry(value: 450)
                ])
                .frame(height: 300)
                .padding()
            } else if selectedChartType == .candleStickChart {
                CandleStickChartViewWrapper(entries: [
                    CandleChartDataEntry(x: 0, shadowH: 250, shadowL: 150, open: 200, close: 220),
                    CandleChartDataEntry(x: 1, shadowH: 300, shadowL: 200, open: 250, close: 270),
                    CandleChartDataEntry(x: 2, shadowH: 280, shadowL: 230, open: 260, close: 240),
                    CandleChartDataEntry(x: 3, shadowH: 400, shadowL: 300, open: 350, close: 370),
                    CandleChartDataEntry(x: 4, shadowH: 380, shadowL: 320, open: 340, close: 360),
                    CandleChartDataEntry(x: 5, shadowH: 450, shadowL: 400, open: 430, close: 420)
                ])
                .frame(height: 300)
                .padding()
            } else if selectedChartType == .bubbleChart {
                BubbleChartViewWrapper(entries: [
                    BubbleChartDataEntry(x: 0, y: 200, size: 1.0),
                    BubbleChartDataEntry(x: 1, y: 300, size: 1.5),
                    BubbleChartDataEntry(x: 2, y: 250, size: 0.8),
                    BubbleChartDataEntry(x: 3, y: 400, size: 2.0),
                    BubbleChartDataEntry(x: 4, y: 350, size: 1.2),
                    BubbleChartDataEntry(x: 5, y: 450, size: 1.8)
                ])
                .frame(height: 300)
                .padding()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
