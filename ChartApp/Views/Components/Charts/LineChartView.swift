import SwiftUI
import Charts

struct LineChartViewWrapper: UIViewRepresentable {
    var entries: [ChartDataEntry]

    func makeUIView(context: Context) -> LineChartView {
        let lineChartView = LineChartView()
        return lineChartView
    }

    func updateUIView(_ uiView: LineChartView, context: Context) {
        let dataSet = LineChartDataSet(entries: entries, label: "Sales Data")
        dataSet.colors = [.blue] // Customize line color
        dataSet.valueColors = [.black] // Customize value colors

        let data = LineChartData(dataSet: dataSet)
        uiView.data = data

        uiView.chartDescription.text = "Monthly Sales"
        uiView.xAxis.labelPosition = .bottom
        uiView.rightAxis.enabled = false
        uiView.animate(xAxisDuration: 1.5)
    }
}
