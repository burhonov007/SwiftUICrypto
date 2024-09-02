//
//  CoinRowView.swift
//  SwiftUICrypto
//
//  Created by itserviceimac on 02/09/24.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: Coin
    let showHoldingsColumn: Bool
    
    var body: some View {
        HStack {
            leftColumn
            Spacer()
            if showHoldingsColumn {
                centerColumn
            }
            rightColumn
        }
        .font(.subheadline )
    }
}

#Preview {
    CoinRowView(coin: Coin.example, showHoldingsColumn: true)
        .previewLayout(.sizeThatFits)
}


extension CoinRowView {
    
    private var leftColumn: some View {
        HStack(spacing: 0) {
            Text(String(coin.rank))
                .font(.caption)
                .foregroundColor(.secondaryText)
                .frame(minWidth: 30)
            Circle()
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .foregroundColor(.accent)
                .padding(.leading, 6)
        }
    }
    
    private var centerColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentHoldingsValue.asCurrencyWith6Decimals())
                .bold()
            Text(coin.currentHoldings?.asNumberString() ?? "" )
        }
        .foregroundColor(.accent)
    }
    
    
    private var rightColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentPrice.asCurrencyWith6Decimals())
                .bold()
                .foregroundColor(.accent)
            Text(coin.priceChangePercentage24H?.asPercentString() ?? "" )
                .foregroundColor(
                    (coin.priceChangePercentage24H ?? 0) >= 0 ? .myGreen : .myRed
                )
        }
        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
    }
    
}
