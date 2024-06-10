import SwiftUI
import Charts

struct CandleStickChartViewWrapper: UIViewRepresentable {
    var entries: [CandleChartDataEntry]

    func makeUIView(context: Context) -> CandleStickChartView {
        let candleStickChartView = CandleStickChartView()
        return candleStickChartView
    }

    func updateUIView(_ uiView: CandleStickChartView, context: Context) {
        let dataSet = CandleChartDataSet(entries: entries, label: "Sales Data")
        dataSet.colors = [.blue]
        dataSet.valueColors = [.black]

        let data = CandleChartData(dataSet: dataSet)
        uiView.data = data

        uiView.chartDescription.text = "Monthly Sales"
        uiView.animate(xAxisDuration: 1.5)
    }
}
