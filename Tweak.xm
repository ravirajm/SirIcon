%subclass SiriIcon : SBApplicationIcon

- (void)launch
{
	if ([%c(SBAssistantController) supportedAndEnabled]) {
		[[UIApplication sharedApplication] activateAssistantWithOptions:nil withCompletion:nil];
	} else {
		UIAlertView *_assistantDisabled = [[UIAlertView alloc] initWithTitle:@"Assistant not enabled" message:@"Please enable Siri from Settings to use this." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
		[_assistantDisabled show];
		[_assistantDisabled release];
	}
}

%end
