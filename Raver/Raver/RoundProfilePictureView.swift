//
//  RoundProfilePictureView.swift
//  Raver
//
//  Created by Ottavio Buonomo on 15.09.22.
//

import SwiftUI

struct RoundProfilePictureView: View {
    
    var photo: Image
    var height: CGFloat
    var width: CGFloat
    fileprivate func profilePictureWithFrame(for Photo:Image) -> some View {
        return Photo
            .resizable()
            .frame(width: width, height: height)
            .clipShape(Circle())
            .overlay(Circle().stroke(.indigo, lineWidth: 2.0))
            .shadow(radius: 10)
        
    }
    
    var body: some View {
        profilePictureWithFrame(for: photo)
    }
}

struct RoundProfilePictureView_Previews: PreviewProvider {
    static var previews: some View {
        RoundProfilePictureView(photo: Image("profilePicture1"), height: 200, width: 200)
    }
}
