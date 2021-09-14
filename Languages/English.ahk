;===============================================================================
;
;		MouseGestureL.ahk - Language Definition Module
;			<< English >>
;														Created by Pyonkichi
;===============================================================================
;-------------------------------------------------------------------------------
; Common
;-------------------------------------------------------------------------------
; Language Name
MC_LanguageName = English

; Help File
MC_HelpFile = MouseGestureL_ENG.chm

; Buttons
MC_LngButton001 = Close
MC_LngButton002 = Copy to Clipboard

; Messages
MC_LngMessage001 = Help document is not found.
MC_LngMessage002 =
(LTrim
				There might be problem in the settings.
				Find cause of the problem from the following messages,
				and correct the settings with configuration dialog.
				If you cannot do it, restore the configuration file from your backup.
				
				------------------------------------------------------------`n`n
)

if (MG_IsEdit) {
	Goto SetEdit
}
;-------------------------------------------------------------------------------
; for Application
;-------------------------------------------------------------------------------
; Menus
MG_LngMenu001 = AutoHot&key
MG_LngMenu002 = &Enable Gesture
MG_LngMenu003 = Show &Gesture Hints
MG_LngMenu004 = &Configuration...
MG_LngMenu005 = Edit &User Extension Script
MG_LngMenu006 = Co&py Logs to Clipboard
MG_LngMenu007 = &Open Plugins Folder
MG_LngMenu008 = &Plugins
MG_LngMenu009 = &Language...
MG_LngMenu010 = MouseGestureL &Help
MG_LngMenu011 = &About MouseGestureL
MG_LngMenu012 = &Restart MouseGestureL
MG_LngMenu013 = E&xit
MG_LngMenu014 = &Mouse Gesture

; Tooltips
MG_LngTooltip001 = Gesture Enabled
MG_LngTooltip002 = Gesture Disabled
MG_LngTooltip003 = Hints ON
MG_LngTooltip004 = Hints OFF

; Other Text
MG_LngOthers001 =
(LTrim
				;===============================================================================
				;
				;		User Extension Script for MouseGestureL.ahk
				;
				;	- Additional initialization process and user-defined subroutines and
				;	  functions can be described to this file.
				;	- You can change the size of the configuration dialog box by setting
				;	  the appropriate variables.
				;	- Script must be reloaded when you have modified contents of this.
				;
				;===============================================================================

)
MG_LngOthers002 = Initialization Process
MG_LngOthers003 = Subroutine Definition
MG_LngOthers004 = for MouseGestureL.ahk
MG_LngOthers005 = for MG_Edit.ahk
MG_LngOthers006 = for both MouseGestureL.ahk and MG_Edit.ahk

Goto EndLanguage

;-------------------------------------------------------------------------------
; for MG_Edit
;-------------------------------------------------------------------------------
SetEdit:

; Gesture Triggers
Button_LB	= Left Button
Button_RB	= Right Button
Button_MB	= Middle Button
Button_X1B	= Button 4
Button_X2B	= Button 5
Button_WU	= Wheel Up
Button_WD	= Wheel Down
Button_LT	= Wheel Tilting Left
Button_RT	= Wheel Tilting Right
Button_ET	= Touch Screen Top (All)
Button_ETA	= Touch Screen Top (Left Half)
Button_ETB	= Touch Screen Top (Right Half)
Button_ET1	= Touch Screen Top (Left 1/3)
Button_ET2	= Touch Screen Top (Center 1/3)
Button_ET3	= Touch Screen Top (Right 1/3)
Button_EB	= Touch Screen Bottom (All)
Button_EBA	= Touch Screen Bottom (Left Half)
Button_EBB	= Touch Screen Bottom (Right Half)
Button_EB1	= Touch Screen Bottom (Left 1/3)
Button_EB2	= Touch Screen Bottom (Center 1/3)
Button_EB3	= Touch Screen Bottom (Right 1/3)
Button_EL	= Touch Screen Left (All)
Button_ELA	= Touch Screen Left (Upper Half)
Button_ELB	= Touch Screen Left (Lower Half)
Button_EL1	= Touch Screen Left (Upper 1/3)
Button_EL2	= Touch Screen Left (Middle 1/3)
Button_EL3	= Touch Screen Left (Lower 1/3)
Button_ER	= Touch Screen Right (All)
Button_ERA	= Touch Screen Right (Upper Half)
Button_ERB	= Touch Screen Right (Lower Half)
Button_ER1	= Touch Screen Right (Upper 1/3)
Button_ER2	= Touch Screen Right (Middle 1/3)
Button_ER3	= Touch Screen Right (Lower 1/3)
Button_CRT	= Touch Screen Right-Top Corner
Button_CLT	= Touch Screen Left-Top Corner
Button_CRB	= Touch Screen Right-Bottom Corner
Button_CLB	= Touch Screen Left-Bottom Corner

; Action Categories
ActionType001 = All
ActionType002 = Input Device Emulation
ActionType003 = Scrolling
ActionType004 = Window Control
ActionType005 = Process Control
ActionType006 = Application Control
ActionType007 = Sound Control
ActionType008 = Script Control
ActionType009 = Hints and Trails
ActionType010 = Control all windows of the same class
ActionType100 = Others

; Action Templates
ActionName001 = Generate Key Stroke
ActionName002 = Generate Mouse Click
ActionName003 = Generate Wheel Rotation
ActionName004 = Move Cursor
ActionName011 = Scroll
ActionName012 = Drag-Scroll
ActionName021 = Activate Window
ActionName022 = Minimize Window
ActionName023 = Maximize Window
ActionName024 = Restore Window
ActionName025 = Close Window
ActionName026 = Send Window to Bottom
ActionName027 = Turn on Window Topmost
ActionName028 = Turn off Window Topmost
ActionName029 = Toggle Window Topmost
ActionName030 = Move and Resize Window
ActionName031 = Change Window Transparency
ActionName032 = Turn off Window Transparency
ActionName033 = Activate Previous Active Window
ActionName041 = Minimize all windows of the same class
ActionName042 = Close all windows of the same class
ActionName043 = Tile all windows of the same class
ActionName051 = Run Program
ActionName052 = Kill Process
ActionName061 = Execute Toolbar Button Command
ActionName062 = Execute Menubar Commond
ActionName071 = Sound Volume
ActionName072 = Mute Sound
ActionName073 = Play a Sound
ActionName081 = Abort Current Gesture
ActionName082 = Wait for Next Gesture
ActionName083 = Wait
ActionName084 = Execute After Waiting
ActionName085 = Execute After Button Up
ActionName086 = Repeat Until Button Up
ActionName087 = Execute After Recognition Process
ActionName088 = Execute if no other action has been fired
ActionName089 = Perform default behavior when a button is released
ActionName090 = Cancel default behavior when a button is released
ActionName091 = Disable timeout
ActionName092 = Save current gestures
ActionName093 = Control Active Window as Target
ActionName101 = Suspend Gesture Hints
ActionName102 = Resume Gesture Hints
ActionName103 = Suspend Gesture Trails
ActionName104 = Resume Gesture Trails
ActionName105 = Show Text as Tooltip Hints
ActionName901 = Copy Text to Clipboard
ActionName902 = Post Message
ActionName903 = Send Message

; Action Comments
ActionComment001 = Action to be performed immediately after the gesture has been entered.
ActionComment002 = Action to be performed when the waiting time has elapsed.
ActionComment003 = Action to be performed repeatedly while a button is pressed.
ActionComment004 = Action to be performed when a button has been released.
ActionComment005 = Action to be performed when a button has been released.
ActionComment006 = Action to be performed when a recognition has been finished.
ActionComment007 = Action to be performed if no other action has been fired.
ActionComment011 = Press ###REPLACE###
ActionComment012 = Hold Down ###REPLACE###
ActionComment013 = Release ###REPLACE###
ActionComment014:=" (###REPLACE### times)"
ActionComment021 = Click ###REPLACE###
ActionComment022 = Hold Down ###REPLACE###
ActionComment023 = Release ###REPLACE###
ActionComment031 = Rotate Wheel Up
ActionComment032 = Rotate Wheel Down
ActionComment033:=" (###REPLACE### steps)"
ActionComment041 = Move cursor to the gesture start position
ActionComment042 = Move cursor to ###REPLACE### from the gesture start position
ActionComment043 = Move cursor to ###REPLACE### from the gesture end position
ActionComment044 = Move cursor to ###REPLACE### from the current position
ActionComment045 = Move cursor to ###REPLACE###
ActionComment051 = Scroll Page Up
ActionComment052 = Scroll Page Down
ActionComment053 = Scroll Page Left
ActionComment054 = Scroll Page Right
ActionComment055:=" (###REPLACE### lines)"
ActionComment056:=" (###REPLACE### pages)"
ActionComment061 = Move and resize window (###REPLACE###)
ActionComment071 = Tile all windows of the same class horizontally
ActionComment072 = Tile all windows of the same class vertically
ActionComment073 = Tile all windows of the same class

; Caption of Dialog Box
ME_LngCapt001 = MouseGestureL
ME_LngCapt002 = MouseGestureL Configuration
ME_LngCapt003 = Confirm Deletion
ME_LngCapt004 = Confirm Overwrite
ME_LngCapt005 = Trigger Button Definition
ME_LngCapt006 = Specify a Script Editor
ME_LngCapt007 = Individual Arrow Colors
ME_LngCapt008 = Rectangular Region
ME_LngCapt009 = Excluded windows for task switcher
ME_LngCapt010 = Task List
ME_LngCapt011 = Add Action
ME_LngCapt012 = Input Keystroke
ME_LngCapt013 = Edit Keystroke Directly
ME_LngCapt014 = Establish Mouse Click
ME_LngCapt015 = Establish Wheel Rotation
ME_LngCapt016 = Establish Cursor Movement
ME_LngCapt017 = Establish Scroll
ME_LngCapt018 = Establish Drag-Scroll
ME_LngCapt019 = Establish Move and Resize Window
ME_LngCapt022 = Specify a Launch File
ME_LngCapt023 = Specify a Sound File
ME_LngCapt024 = Post/SendMessage
ME_LngCapt025 = Choose Icon File
ME_LngCapt026 = Minimize all windows of the same class
ME_LngCapt027 = Close all windows of the same class
ME_LngCapt028 = Tile all windows of the same class

; Tabs
ME_LngTab001 = Main`nTargets`nGestures`nRecognition`nHints`nTrails && Logs`nOthers

; Menus
ME_LngMenu000 = (None)
ME_LngMenu001 = Window Elements
ME_LngMenu002 = Titlebar
ME_LngMenu003 = Titlebar Icon
ME_LngMenu004 = Minimize Button
ME_LngMenu005 = Maximize Button
ME_LngMenu006 = Close Button
ME_LngMenu007 = Help Button
ME_LngMenu008 = Menubar
ME_LngMenu009 = Vertical Scrollbar
ME_LngMenu010 = Horizontal Scrollbar
ME_LngMenu011 = Window Frame
ME_LngMenu012 = Resizable Corner
ME_LngMenu013 = Other Area
ME_LngMenu014 = Tree/List
ME_LngMenu015 = Mouse Cursor
ME_LngMenu016 = Normal (Arrow)
ME_LngMenu017 = Line (Text Input)
ME_LngMenu018 = Finger (Link Hover)
ME_LngMenu019 = Sand Glass
ME_LngMenu020 = Cross
ME_LngMenu021 = Disabled
ME_LngMenu022 = Arrow + Sand Glass
ME_LngMenu023 = Arrow + Question Mark
ME_LngMenu024 = 4-Direction Arrow
ME_LngMenu025 = Up-Down Arrow
ME_LngMenu026 = Left-Right Arrow
ME_LngMenu027 = UL-DR Arrow
ME_LngMenu028 = UR-DL Arrow
ME_LngMenu029 = Vertical Arrow
ME_LngMenu030 = Any of the above curors
ME_LngMenu031 = Default (Application Specified)
ME_LngMenu032 = Window Status
ME_LngMenu033 = Maximized
ME_LngMenu034 = Normal
ME_LngMenu035 = Transparent
ME_LngMenu036 = Opaque
ME_LngMenu037 = Topmost
ME_LngMenu038 = Non-Topmost
ME_LngMenu039 = Keyboard Status
ME_LngMenu040 = Shift Key Down
ME_LngMenu041 = Shift Key Up
ME_LngMenu042 = Ctrl Key Down
ME_LngMenu043 = Ctrl Key Up
ME_LngMenu044 = Alt Key Down
ME_LngMenu045 = Alt Key Up
ME_LngMenu046 = Rectangular Region
ME_LngMenu047 = Window Relative
ME_LngMenu048 = Screen Absolute
ME_LngMenu049 = Screen Edge Recognition
ME_LngMenu050 = Create New Button
ME_LngMenu101 = &Target Configuration	Enter
ME_LngMenu102 = &New Target	Ctrl+N
ME_LngMenu103 = Add &Sub Target
ME_LngMenu104 = &Add Gesture
ME_LngMenu105 = &Delete	Delete
ME_LngMenu106 = Du&plicate	Ctrl+D
ME_LngMenu107 = &Copy to Clipboard	Ctrl+C
ME_LngMenu108 = &Import from Clipboard	Ctrl+V
ME_LngMenu109 = Move &Up	Shift+Up
ME_LngMenu110 = Move D&own	Shift+Down
ME_LngMenu111 = So&rt in Ascending
ME_LngMenu112 = &Fold all Sub Targets	Ctrl+F
ME_LngMenu113 = &Gesture Assignment	Enter
ME_LngMenu121 = Define &New Gesture
ME_LngMenu122 = &Gesture Configuration	Enter
ME_LngMenu123 = &Change to Another Gesture
ME_LngMenu124 = Copy to Other &Target
ME_LngMenu125 = &Edit Action with Text Editor	Ctrl+Enter
ME_LngMenu141 = &New Gesture	Ctrl+N
ME_LngMenu142 = &Edit...
ME_LngMenu151 = Change &Target

; Static Text
ME_LngText001 = Targets:
ME_LngText002 = Gestures:
ME_LngText003 = Target Priorities:
ME_LngText004 = Action Script:
ME_LngText005 = Category:
ME_LngText006 = Action:
ME_LngText011 = Name:
ME_LngText012 = Type:
ME_LngText013 = Value:
ME_LngText014 = Rule:
ME_LngText021 = Gesture Triggers:
ME_LngText022 = Cursor Movement:
ME_LngText023 = Description:
ME_LngText024 = Button Name:
ME_LngText025 = Key String:
ME_LngText026 = Default Action:
ME_LngText027 = H
ME_LngText028 = L
ME_LngText029 = Close the end of the gesture pattern with an underscore "_" unless you intent to make special settings.`nThe underscore at the end means the release of the mouse button, which is added by clicking the "Button Up" button.`n`n`t###REPLACE###`t<-- NG`n`t###REPLACE###_`t<-- OK`n`nIf you understand the specification and intentionally defined the gesture, ignore this warning.
ME_LngText100 = Stroke sampling interval (ms):
ME_LngText101 = Detection start:
ME_LngText102 = 4-Direction "LL" and "RR":
ME_LngText103 = 4-Direction "UU" and "DD":
ME_LngText104 = 8-Direction long diagonal:
ME_LngText105 = First stroke:
ME_LngText106 = After orthogonal:
ME_LngText107 = After diagonal:
ME_LngText108 = Cursor movement to start judgment of timeout (pixels):
ME_LngText109 = Time threshold (ms):`n( 0 = No timeout )
ME_LngText110 = Time limit of double gesture (ms):
ME_LngText111 = Sampling interval (ms):
ME_LngText112 = Range of corners:
ME_LngText113 = Horizontal:
ME_LngText114 = Vertical:
ME_LngText115 = Waiting time to forced release trigger buttons after timeout (sec):`n( 0 = Disable forced release function )
ME_LngText200 = Type of hints:
ME_LngText201 = Interval of drawing process:
ME_LngText202 = Persistence time of hints:
ME_LngText203 = Color of arrows (RRGGBB):
ME_LngText204 = Background color (RRGGBB):
ME_LngText205 = Transparency (0～255):
ME_LngText206 = Size of arrows:
ME_LngText207 = Spaces between arrows:
ME_LngText208 = Margin from edge:
ME_LngText209 = Distance from cursor:`n( -1 to Stay in origin )
ME_LngText210 = Arrow color:
ME_LngText300 = Text color (RRGGBB):
ME_LngText301 = Text color 2 (RRGGBB):
ME_LngText302 = Background color (RRGGBB):
ME_LngText303 = Transparency (0～255):
ME_LngText304 = Character size:
ME_LngText305 = Font name:
ME_LngText306 = Position:
ME_LngText307 = Left margin:
ME_LngText308 = Right margin:
ME_LngText309 = Top margin:
ME_LngText310 = Bottom margin:
ME_LngText311 = Roundness of corners:
ME_LngText312 = Distance from cursor:`n( -1 to Stay in origin )
ME_LngText313 = Distance from H-edge:
ME_LngText314 = Distance from V-edge:
ME_LngText400 = Line color (RRGGBB):
ME_LngText401 = Line transparency (0～255):
ME_LngText402 = Line width:
ME_LngText403 = Cursor movement to start gesture trail:
ME_LngText404 = Interval of drawing process (ms):
ME_LngText421 = X:
ME_LngText422 = Y:
ME_LngText423 = Number of log lines:
ME_LngText424 = Width of log window:
ME_LngText451 = Toggle Gesture Enabling:
ME_LngText452 = Toggle Gesture Hints:
ME_LngText453 = Restart MouseGestureL:
ME_LngText455 = Limit of height ( 0 = No limit ):
ME_LngText501 = Width:
ME_LngText502 = Height:
ME_LngText503 = * 0 in Width or Height means whole window size.
ME_LngText504 = Target:
ME_LngText505 = Origin:
ME_LngText506 = Judge in:
ME_LngText521 = Input Key:
ME_LngText522 = Button:
ME_LngText523 = Operation:
ME_LngText524 = Count:
ME_LngText525 = Operation:
ME_LngText526 = Click Count:
ME_LngText527 = Unit of Rotation:
ME_LngText528 = Origin:
ME_LngText529 = Direction:
ME_LngText530 = Unit of Scroll:
ME_LngText531 = This can scroll the target by cursor movement while a button is pressed.
ME_LngText532 = * This function has to be assigned to the gesture when a button is being`n   pressed.
ME_LngText533 = Vertical Sensitivity:
ME_LngText534 = Horizontal Sensitivity:
ME_LngText535 = (Smaller value is higher sensitivity)
ME_LngText536 = Direction:
ME_LngText537 = Operation:
ME_LngText541 = Specify the upper-left coordinates and size of the window.
ME_LngText542 = - The item which is specified with blank will not be changed.
ME_LngText543 = - If "Relative Value" is checked, the position and size of the`n  window will be increased or decreased from current`n  position or size.
ME_LngText544 = - If "Relative Value" is checked and fractions are specified,`n  the position and size of the window will be determined by ratio`n  to current position or size.
ME_LngText545 = - If "Relative Value" is unchecked and fractions are specified,`n  the position and size of the window will be determined by ratio`n  to the desktop size.`n  (Specify "0" instead of "1/1" to Width and Height.)
ME_LngText546 = Left:
ME_LngText547 = Top:
ME_LngText548 = Width:
ME_LngText549 = Height:
ME_LngText551 = Command Line:
ME_LngText552 = Working Folder:
ME_LngText553 = Window State:
ME_LngText554 = Privilege Level:
ME_LngText556 = Program Files (*.exe)
ME_LngText557 = Sound Files (*.wav;*.mid)
ME_LngText558 = Icon Files (*.ico;*.exe;*.dll;*.cpl;*.icl)
ME_LngText561 = Message:
ME_LngText562 = wParam:
ME_LngText563 = lParam:
ME_LngText571 = Strings to filter by window title: (These can be blank)
ME_LngText572 = String to include:
ME_LngText573 = String to exclude:
ME_LngText581 = Direction of tiling:
ME_LngText582 = Left side:
ME_LngText583 = Right side:
ME_LngText584 = Upper side:
ME_LngText585 = Lower side:

; Buttons
ME_LngButton001 = OK
ME_LngButton002 = Cancel
ME_LngButton003 = MouseGestureL Help
ME_LngButton004 = Import from clipboard
ME_LngButton005 = Add Gesture
ME_LngButton006 = Apply Action
ME_LngButton007 = Add
ME_LngButton008 = Update
ME_LngButton009 = Change
ME_LngButton010 = Helper
ME_LngButton011 = Delete
ME_LngButton012 = Button Down
ME_LngButton013 = Button Up
ME_LngButton014 = Remove last one step from current gesture
ME_LngButton015 = Register to Startup
ME_LngButton016 = Remove from Startup
ME_LngButton017 = Set individual arrow colors
ME_LngButton018 = Edit
ME_LngButton019 = Special Key
ME_LngButton020 = Browse...
ME_LngButton021 = Apply Icon
ME_LngButton022 = Specify the excluded windows for task switcher
ME_LngButton023 = Select from existing windows...
ME_LngButton024 = Select

; Items of Drop Down List
ME_LngDropDown001 = Window Class`nControl Class`nFile Name`nTitle`nCustom Condition`nMatch Other Targets
ME_LngDropDown002 = Match Exact Word`nMatch Partial Word`nMatch Prefix`nMatch Suffix`nRegular Expression
ME_LngDropDown003 = Tooltips`nArrows Type 1`nArrows Type 2`nAdvanced`nNavigation
ME_LngDropDown004 = Cursor Position`nUpper-Left Corner`nUpper-Right Corner`nLower-Left Corner`nLower-Right Corner
ME_LngDropDown005 = Upper-Left Corner`nUpper-Right Corner`nLower-Left Corner`nLower-Right Corner`nSpecified Coordinates
ME_LngDropDown101 = Relative Coordinates of Target Window`nRelative Coordinates of Target Control`nAbsolute Coordinates of Screen
ME_LngDropDown102 = Upper-Left`nUpper-Right`nLower-Left`nLower-Right
ME_LngDropDown103 = Gesture Starting Position`nGesture Ending Position
ME_LngDropDown201 = Left Button`nRight Button`nMiddle Button`nX1 Button`nX2 Button
ME_LngDropDown202 = Normal Stroke`nHold Down`nRelease
ME_LngDropDown203 = Click`nHold Down`nRelease 
ME_LngDropDown204 = Gesture Starting Position`nGesture Ending Position`nCurrent Cursor Position
ME_LngDropDown205 = Scroll Up`nScroll Down`nScroll Left`nScroll Right
ME_LngDropDown206 = Same direction of a cursor movement`nOpposite direction of a cursor movement
ME_LngDropDown207 = Scroll as much as the cursor movement`nScroll automatically while a button is pressed
ME_LngDropDown208 = Normal Window`nMinimized`nMaximized`nHidden
ME_LngDropDown209 = Run as User`nRun as Administrator
ME_LngDropDown210 = Horizontally`nVertically`nGrid

; Column Titles of ListView
ME_LngListView001 = Type`nValue
ME_LngListView002 = Gesture`nAction
ME_LngListView003 = Target`nAction
ME_LngListView004 = Trigger`nColor
ME_LngListView005 = Title`nWindow Class`nFilename

; Group Box
ME_LngGroupBox001 = General settings of recognition process
ME_LngGroupBox002 = Detection Threshold (pixels)
ME_LngGroupBox003 = Diagonal Angle
ME_LngGroupBox004 = Timeout
ME_LngGroupBox005 = Screen Edge Recognition
ME_LngGroupBox006 = Extra Mouse Buttons
ME_LngGroupBox007 = Common Options
ME_LngGroupBox008 = Arrow Hints
ME_LngGroupBox009 = Advanced Hints
ME_LngGroupBox010 = Gesture Trails
ME_LngGroupBox011 = Logging
ME_LngGroupBox012 = Hotkeys
ME_LngGroupBox013 = External Script Editor
ME_LngGroupBox014 = Startup
ME_LngGroupBox015 = Task Switcher
ME_LngGroupBox016 = Others
ME_LngGroupBox017 = Icon
ME_LngGroupBox018 = Judgment Conditions
ME_LngGroupBox019 = Target Rules
ME_LngGroupBox101 = Direction of Wheel Rotation
ME_LngGroupBox102 = Edge areas to exclude from the screen for tiling

; Check Box
ME_LngCheckBox001 = Not match
ME_LngCheckBox002 = Don't inherit the parent conditions
ME_LngCheckBox003 = 8-Direction mode
ME_LngCheckBox004 = Control active window as target
ME_LngCheckBox005 = Recognize each display area individually
ME_LngCheckBox006 = Disable default behavior of Middle Button
ME_LngCheckBox007 = Disable default behavior of X1 Button
ME_LngCheckBox008 = Disable default behavior of X2 Button
ME_LngCheckBox009 = Show gesture hints by default
ME_LngCheckBox010 = Transparent background
ME_LngCheckBox011 = Show hints when trigger button is pressed
ME_LngCheckBox012 = Show gesture trail
ME_LngCheckBox013 = Show gesture logs
ME_LngCheckBox014 = Draw trail into overwrap window
ME_LngCheckBox015 = Cascade mouse gesture tray menu
ME_LngCheckBox016 = Adjust dialog box height to the number of items
ME_LngCheckBox017 = Don't reproduce original mouse movements when undefined gesture is performed
ME_LngCheckBox018 = Ignore modifier key states
ME_LngCheckBox019 = Don't show this message again
ME_LngCheckBox020 = Always hook trigger buttons
ME_LngCheckBox021 = Exclude from default gesture targets
ME_LngCheckBox101 = Shift
ME_LngCheckBox102 = Ctrl
ME_LngCheckBox103 = Alt
ME_LngCheckBox110 = Absolute Coordinates
ME_LngCheckBox111 = Page Scroll
ME_LngCheckBox112 = Relative Value
ME_LngCheckBox113 = Adjust position and size for the Windows Aero

; Radio Button
ME_LngRadioBtn001 = Match Any Condition
ME_LngRadioBtn002 = Match All Conditions
ME_LngRadioBtn101 = Rotation Up
ME_LngRadioBtn102 = Rotation Down

; Messages
ME_LngMessage001 = "###REPLACE###"
ME_LngMessage002 := ", "
ME_LngMessage003 := " is assigned to the gestures ###REPLACE###.`n"
ME_LngMessage004 := " is included in the target ###REPLACE###.`n"
ME_LngMessage005 = `nAre you sure to delete this?
ME_LngMessage006 = The Actions are assigned to this gesture.`nAre you sure to delete this?
ME_LngMessage007 = The gesture "###REPLACE###" is already assigned to the copy destination.`nDo you want to overwrite by this action?
ME_LngMessage011 = Only alphanumeric characters can be used to the button name.
ME_LngMessage012 = This button name is reserved.
ME_LngMessage013 = The button that uses this name already exists.`nDo you want to overwrite it?
ME_LngMessage014 = The button that uses this key already exists.`nDo you want to replace it?
ME_LngMessage015 = This button name used for the standard button.`nDo you want to change the definition of standard button?
ME_LngMessage016 = It is already defined as a standard button.
ME_LngMessage017 = Are you sure you want to delete the selected button?
ME_LngMessage021 = Do you want to convert existing gestures to ###REPLACE###-direction mode?
ME_LngMessage022 = `n`n* The diagonal movement will be removed.
ME_LngMessage031 = Do you want to launch MouseGestureL.ahk as administrator on startup?
ME_LngMessage032 = MouseGestureL.ahk has been registered to startup.
ME_LngMessage033 = MouseGestureL.ahk has been removed from startup.
ME_LngMessage101 = The menu bar item of the application can be executed.`n`n  - There are unsupported applications.`n`nSpcify the menu items (Delimiter: [ , ]   Max: 6 Level Deep):
ME_LngMessage102 = Input program command line or URL.
ME_LngMessage104 = Spcify a transparency.`n`n  0: Transparent  ...  255: Opaque
ME_LngMessage105 = Reactivates the previously activated window.`nIf it's executed again within the specified time limit,`nthe earlier active window will be activated.`n`nTimeout value (ms):
ME_LngMessage106 = Specify one of the following values.`n`n      0 ... 100	: Set Absolute Value`n     +1 ... +100	: Increment`n     -1 ... -100	: Decrement
ME_LngMessage107 = Specify one of the following characters.`n`n     1 : Mute ON`n     0 : Mute OFF`n     + : Toggle Mute
ME_LngMessage108 = Specify the sound file to be played.`n`n  * The file format that is not supported by OS cannot be played.
ME_LngMessage109 = After a button is released once, the next button-down event will be`naccepted as a continuation of same gesture until the timeout.`n`n  - This function has to be assigned to the gesture when a button is`n    released.`n`n  << Example: Right double-click >>  `n    1. Assign this function to RB__.`n    2. Assign the action for double-click to RB__RB__.`n`nSpecify the timeout in millisecond:
ME_LngMessage110 = Script stops until the specified time has elapsed.`n`n  - Next gesture cannot be accepted while waiting.`n    If you need long waiting, you'd better use`n    "Execute After Recognition Process".`n`nSpecify the waiting time in millisecond:
ME_LngMessage111 = The action is delayed until specified time has elapsed since gesture was`nrecognized.`n`n  - If this function is assigned to the gesture when a button is being pressed,`n    it performs as "Pressing and Holding a Button".`n  - If the gesture status is changed before the waiting time has not elapsed,`n    the action is canceled.`n`n  << Example: Single-click and double-click of middle button >>`n   The action of single-click only performs when you don't double-click`n   with following settings.`n    1. Assign this function to MB__ and describe the action for single-click`n       into after the "else {".`n    2. Assign the action for double-click to MB__MB__.`n`nSpecify the delay time in millisecond:
ME_LngMessage112 = The action is executed when a button has been released`nafter the specified time has elapsed.`n`n  - This function has to be assigned to the gesture when`n    a button is being pressed.`n`nSpecify the waiting time in millisecond:
ME_LngMessage113 = The action is repeated at a specified intervals while`na button is being pressed.`n`n  - This function has to be assigned to the gesture`n    when a button is being pressed.`n`nSpecify the interval in millisecond:
ME_LngMessage114 = The action is executed when the recognition process`nhas been finished.`n`n  - This function is used if the action script is stopped`n    for a long time.`n    For example, a message box is displayed by the script.`n
ME_LngMessage115 = After the gesture is accepted, the original behavior according to the mouse operation`nwill be performed when the mouse button is released.`n`n  - If a gesture triggered by the right button is accepted, the context menu will`n    not be displayed when the right button is released, but it will be displayed if`n    this function has been called.`n`n  - If there is an "if" statement in the assigned action, and if you want to display`n    the context menu assuming that it's a normal operation because of the "if"`n    conditions are not satisfied, call this function on the "else" side.`n
ME_LngMessage116 = After the gesture is accepted, the original behavior according to the mouse operation`nwill be canceled when the mouse button is released.`n`n  << Example of use >>`n`n    1. Assign the following actions to the gesture triggered by the right button.`n`n    2. The action that the delayed processing is executed if the subsequent gesture`n       has not been entered, that is configured with the MG_Timer() function.`n`n    With the above settings, the context menu will be displayed before the assigned`n    action is executed. To prevent that, call this function in the process immediately`n    after the gesture is entered.`n
ME_LngMessage117 = Show the text with Tooltip Hints.`n`n  - This function has to be assigned to the gesture when a button`n    is being pressed.`n  - This does not work if Tooltip Hints is disabled.`n  - If you want to show multiline text, press the "OK" to close`n    this dialog, then edit the inside text of ( ).`n`nInput text to be shown:
ME_LngMessage118 = Set the text to Clipboard`n`n  - Tab is ``t、 Return is ``n`n  - If you want to copy multiline text, press the "OK" to close`n    this dialog, then edit the inside text of ( ).`n`nInput text to be copied:
ME_LngMessage119 = Input key stroke string.`n`n    Format: +^!#{Key Name}	+ :Shift	  ^ :Ctrl`n				! :Alt	  # :Windows`n`n  - The { } surrounding the key name of a single character can be omitted.`n  - {Key Down} for Press Down, {Key Up} for Press Up.`n  - {LButton},{RButton},{MButton},{XButton1} and {XButton2} for a Mouse Click.`n  - If you specify the multiple keys, it will generate the serial key strokes.

; Tooltips
ME_LngTooltip001 = Delete
ME_LngTooltip002 = Clear
ME_LngTooltip003 = Edit with external text editor
ME_LngTooltip011 = Add Target
ME_LngTooltip012 = Move Up
ME_LngTooltip013 = Move Down
ME_LngTooltip014 = Sort in Ascending
ME_LngTooltip015 = Duplicate
ME_LngTooltip016 = Show all Sub Targets
ME_LngTooltip017 = Fold all Sub Targets
ME_LngTooltip021 = Add Gesture
ME_LngTooltip101 = "###REPLACE###" has been copied to clipboard.
ME_LngTooltip102 = Settings have been imported.
ME_LngTooltip103 = Right-Click on Target Window
ME_LngTooltip104 = Right-Click on Target Button
ME_LngTooltip105 = Select the Rectangular Region by Left Dragging

; Fonts
ME_AdNaviFont	 = Meiryo
ME_ScriptFont	 = MS Gothic

; Other Text
ME_LngOthers001	 = Default
ME_LngOthers002  = Ignored Targets
ME_LngOthers003	 = Target
ME_LngOthers004	 = N/A
ME_LngOthers005	 = 
ME_LngOthers006	 = Match Partial Word
ME_LngOthers007	 = Match Prefix
ME_LngOthers008	 = Match Suffix
ME_LngOthers009	 = Regular Expression
ME_LngOthers010	 = Not Match
ME_LngOthers011	 = Not Match Partial Word
ME_LngOthers012	 = Not Match Prefix
ME_LngOthers013	 = Not Match Suffix
ME_LngOthers014	 = Not Match by RegExp.
ME_LngOthers015  = << Add Trigger >>

;-------------------------------------------------------------------------------
; Default Settings
;-------------------------------------------------------------------------------
ME_PresetItems =
(%
[Ignored Targets]

[Browsers]
Icon=%A_WinDir%\system32\inetcpl.cpl,6
Exe=iexplore.exe
Exe=msedge.exe
Exe=chrome.exe
Exe=firefox.exe

[Explorer]
Icon=%A_WinDir%\explorer.exe,1
WClass=CabinetWClass
WClass=ExploreWClass
WClass=Progman
WClass=WorkerW

[Icons]
Icon=%A_WinDir%\explorer.exe,1
Level=2
Custom=MG_TreeListHitTest()

[RB_]
G=RB_
Default=;Activate Window<MG_CR>MG_WinActivate()
Explorer/Icon=;Cancel Gesture<MG_CR>MG_Abort()

[RB_LB__]
G=RB_LB__
Default=;Close Window<MG_CR>PostMessage, 0x0010

[RB_L]
G=RB_L_
Default=;Back<MG_CR>Send, !{Left}

[RB_R]
G=RB_R_
Default=;Forward<MG_CR>Send, !{Right}

[RB_U]
G=RB_U_
Default=;Jump to Top<MG_CR>Send, ^{Home}

[RB_D]
G=RB_D_
Default=;Jump to Bottom<MG_CR>Send, ^{End}

[RB_LU]
G=RB_LU_

[RB_LD]
G=RB_LD_

[RB_RU]
G=RB_RU_
Default=;Activate Previous Active Window<MG_CR>MG_ActivatePrevWin()

[RB_RD]
G=RB_RD_
Default=;Minimize Window<MG_CR>PostMessage, 0x0112, 0xF020, 0

[RB_UL]
G=RB_UL_

[RB_UR]
G=RB_UR_

[RB_DL]
G=RB_DL_

[RB_DR]
G=RB_DR_
)

;-------------------------------------------------------------------------------
EndLanguage:
	MG_Language := RegExReplace(A_LineFile, "m)^.+\\|\.ahk$")

