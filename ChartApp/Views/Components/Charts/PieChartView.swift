import SwiftUI
import Charts

struct PieChartViewWrapper: UIViewRepresentable {
    var entries: [PieChartDataEntry]

    func makeUIView(context: Context) -> PieChartView {
        let pieChartView = PieChartView()
        return pieChartView
    }

    func updateUIView(_ uiView: PieChartView, context: Context) {
        let dataSet = PieChartDataSet(entries: entries, label: "Sales Data")
        dataSet.colors = [.blue, .red, .green, .orange, .purple, .cyan]
        dataSet.valueColors = [.black]

        let data = PieChartData(dataSet: dataSet)
        uiView.data = data

        uiView.chartDescription.text = "Monthly Sales"
        uiView.animate(yAxisDuration: 1.5)
    }
}
