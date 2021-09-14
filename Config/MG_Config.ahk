MG_IniFileVersion=1.39
MG_8Dir=0
MG_ActiveAsTarget=0
MG_Interval=20
MG_AlwaysHook=0
MG_PrvntCtxtMenu=0
MG_Threshold=60
MG_LongThresholdX=800
MG_LongThresholdY=600
MG_LongThreshold=700
MG_TimeoutThreshold=12
MG_Timeout=400
MG_DGInterval=0
MG_TmReleaseTrigger=7
MG_ORangeDefault=3
MG_ORangeA=3
MG_ORangeB=3
MG_EdgeInterval=20
MG_EdgeIndiv=0
MG_CornerX=1
MG_CornerY=1
MG_DisableDefMB=0
MG_DisableDefX1B=0
MG_DisableDefX2B=0
MG_UseNavi=1
MG_UseExNavi=3
MG_NaviInterval=10
MG_NaviPersist=0
MG_ExNaviTransBG=1
MG_ExNaviFG=000000
MG_ExNaviBG=FFFFFF
MG_ExNaviTranspcy=255
MG_ExNaviSize=24
MG_ExNaviSpacing=2
MG_ExNaviPadding=4
MG_ExNaviMargin=8
MG_AdNaviFG=FFFFFF
MG_AdNaviNI=7F7F7F
MG_AdNaviBG=000000
MG_AdNaviTranspcy=220
MG_AdNaviSize=11
MG_AdNaviFont=微软雅黑
MG_AdNaviPosition=0
MG_AdNaviPaddingL=6
MG_AdNaviPaddingR=6
MG_AdNaviPaddingT=3
MG_AdNaviPaddingB=3
MG_AdNaviRound=2
MG_AdNaviMargin=14
MG_AdNaviSpaceX=2
MG_AdNaviSpaceY=2
MG_AdNaviOnClick=0
MG_ShowTrail=1
MG_DrawTrailWnd=1
MG_TrailColor=0000FF
MG_TrailTranspcy=255
MG_TrailWidth=3
MG_TrailStartMove=3
MG_TrailInterval=10
MG_ShowLogs=0
MG_LogPosition=4
MG_LogPosX=0
MG_LogPosY=0
MG_LogMax=20
MG_LogSizeW=400
MG_LogInterval=500
MG_LogFG=FFFFFF
MG_LogBG=000000
MG_LogTranspcy=100
MG_LogFontSize=10
MG_LogFont=MS UI Gothic
MG_EditCommand=
MG_HotkeyEnable=
MG_HotkeyNavi=
MG_HotkeyReload=
MG_ScriptEditor=
MG_TraySubmenu=0
MG_AdjustDlg=0
MG_DlgHeightLimit=800
MG_FoldTarget=0
MG_DisableWarning=0
MG_ActvtExclud := []
MG_MaxLength=7
MG_Triggers=RB
MG_SubTriggers=LB


Goto, MG_RB_End

MG_RB_Enable:
	if (!MG_AlwaysHook) {
		MG_RB_HookEnabled := Func("MG_IsHookEnabled_RB")
		Hotkey, If, % MG_RB_HookEnabled
	}
	Hotkey, *RButton, MG_RB_DownHotkey, On
	Hotkey, *RButton up, MG_RB_UpHotkey, On
	Hotkey, If
	MG_RB_Enabled := 1
return

MG_RB_Disable:
	Hotkey, *RButton, MG_RB_DownHotkey, Off
	Hotkey, *RButton up, MG_RB_UpHotkey, Off
	MG_RB_Enabled := 0
return

MG_RB_DownHotkey:
	MG_TriggerDown("RB")
return

MG_RB_UpHotkey:
	MG_TriggerUp("RB")
return

MG_RB_Down:
	MG_SendButton("RB", "RButton", "Down")
return

MG_RB_Up:
	MG_SendButton("RB", "RButton", "Up")
return

MG_RB_Check:
	MG_CheckButton("RB", "RButton")
return

MG_RB_End:


Goto, MG_LB_End

MG_LB_Enable:
	if (!MG_AlwaysHook) {
		MG_LB_HookEnabled := Func("MG_IsHookEnabled_LB")
		Hotkey, If, % MG_LB_HookEnabled
	}
	Hotkey, *LButton, MG_LB_DownHotkey, On
	Hotkey, *LButton up, MG_LB_UpHotkey, On
	Hotkey, If
	MG_LB_Enabled := 1
return

MG_LB_Disable:
	Hotkey, *LButton, MG_LB_DownHotkey, Off
	Hotkey, *LButton up, MG_LB_UpHotkey, Off
	MG_LB_Enabled := 0
return

MG_LB_DownHotkey:
	MG_TriggerDown("LB")
return

MG_LB_UpHotkey:
	MG_TriggerUp("LB")
return

MG_LB_Down:
	MG_SendButton("LB", "LButton", "Down")
return

MG_LB_Up:
	MG_SendButton("LB", "LButton", "Up")
return

MG_LB_Check:
	MG_CheckButton("LB", "LButton")
return

MG_LB_End:


Goto, MG_Config_End


MG_IsDisable() {
	global
	return (0)
}

MG_IsTarget1() {
	global
	return ((MG_Exe="iexplore.exe") || (MG_Exe="msedge.exe") || (MG_Exe="chrome.exe") || (MG_Exe="firefox.exe"))
}

MG_IsTarget2() {
	global
	return ((MG_WClass="CabinetWClass") || (MG_WClass="ExploreWClass") || (MG_WClass="Progman") || (MG_WClass="WorkerW"))
}

MG_IsTarget3() {
	global
	return (MG_IsTarget2() && ((MG_TreeListHitTest())))
}

MG_IsTarget4() {
	global
	return ((MG_Exe="idea64.exe") || (MG_Exe="datagrip64.exe") || (MG_Exe="Code.exe") || (MG_Exe="webstorm64.exe"))
}

MG_IsExDefault() {
	return (0)
}

MG_Gesture_RB_:
	if (MG_IsTarget3()) {
		;取消手势
		MG_Abort()
	} else if (MG_IsTarget4()) {
		;激活窗口
		MG_WinActivate()
	} else if (MG_IsTarget1()) {
		;激活窗口
		MG_WinActivate()
	} else if (!MG_IsExDefault()){
		;激活窗口
		MG_WinActivate()
	}
return

MG_GetAction_RB_:
	if (MG_IsTarget3()) {
		MG_ActionStr := "取消手势"
	} else if (MG_IsTarget4()) {
		MG_ActionStr := "激活窗口"
	} else if (MG_IsTarget1()) {
		MG_ActionStr := "激活窗口"
	} else if (!MG_IsExDefault()){
		MG_ActionStr := "激活窗口"
	}
return

MG_Gesture_RB_LB__:
	if (!MG_IsExDefault()) {
		
	}
return

MG_GetAction_RB_LB__:
	if (!MG_IsExDefault()) {
		
	}
return

MG_Gesture_RB_L_:
	if (!MG_IsExDefault()) {
		;后退
		Send, !{Left}
	}
return

MG_GetAction_RB_L_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "后退"
	}
return

MG_Gesture_RB_R_:
	if (!MG_IsExDefault()) {
		;前进
		Send, !{Right}
	}
return

MG_GetAction_RB_R_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "前进"
	}
return

MG_Gesture_RB_U_:
	if (!MG_IsExDefault()) {
		;跳至上一页
		Send, {PgUp}
	}
return

MG_GetAction_RB_U_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "跳至上一页"
	}
return

MG_Gesture_RB_D_:
	if (!MG_IsExDefault()) {
		;下一页
		Send, {PgDn}
	}
return

MG_GetAction_RB_D_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "下一页"
	}
return

MG_Gesture_RB_LU_:
	if (!MG_IsExDefault()) {
		;最大化
		PostMessage, 0x0112, 0xF030, 0
	}
return

MG_GetAction_RB_LU_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "最大化"
	}
return

MG_Gesture_RB_LD_:
	if (!MG_IsExDefault()) {
		;还原
		PostMessage, 0x0112, 0xF120, 0
	}
return

MG_GetAction_RB_LD_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "还原"
	}
return

MG_Gesture_RB_RU_:
	if (!MG_IsExDefault()) {
		;激活前一个窗口
		MG_ActivatePrevWin()
	}
return

MG_GetAction_RB_RU_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "激活前一个窗口"
	}
return

MG_Gesture_RB_RD_:
	if (!MG_IsExDefault()) {
		;最小化
		PostMessage, 0x0112, 0xF020, 0
	}
return

MG_GetAction_RB_RD_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "最小化"
	}
return

MG_Gesture_RB_UL_:
	if (!MG_IsExDefault()) {
		;跳至文首
		Send, ^{Home}
	}
return

MG_GetAction_RB_UL_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "跳至文首"
	}
return

MG_Gesture_RB_UR_:
	if (!MG_IsExDefault()) {
		;跳至文末
		Send, ^{End}
	}
return

MG_GetAction_RB_UR_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "跳至文末"
	}
return

MG_Gesture_RB_DL_:
	if (!MG_IsExDefault()) {
		;关闭窗口
		PostMessage, 0x0010
	}
return

MG_GetAction_RB_DL_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "关闭窗口"
	}
return

MG_Gesture_RB_DR_:
	if (MG_IsTarget1()) {
		;按 Ctrl+W
		Send, ^w
	} else if (MG_IsTarget4()) {
		;按 Ctrl+W
		Send, ^{F4}
	} else if (!MG_IsExDefault()){
		;按 Ctrl+W
		Send, ^w
	}
return

MG_GetAction_RB_DR_:
	if (MG_IsTarget1()) {
		MG_ActionStr := "按 Ctrl+W"
	} else if (MG_IsTarget4()) {
		MG_ActionStr := "按 Ctrl+W"
	} else if (!MG_IsExDefault()){
		MG_ActionStr := "按 Ctrl+W"
	}
return


MG_IsHookEnabled_RB() {
	global
	MG_TriggerCount ? : MG_GetMousePosInfo()
	return (MG_RB_Enabled && (MG_TriggerCount || (!MG_IsDisable())))
}

MG_IsHookEnabled_LB() {
	global
	return (MG_LB_Enabled && MG_TriggerCount)
}



MG_Config_end: