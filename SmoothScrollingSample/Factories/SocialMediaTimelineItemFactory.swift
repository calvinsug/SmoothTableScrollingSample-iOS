//
//  SocialMediaTimelineItemFactory.swift
//  SmoothScrollingSample
//
//  Created by Ricardo Pramana Suranta on 5/18/17.
//  Copyright © 2017 Ricardo Pramana Suranta. All rights reserved.
//

import Foundation

final class SocialMediaTimelineItemFactory {
	
	static let shared = SocialMediaTimelineItemFactory()
	
	private var items = [SocialMediaTimelineItem]()
	
	func getTimelineItems() -> [SocialMediaTimelineItem] {
		
		if items.isEmpty {
			generateItems()
		}
		
		return items
	}
	
	private func generateItems() {
		
		let users: [SocialMediaUser] = [
			SocialMediaUser(
				name: "Nick Fury",
				avatarURL: URL(string: "https://68.media.tumblr.com/avatar_af2fd2579390_128.png")
			),
			SocialMediaUser(
				name: "Iron Man",
				avatarURL: URL(string: "https://cdn4.iconfinder.com/data/icons/superheroes/512/ironman-128.png")
			),
			SocialMediaUser(
				name: "Captain America",
				avatarURL: URL(string: "https://68.media.tumblr.com/avatar_f315e8aa100c_128.png")
			),
			SocialMediaUser(
				name: "Thor Odinson",
				avatarURL: URL(string: "https://68.media.tumblr.com/avatar_63e6969c7be6_128.png")
			),
			SocialMediaUser(
				name: "Hulk",
				avatarURL: URL(string: "http://68.media.tumblr.com/avatar_1842304e4726_128.png")
			),
			SocialMediaUser(
				name: "Black Widow",
				avatarURL: URL(string: "https://68.media.tumblr.com/avatar_a54cf132f9a2_128.png")
			),
			SocialMediaUser(
				name: "Hawkeye",
				avatarURL: URL(string: "https://68.media.tumblr.com/avatar_7b43e7170bc6_128.png")
			)
		]
		
		
		let texts: [String] = [

			"There was an idea... to bring together a group of remarkable people. To make them work together when we needed them to, to fight the battles that... we never could. Phil Coulson died still believing in that idea. In heroes.",
			
			"We have a Hulk.",
			
			"I understood that reference.",
			
			"Have care of how you speak. Loki is beyond reason but he is of Asgard. And he is my brother.\n\n\n\n\n...He's adopted.",
			
			"HULK SMASH!!!",
			
			"This is just like Budapest, huh?",
			
			"You and I remember Budapest very differently."
		]
		
		let imageURLs: [URL?] = [
			URL(string: "https://www.seeklogo.net/wp-content/uploads/2016/07/avengers-logo.png"),
			nil,
			nil,
			nil,
			URL(string: "http://garenglazier.com/wp-content/uploads/2015/05/Hulk-Smash.jpg"),
			nil,
			nil
		]
		
		let timelineItems = users.enumerated().map { (index: Int, user: SocialMediaUser) -> SocialMediaTimelineItem in
			
			return SocialMediaTimelineItem(
				user: user,
				text: texts[index],
				imageURL: imageURLs[index]
			)
		}
		
		let repeatedTimelineItems: [[SocialMediaTimelineItem]] = Array(repeating: timelineItems, count: 5)
		
		self.items = repeatedTimelineItems.flatMap { $0 }
	}
	
}
