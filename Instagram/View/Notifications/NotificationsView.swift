//
//  NotificationsView.swift
//  Instagram
//
//  Created by Felipe Vallejo on 2/8/21.
//

import SwiftUI

struct NotificationsView: View {
    
    @ObservedObject var viewModel = NotificationsViewModel()
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 20) {
                ForEach(viewModel.notifications) { notification in
                    NotificationCell(viewModel: NotificationCellViewModel(notification: notification))
                        .padding(.top)
                }
            }
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
