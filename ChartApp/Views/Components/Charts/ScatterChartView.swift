import SwiftUI
import Charts

struct ScatterChartViewWrapper: UIViewRepresentable {
    var entries: [ChartDataEntry]

    func makeUIView(context: Context) -> ScatterChartView {
        let scatterChartView = ScatterChartView()
        return scatterChartView
    }

    func updateUIView(_ uiView: ScatterChartView, context: Context) {
        let dataSet = ScatterChartDataSet(entries: entries, label: "Sales Data")
        dataSet.colors = [.blue]
        dataSet.valueColors = [.black]

        let data = ScatterChartData(dataSet: dataSet)
        uiView.data = data

        uiView.chartDescription.text = "Monthly Sales"
        uiView.xAxis.labelPosition = .bottom
        uiView.rightAxis.enabled = false
        uiView.animate(xAxisDuration: 1.5)
    }
}
