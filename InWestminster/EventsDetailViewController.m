//
//  EventsDetailViewController.m
//  InWestminster
//
//  Created by leihe on 14/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import "EventsDetailViewController.h"

@interface EventsDetailViewController ()

@end

@implementation EventsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [_facebookBtn setBackgroundImage:[UIImage imageNamed:@"facebook.png"] forState:UIControlStateNormal];
    [_mapBtn setBackgroundImage:[UIImage imageNamed:@"map.png"] forState:UIControlStateNormal];
    
    _titleTextView.text=_EventsDetailModal[0];
    _dateLabel.text=_EventsDetailModal[1];
    _timeLabel.text=_EventsDetailModal[2];
    _detailImage.image=[UIImage imageNamed:_EventsDetailModal[3]];
    self.navigationItem.title=_EventsDetailModal[0];
    
    _titleTextView.hidden=YES;
    
    if ([_titleTextView.text isEqualToString:@"Christine Douglass and Nina Mangalanayagam"]) {
        locationTextView.text = @"Watford Road, Northwick Park, Middlesex HA1 3TP";
        descriptionTextView.text=@"The CREAM doctoral programme at the University of   Westminster hosts a thriving international community of researchers exploring issues in art and design, film, photography, moving image, ceramics, cultural studies, art and technology/science, and music. London Gallery West is delighted to host two exhibitions by Westminster doctoral candidates that form part of their practice-based PhD submissions.";
        admissionLabel.text=@"Free";
        phoneTextView.text=@"020 7911 5000";
        websiteTextView.text=@"http://www.westminster.ac.uk";
        
    }
    if ([_titleTextView.text isEqualToString:@"Interior Architecture BA Honours exhibition at Interior Educators at Free Range"]) {
        locationTextView.text = @"The Old Truman Brewery, Brick Lane";
        descriptionTextView.text=@"Recently graduating students from the University of Westminster’s Interior Architecture BA Honours course will be exhibiting their work as part of Interior Educators at Free Range 9-13 July 2015: The Old Truman Brewery, Brick Lane, East London.";
        admissionLabel.text=@"Free";
        phoneTextView.text=@"020 7952 6000";
        websiteTextView.text=@"http://www.westminster.ac.uk";
        
    }
    
    if ([_titleTextView.text isEqualToString:@"EASTmedicine Summer School 2015"]) {
        locationTextView.text = @"Watford Road, Northwick Park, Middlesex HA1 3TP";
        descriptionTextView.text=@"Following the success of previous events, we are pleased to announce the third EASTmedicine Summer School. We offer you: seven days of research-based and clinically oriented seminars and practical workshops; teaching by leading academics and experienced clinicians in the field of Chinese and East Asian medicines. Topics addressed include: treating chronic pain; traumatic injuries; electro-acupuncture; self-cultivation (yang sheng); blood in the history of Chinese medicine";
        admissionLabel.text=@"Free";
        phoneTextView.text=@"020 7911 6574";
        websiteTextView.text=@"http://www.westminster.ac.uk";
        
    }
    
    if ([_titleTextView.text isEqualToString:@"Comparing Children’s Media Around the World: Policies, Texts and Audiences"]) {
        locationTextView.text = @"35 Marylebone Road, London NW1 5LS";
        descriptionTextView.text=@"Where in the world are children best served by media available to them, and who judges the meaning of ‘best’? It is now 20 years since advocates from around the world agreed the first Children’s Television Charter calling for adequately funded, well produced content that both affirms children’s sense of self, community and place and promotes their appreciation of other cultures. In today’s multiplatform environment, where children’s use of individualised social media challenges the status of professional players, and the expansion of US and other transnational networks fuels concerns about the viability of domestic production, the same calls for quality, representation and diversity persist. That much was clear at the 7th World Summit on Media for Children in Malaysia in 2014.";
        admissionLabel.text=@"Free";
        phoneTextView.text=@"020 7965 3066";
        websiteTextView.text=@"http://www.westminster.ac.uk";
        
    }

    if ([_titleTextView.text isEqualToString:@"New perspectives in assessment in translation training: bridging the gap between academic and professional assessment"]) {
        locationTextView.text = @"309 Regent Street, London W1B 2HW";
        descriptionTextView.text=@"The CREAM doctoral programme at the University of   Westminster hosts a thriving international community of researchers exploring issues in art and design, film, photography, moving image, ceramics, cultural studies, art and technology/science, and music. London Gallery West is delighted to host two exhibitions by Westminster doctoral candidates that form part of their practice-based PhD submissions.";
        admissionLabel.text=@"Free";
        phoneTextView.text=@"020 7865 9275";
        websiteTextView.text=@"http://www.westminster.ac.uk";
        
    }
    if ([_titleTextView.text isEqualToString:@"Graham Murdock – The Political Economy of Crisis and the Crisis of Political Economy: The Challenge of Sustainability"]) {
        locationTextView.text = @"309 Regent Street, London W1B 2HW";
        descriptionTextView.text=@"Image by Salvatore Barbera from Amsterdam, The Netherlands (Stop Global Warming) .Recent developments in the organisation of capitalism have given renewed urgency to critical political economy’s core concern with the shifting relations between capital, state and civil society and placed issues around communications and culture at the centre of debate. Successive responses to the crisis of capitalism in the 1970s and the 2008 financial crisis have extended marketization, consolidated corporate control over public culture, displaced and casualised labour, escalated product promotion, placed consumption fuelled by personal debt at the centre of models of growth, and generated rapidly widening inequalities in access and agency.";
        admissionLabel.text=@"Free";
        phoneTextView.text=@"020 7911 8734";
        websiteTextView.text=@"http://www.westminster.ac.uk";
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendFacebookText:(id)sender {
    SLComposeViewController *sendText=[SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    [sendText setInitialText:@"Let's go to this event together! It would be great fun!"];
    [self presentViewController:sendText animated:YES completion:nil];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
