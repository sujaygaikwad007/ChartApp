import SwiftUI


struct PickerView: View {
    @Binding var selectedChartType: ChartType

    var body: some View {
        VStack {
            Picker("Chart Type", selection: $selectedChartType) {
                ForEach(ChartType.allCases, id: \.self) { chartType in
                    Text(chartType.rawValue.capitalized)
                }
            }
            .pickerStyle(DefaultPickerStyle())
            .padding()
        }
       
    }
}
