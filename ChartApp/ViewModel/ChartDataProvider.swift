import SwiftUI
import Charts

protocol ChartDataProvider {
    associatedtype Entry
    associatedtype DataSet: RandomAccessCollection where DataSet.Element == Entry
    associatedtype Data: RandomAccessCollection where Data.Element == Entry
    
    init(data: Data)
}

struct ChartView<T: ChartDataProvider, ChartViewType: View>: View {
    var entries: [T.Entry]
    var chartView: (T) -> ChartViewType
    
    var body: some View {
        let data = entries as! T.Data
        let dataSet = T(data: data).dataSet
        return chartView(T(data: data))
            .chartDescription(ChartDescription())
            .animation(.easeInOut(duration: 1.5))
    }
}

struct BarChartData: ChartDataProvider {
    typealias Entry = BarChartDataEntry
    typealias DataSet = BarChartDataSet
    typealias Data = [Entry]

    let dataSet: DataSet
    
    init(data: Data) {
        self.dataSet = DataSet(entries: data)
    }
}

struct LineChartData: ChartDataProvider {
    typealias Entry = ChartDataEntry
    typealias DataSet = LineChartDataSet
    typealias Data = [Entry]

    let dataSet: DataSet
    
    init(data: Data) {
        self.dataSet = DataSet(entries: data)
    }
}

struct PieChartData: ChartDataProvider {
    typealias Entry = PieChartDataEntry
    typealias DataSet = PieChartDataSet
    typealias Data = [Entry]

    let dataSet: DataSet
    
    init(data: Data) {
        self.dataSet = DataSet(entries: data)
    }
}

struct ScatterChartData: ChartDataProvider {
    typealias Entry = ScatterChartDataEntry
    typealias DataSet = ScatterChartDataSet
    typealias Data = [Entry]

    let dataSet: DataSet
    
    init(data: Data) {
        self.dataSet = DataSet(entries: data)
    }
}

struct BubbleChartData: ChartDataProvider {
    typealias Entry = BubbleChartDataEntry
    typealias DataSet = BubbleChartDataSet
    typealias Data = [Entry]

    let dataSet: DataSet
    
    init(data: Data) {
        self.dataSet = DataSet(entries: data)
    }
}

struct RadarChartData: ChartDataProvider {
    typealias Entry = RadarChartDataEntry
    typealias DataSet = RadarChartDataSet
    typealias Data = [Entry]

    let dataSet: DataSet
    
    init(data: Data) {
        self.dataSet = DataSet(entries: data)
    }
}

struct CandlestickChartData: ChartDataProvider {
    typealias Entry = CandleChartDataEntry
    typealias DataSet = CandleChartDataSet
    typealias Data = [Entry]

    let dataSet: DataSet
    
    init(data: Data) {
        self.dataSet = DataSet(entries: data)
    }
}

struct HorizontalBarChartData: ChartDataProvider {
    typealias Entry = BarChartDataEntry
    typealias DataSet = BarChartDataSet
    typealias Data = [Entry]

    let dataSet: DataSet
    
    init(data: Data) {
        self.dataSet = DataSet(entries: data)
    }
}
