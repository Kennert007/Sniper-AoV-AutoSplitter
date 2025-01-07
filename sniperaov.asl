state("Sniper")
{
	int LoadState: "ChromeEngine2.dll", 0x000F98C, 0x0;
}
split
{
	return(
	(old.LoadState == 0 && old.LoadState != current.LoadState)
	);
}
isLoading
{
	if(current.LoadState != 0)
	{
		return true;
	}
	else
	{
		return false;
	}
}