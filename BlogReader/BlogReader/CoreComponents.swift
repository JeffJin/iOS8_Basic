////////////////////////////////////////////////////////////////////////////////
//
//  TYPHOON FRAMEWORK
//  Copyright 2013, Jasper Blues & Contributors
//  All Rights Reserved.
//
//  NOTICE: The authors permit you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

import Typhoon

public class CoreComponents: TyphoonAssembly {
    
    public dynamic func blogService() -> AnyObject {
        
        return TyphoonDefinition.withClass(BlogService.self) {
            (definition) in
            
            definition.useInitializer("initWithDefaults:") {
                (initializer) in
                
                initializer.injectParameterWith(NSUserDefaults.standardUserDefaults())
            }
        }        
    }
}
