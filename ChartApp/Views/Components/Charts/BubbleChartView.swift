import SwiftUI
import Charts

struct BubbleChartViewWrapper: UIViewRepresentable {
    var entries: [BubbleChartDataEntry]

    func makeUIView(context: Context) -> BubbleChartView {
        let bubbleChartView = BubbleChartView()
        return bubbleChartView
    }

    func updateUIView(_ uiView: BubbleChartView, context: Context) {
        let dataSet = BubbleChartDataSet(entries: entries, label: "Sales Data")
        dataSet.colors = [.blue]
        dataSet.valueColors = [.black]

        let data = BubbleChartData(dataSet: dataSet)
        uiView.data = data

        uiView.chartDescription.text = "Monthly Sales"
        uiView.animate(xAxisDuration: 1.5)
    }
}
