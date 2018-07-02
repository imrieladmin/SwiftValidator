//
//  EmailValidation.swift
//
//  Created by Jeff Potter on 11/11/14.
//  Copyright (c) 2015 jpotts18. All rights reserved.
//

import Foundation

/**
 `EmailRule` is a subclass of RegexRule that defines how a email is validated.
 */
public class EmailRule: RegexRule {
    
    /// Regular express string to be used in validation.
    static let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
    
    /**
     Initializes an `EmailRule` object to validate an email field.
     
     - parameter message: String of error message.
     - returns: An initialized object, or nil if an object could not be created for some reason that would not result in an exception.
     */
    public convenience init(message : String = "Must be a valid email address"){
        self.init(regex: EmailRule.regex, message: message)
    }
}

public class WebsiteRule: RegexRule {
    
    /// Regular express string to be used in validation.
    static let regex = “(((http|https|ftp|Ftp|SMTP|smtp|Http|Https)?)://)?(([\\w\\!\\@\\#\\$\\%\\^\\&\\*\\(\\)\\-\\+\\=\\(\\)\\[\\]\\{\\}\\?\\<\\>])*)+([\\.|/](([\\w\\!\\@\\#\\$\\%\\^\\&\\*\\(\\)\\-\\+\\=\\(\\)\\[\\]\\{\\}\\?\\<\\>])+))+”

    
    /**
     Initializes an `Website` object to validate an Website field.
     
     - parameter message: String of error message.
     - returns: An initialized object, or nil if an object could not be created for some reason that would not result in an exception.
     */
    public convenience init(message : String = "Must be a valid website url"){
        self.init(regex: WebsiteRule.regex, message: message)
    }
}

public class GoogleRule: RegexRule {
    
    /// Regular express string to be used in validation.
    
    static let regex = "((http|https|Http|Https)://(plus.google.com)(/[A-Z0-9a-z._?%+-]))([\\.|/]((\\w)*|([0-9]*)|([A-Z0-9a-z._%+-]*)|([-|_])*))*"

    /**
     Initializes an `Google` object to validate an Google field.
     
     - parameter message: String of error message.
     - returns: An initialized object, or nil if an object could not be created for some reason that would not result in an exception.
     */
    public convenience init(message : String = "Must be a valid Google Plus url"){
        self.init(regex: GoogleRule.regex, message: message)
    }
}

public class FacebookRule: RegexRule {
    
    /// Regular express string to be used in validation.
    static let regex = ".+www.(facebook.com|m.facebook.com|m.fb.com)(/[A-Z0-9a-z._?%+-]+)(([\\.|/]((\\w)*|([0-9]*)|([A-Z0-9a-z._?%+-]*)|([-|_])*))+)?"

    /**
     Initializes an `Facebook` object to validate an Google field.
     
     - parameter message: String of error message.
     - returns: An initialized object, or nil if an object could not be created for some reason that would not result in an exception.
     */
    public convenience init(message : String = "Must be a valid Facebook url"){
        self.init(regex: FacebookRule.regex, message: message)
    }
}

public class TwitterRule: RegexRule {
    
    /// Regular express string to be used in validation.
    static let regex = "(?:https?://)?(?:www.)?twitter.com/([a-zA-Z0-9_@]+)"
    
    /**
     Initializes an `Twitter` object to validate an Google field.
     
     - parameter message: String of error message.
     - returns: An initialized object, or nil if an object could not be created for some reason that would not result in an exception.
     */
    public convenience init(message : String = "Must be a valid Twitter url"){
        self.init(regex: TwitterRule.regex, message: message)
    }
}
public class LinkedInRule: RegexRule {
    
    /// Regular express string to be used in validation.
    static let regex = "(?:https?://)?(?:[a-zA-Z]+.)?(?:www.)?linkedin.com/([a-zA-Z0-9_]+([\\.|/]((\\w)*|([0-9]*)|([-|_])*))+)"

    /**
     Initializes an `LinkedIn` object to validate an Google field.
     
     - parameter message: String of error message.
     - returns: An initialized object, or nil if an object could not be created for some reason that would not result in an exception.
     */
    public convenience init(message : String = "Must be a valid LinkedIn url"){
        self.init(regex: LinkedInRule.regex, message: message)
    }
}



