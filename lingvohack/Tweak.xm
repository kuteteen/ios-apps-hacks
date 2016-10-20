
%hook CPurchaseInfoItem

-(bool)isFree 
{
	return TRUE;
}

-(void) setIsFree:(bool)arg1
{
	%orig(TRUE);
}

-(int)promotion 
{
	return 0;
}

-(void) setPromotion:(int)arg1
{
	%orig(0);
}

-(id) defaultPrice 
{
	return nil;
}

-(void) setDefaultPrice:(id)arg1
{
	%orig(nil);
}

-(id) price 
{
	return nil;
}

-(void) setPrice:(id)arg1
{
	%orig(nil);
}

%end