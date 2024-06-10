import SwiftUI
import Charts

struct RadarChartViewWrapper: UIViewRepresentable {
    var entries: [RadarChartDataEntry]

    func makeUIView(context: Context) -> RadarChartView {
        let radarChartView = RadarChartView()
        return radarChartView
    }

    func updateUIView(_ uiView: RadarChartView, context: Context) {
        let dataSet = RadarChartDataSet(entries: entries, label: "Sales Data")
        dataSet.colors = [.blue]
        dataSet.valueColors = [.black]

        let data = RadarChartData(dataSet: dataSet)
        uiView.data = data

        uiView.chartDescription.text = "Monthly Sales"
        uiView.animate(xAxisDuration: 1.5)
    }
}
