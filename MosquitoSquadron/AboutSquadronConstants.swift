//
//  AboutSquadronConstants.swift
//  MosquitoSquadron
//
//  Created by Eric Wei on 2017-04-08.
//  Copyright © 2017 EricWei. All rights reserved.
//

import Foundation

class AboutSquadronConstants: NSObject {
    
    let ActivityNames = ["Friday night training","Aviation","Sports","Band","Drill","Trips"]
    
    let ActivityDetails = ["\tAs with all Air Cadet squadrons, 180 Sqn operates a standardized weekly training program on Friday nights. The training is designed as a five-year program. Cadets will learn a wide variety of aviation, cadet and military-related subjects. Older cadets may combine the first two training years into one, at the discretion of the training officer. It is mandatory for all cadets to attend these training nights.Cadets also have the opportunity to branch off into their particular areas of interest by joining relevant squadron teams, groups or summer courses. In addition to the training, older and more senior cadets may instruct the subjects to newer cadets and take on other jobs and responsibilities in the Sqn.",
                           "\tCadets interested in aviation are encouraged to take 180 Squadron’s Pilot Ground School course (PGS). This course is mandatory for cadets applying for the Glider or Power Pilot Scholarships, and covers a wide range of aviation-topics geared towards passing the Flying Scholarship qualifying exam. The course takes place on Tuesday nights at Glenview from 18:30 to 21:30, from September to December. In addition to the Tuesday nights, cadets will have a chance to go to a commercial CF-18 combat simulator and have a 30 minute flight over Toronto in a Cessna (dependent on class size).Cadets wishing to attend this course must be at least 14 years old as of the first class.\n\n\t\tThe Squadron normally has four gliding sessions during the training year. These are open to all cadets in the Sqn, with priority for new cadets, and those who have never gone gliding. Held at the Central Ontario Gliding Centre (COGC) at Canadian Forces Base (CFB) Borden, cadets have the chance for a ride with a qualified pilot in Schweizer SGS 2-33A gliders or Bellanca Scout towplanes.",
                           "\tCadets from 180 Sqn are all free to join the Monday night sports program. On Monday nights, from 18:30 to 21:00 at Glenview, cadets will play basketball, volleyball, floor hockey, European handball, soccer, and more.\n\n\tThere are several competitions during the year that cadets can take part in. The Toronto Air Group Sports Competition is the largest, spanning a weekend in the spring, where 180 Sqn competes against others from around the Greater Toronto Area in a variety of sports. Other events include the Durham Sports Competition, the Toronto Air Group Swim Competition and the 856 Sqn Soccer Competition.",
                           "\t180 Sqn is unique in having one of the few Drum and Bugle style marching bands, as opposed to the more common brass and reed or pipe and drum bands. Cadets play three-valved bugles and marching drums to perform drum-corps style routines at competitions, and act as a service band for 180 Sqn during parades. The band accepts cadets of all musical levels in the early part of the training year, and trains them weekly in preparation for the band competitions. Cadets normally practice on Saturdays and sometimes on extra days as necessary.The band competes in a Toronto-area competition and, if successful, in a provincial cadet competition.",
                           "\t180's Drill Team is one of the best in the province, consistently winning the Top in Ontario award. Usually made up of senior cadets, the team practices hard on Saturday mornings.\n\n\t\t180's Drill Team with Arms, commonly known as the Rifle Drill Team, performs it's routines using World War 2 era Lee-Enfield rifles, and is one of the few Air Cadet drill teams that uses them.",
                           "- Gliding Trips\n - Borden Excursions (abseiling, obstacle course, air rifle shooting)\n - Survival Weekends\n - Winter Weekend (high ropes, sledding, games)\n - Canoe Weekend\n - Sports events and competitions\n - Band and Drill events and competitions\n - Event Volunteering (such as the Toronto Marathon)\n - Fundraising (Squadron and Royal Canadian Legion initiatives)\n \tThe week-long March Break trips normally take 180 Sqn to the eastern United States, where cadets stay on, and tour military facilities. As well, the Sqn will normally tour a major city and visit museums and other attractions. The cost for this trip is usually $350, and a coach-load of cadets are selected on the basis of attendance and performance in the Sqn." ]
    
    static var sharedInstance = AboutSquadronConstants()
    
    class func sharedDataSource() -> AboutSquadronConstants {
        return sharedInstance
    }
}
