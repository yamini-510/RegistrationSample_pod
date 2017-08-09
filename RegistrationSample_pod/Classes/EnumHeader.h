//
//  EnumHeader.h
//  LoginSample
//
//  Created by Thrymr on 08/08/17.
//  Copyright © 2017 Thrymr. All rights reserved.
//

#ifndef EnumHeader_h
#define EnumHeader_h

#define IPHONE_4_SCREEN_HEIGHT 480
#define IPHONE_4_SCREEN_WIDTH 320

#define IPHONE_5_SCREEN_HEIGHT 568 //5S,SE
#define IPHONE_6_SCREEN_HEIGHT 667     //6S, 7
#define IPHONE_6PLUS_SCREEN_HEIGHT 736 // 6s Plus, 7 Plus

#define IPHONE_5_SCREEN_WIDTH  320 //5S,SE
#define IPHONE_6_SCREEN_WIDTH 375   //6S, 7
#define IPHONE_6PLUS_SCREEN_WIDTH 414 // 6s Plus, 7 Plus

typedef enum kindOfObject
{
    EmailField,
    PasswordField,
    PhoneNumber,
    DateOfBirthField,
    
}kindOfObjectMethodNames;

#endif /* EnumHeader_h */
