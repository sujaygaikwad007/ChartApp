//import SwiftUI
//import Charts
//
//struct BarChartContainerView: UIViewRepresentable {
//    var entries: [BarChartDataEntry]
//
//    func makeUIView(context: Context) -> BarChartView {
//        let barChartView = BarChartView()
//        return barChartView
//    }
//
//    func updateUIView(_ uiView: BarChartView, context: Context) {
//        let dataSet = BarChartDataSet(entries: entries, label: "Sales Data")
//        dataSet.colors = [.blue, .red, .green, .orange, .purple, .cyan] // Customize bar colors
//        dataSet.valueColors = [.black] // Customize value colors
//
//        let data = BarChartData(dataSet: dataSet)
//        uiView.data = data
//
//        uiView.chartDescription.text = "Monthly Sales"
//        uiView.xAxis.labelPosition = .bottom
//        uiView.rightAxis.enabled = false
//        uiView.animate(yAxisDuration: 1.5)
//    }
//
//}
//
//
