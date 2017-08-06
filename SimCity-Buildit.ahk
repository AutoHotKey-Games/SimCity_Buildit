openMarket()
{
	CoordMode, Mouse, Window ;
	IfWinExist, NoxPlayer
	{
		WinGetPos, X, Y, W, H, NoxPlayer 
		MouseClick, left, (W/4.71), (H/2.73)
	}else{
		SoundPlay *64
		Return
	}
}
refreshMarket()
{
	CoordMode, Mouse, Window ;
	IfWinExist, NoxPlayer
	{
		WinGetPos, X, Y, W, H, NoxPlayer 
		MouseClick, left, (W/2.002), (H/1.248)
	}else{
		SoundPlay *64
		Return
	}
}
openSellPoint()
{
	CoordMode, Mouse, Window ;
	IfWinExist, NoxPlayer
	{
		WinGetPos, X, Y, W, H, NoxPlayer 
		MouseClick, left, (W/1.998), (H/1.932)
	}else{
		SoundPlay *64
		Return
	}
}
returnHome()
{
	CoordMode, Mouse, Window ;
	IfWinExist, NoxPlayer
	{
		WinGetPos, X, Y, W, H, NoxPlayer 
		MouseClick, left, (W/1.33), (H/4.19)
	}else{
		SoundPlay *64
		Return
	}
	Sleep 100
	CoordMode, Mouse, Window ;
	IfWinExist, NoxPlayer
	{
		WinGetPos, X, Y, W, H, NoxPlayer 
		MouseClick, left, (W/25.210), (H/7.187)
	}else{
		SoundPlay *64
		Return
	}
	Sleep 8000
	openMarket()
	findItem(0)
}
findItem(place)
{
	Sleep 3000
	CoordMode, Pixel, Window ;
	CoordMode, Mouse, Window ;
	IfWinExist, NoxPlayer
	{
		WinGetPos, X, Y, W, H, NoxPlayer 
		ImageSearch, PosX, PosY, (W/3.982), (H/3.100), (W/1.366), (H/1.302),*100 *TransBlack error.png
		if ErrorLevel = 2
		{
			MsgBox Could not conduct the search.
		}
		else if ErrorLevel = 1
		{
			Tooltip, ErrorboxOFF, (W/3.982), (H/3.100)
			Sleep 500
		}
		else
		{
			CoordMode, Mouse, Window ;
			IfWinExist, NoxPlayer
			{
				WinGetPos, X, Y, W, H, NoxPlayer 
				MouseClick, left, (W/1.714), (H/1.628)
				Sleep 250
				WinGetPos, X, Y, W, H, NoxPlayer 
				MouseClick, left, (W/5.752), (H/1.490)
				Sleep 30000
				WinGetPos, X, Y, W, H, NoxPlayer 
				MouseClick, left, (W/2), (H/10)
				openMarket()
				findItem(0)
			}else{
				SoundPlay *64
			}
		}
		
		WinGetPos, X, Y, W, H, NoxPlayer 
		ImageSearch, PosX, PosY, (W/3.982), (H/3.100), (W/1.366), (H/1.302),*150 *TransBlack sold.png
		if ErrorLevel = 2
		{
			MsgBox Could not conduct the search.
		}
		else if ErrorLevel = 1
		{
			Tooltip, noSoldItem, (W/3.982), (H/3.100)
			Sleep 500
		}
		else
		{
			CoordMode, Mouse, Window ;
			IfWinExist, NoxPlayer
			{
				WinGetPos, X, Y, W, H, NoxPlayer 
				MouseClick, left, (W/1.33), (H/4.19)
				Sleep 250
				WinGetPos, X, Y, W, H, NoxPlayer 
				MouseClick, left, (W/2.00), (H/1.907)
				Sleep 500
				findItem(1)
			}else{
				SoundPlay *64
			}
		}	
	
		WinGetPos, X, Y, W, H, NoxPlayer 
		ImageSearch, PosX, PosY, (W/3.982), (H/3.100), (W/1.366), (H/1.302),*100 *TransBlack bars.png
		if ErrorLevel = 2
		{
			MsgBox Could not conduct the search.
		}
		else if ErrorLevel = 1
		{
			Tooltip, No bars, (W/3.982), (H/3.100)
			Sleep 500
		}
		else
		{
			Tooltip, Bars, PosX-50, PosY-50
			MouseClick, left, PosX, PosY
			Sleep 8000
			findItem(1)
		}
		
		WinGetPos, X, Y, W, H, NoxPlayer 
		ImageSearch, PosX, PosY, (W/3.982), (H/3.100), (W/1.366), (H/1.302),*100 *TransBlack camera.png
		if ErrorLevel = 2
		{
			MsgBox Could not conduct the search.
		}
		else if ErrorLevel = 1
		{
			Tooltip, No camera, (W/3.982), (H/3.100)
			Sleep 500
		}
		else
		{
			Tooltip, Camera, PosX-50, PosY-50
			MouseClick, left, PosX, PosY
			Sleep 8000
			findItem(1)
		}
		
		WinGetPos, X, Y, W, H, NoxPlayer 
		ImageSearch, PosX, PosY, (W/3.982), (H/3.100), (W/1.366), (H/1.302),*100 lock.png
		if ErrorLevel = 2
		{
			MsgBox Could not conduct the search.
		}
		else if ErrorLevel = 1
		{
			Tooltip, No lock, (W/3.982), (H/3.100)
			Sleep 500
		}
		else
		{
			Tooltip, Lock, PosX-50, PosY-50
			MouseClick, left, PosX, PosY
			Sleep 8000
			findItem(1)
		}
		
		WinGetPos, X, Y, W, H, NoxPlayer 
		ImageSearch, PosX, PosY, (W/3.982), (H/3.100), (W/1.366), (H/1.302),*100 *TransBlack exhaust.png
		if ErrorLevel = 2
		{
			MsgBox Could not conduct the search.
		}
		else if ErrorLevel = 1
		{
			Tooltip, No exhaust, (W/3.982), (H/3.100)
			Sleep 500
		}
		else
		{
			Tooltip, Exhaust, PosX-50, PosY-50
			MouseClick, left, PosX, PosY
			Sleep 8000
			findItem(1)
		}
		
		WinGetPos, X, Y, W, H, NoxPlayer 
		ImageSearch, PosX, PosY, (W/3.982), (H/3.100), (W/1.366), (H/1.302),*100 wheel.png
		if ErrorLevel = 2
		{
			MsgBox Could not conduct the search.
		}
		else if ErrorLevel = 1
		{
			Tooltip, No wheel, (W/3.982), (H/3.100)
			Sleep 500
		}
		else
		{
			Tooltip, Wheel, PosX-50, PosY-50
			MouseClick, left, PosX, PosY
			Sleep 8000
			findItem(1)
		}
		
		WinGetPos, X, Y, W, H, NoxPlayer 
		ImageSearch, PosX, PosY, (W/3.982), (H/3.100), (W/1.366), (H/1.302),*100 *TransBlack blade.png
		if ErrorLevel = 2
		{
			MsgBox Could not conduct the search.
		}
		else if ErrorLevel = 1
		{
			Tooltip, No blade, (W/3.982), (H/3.100)
			Sleep 500
		}
		else
		{
			Tooltip, Blade, PosX-50, PosY-50
			MouseClick, left, PosX, PosY
			Sleep 8000
			findItem(1)
		}
		ToolTip
		if place = 1
		{
			returnHome()
		}
		else
		{
			loop 30
			{
			Tooltip, Sleep%A_Index%, 421, 479
			Sleep 1000
			}
			refreshMarket()
			findItem(0)
		}
	}
}
F4::
	WinMove, NoxPlayer,,,,1000,598
	CoordMode, Mouse, Window ;
	MouseClickDrag, left, 999, 597, 1000, 598, 20 
	
	IfWinActive, NoxPlayer
	{
		loop 1000
		{
			openMarket()
			findItem(0)
			Tooltip, Loopdone %A_Index%, 100, 100
			Sleep 2000
		}
	}
	Else {
		SoundPlay *64
	}
return
