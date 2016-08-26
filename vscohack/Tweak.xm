%hook VSNAPIResponseParser

-(id)jsonFromData:(id)data httpResponse:(id)response networkError:(id)error apiError:(id*)aError
{
	id res = %orig;
	%log(@"VSCO CAM HACKING");
	%log(response);
	// %log(@"%@", [data class]);
	// %log(@"%@", [response class]);
	return res;
}

%end