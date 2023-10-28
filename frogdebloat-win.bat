@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion
goto language

:about
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo ABOUT
echo.
echo FrogDebloat is a small bash/batch tool to debloat Android
echo devices. Inspired by MuntashirAkon/AppManager (GitHub).
echo.
echo FrogDebloat is licensed under AGPL-3.0 license.
echo.
echo Made by Rio McCloud, since 2023.
echo Check it out at https://github.com/riomccloud/frogdebloat
echo.
echo ============================================================
echo.
echo Press any key to go back...

pause >nul
goto language

:adb-check
adb --version > NUL 2>&1
    if errorlevel 1 (
		if "!Language!"=="en" (
			goto adb-nf-en
		) else if "!Language!"=="br" (
			goto adb-nf-br
		) else if "!Language!"=="pt" (
			goto adb-nf-pt
		)
	) else (
        set "adb=adb"
        if "!Language!"=="en" (
			goto op-mode-en
		) else if "!Language!"=="br" (
			goto op-mode-br
		) else if "!Language!"=="pt" (
			goto op-mode-pt
		)
)

:do-end
if "!Language!"=="en" (
	goto main-menu-en
) else if "!Language!"=="br" (
	goto main-menu-br
)

:do-eds-end
if "!Language!"=="en" (
	goto eds-s-en
) else if "!Language!"=="br" (
	goto eds-s-br
)

:do-aosp
cls
if "!OpMode!"=="Android 4.3-" (
	%adb% root
) else (
	echo Root (X)
)
%adb% shell pm %PmAction% com.android.printspooler
%adb% shell am force-stop com.android.printspooler
%adb% shell pm clear com.android.printspooler
%adb% shell pm %PmAction% com.android.bips
%adb% shell am force-stop com.android.bips
%adb% shell pm clear com.android.bips
%adb% shell pm %PmAction% com.android.bluetoothmidiservice
%adb% shell am force-stop com.android.bluetoothmidiservice
%adb% shell pm clear com.android.bluetoothmidiservice
%adb% shell pm %PmAction% com.android.bookmarkprovider
%adb% shell am force-stop com.android.bookmarkprovider
%adb% shell pm clear com.android.bookmarkprovider
%adb% shell pm %PmAction% com.android.carrierdefaultapp
%adb% shell am force-stop com.android.carrierdefaultapp
%adb% shell pm clear com.android.carrierdefaultapp
%adb% shell pm %PmAction% com.android.dreams.basic
%adb% shell am force-stop com.android.dreams.basic
%adb% shell pm clear com.android.dreams.basic
%adb% shell pm %PmAction% com.android.dreams.phototable
%adb% shell am force-stop com.android.dreams.phototable
%adb% shell pm clear com.android.dreams.phototable
%adb% shell pm %PmAction% com.android.dreams.phototable.overlay
%adb% shell am force-stop com.android.dreams.phototable.overlay
%adb% shell pm clear com.android.dreams.phototable.overlay
%adb% shell pm %PmAction% com.android.egg
%adb% shell am force-stop com.android.egg
%adb% shell pm clear com.android.egg
%adb% shell pm %PmAction% com.android.galaxy4
%adb% shell am force-stop com.android.galaxy4
%adb% shell pm clear com.android.galaxy4
%adb% shell pm %PmAction% com.android.htmlviewer
%adb% shell am force-stop com.android.htmlviewer
%adb% shell pm clear com.android.htmlviewer
%adb% shell pm %PmAction% com.android.magicsmoke
%adb% shell am force-stop com.android.magicsmoke
%adb% shell pm clear com.android.magicsmoke
%adb% shell pm %PmAction% com.android.managedprovisioning
%adb% shell am force-stop com.android.managedprovisioning
%adb% shell pm clear com.android.managedprovisioning
%adb% shell pm %PmAction% com.android.musicvis
%adb% shell am force-stop com.android.musicvis
%adb% shell pm clear com.android.musicvis
%adb% shell pm %PmAction% com.android.noisefield
%adb% shell am force-stop com.android.noisefield
%adb% shell pm clear com.android.noisefield
%adb% shell pm %PmAction% com.android.phasebeam
%adb% shell am force-stop com.android.phasebeam
%adb% shell pm clear com.android.phasebeam
%adb% shell pm %PmAction% com.android.email.partnerprovider
%adb% shell am force-stop com.android.email.partnerprovider
%adb% shell pm clear com.android.email.partnerprovider
%adb% shell pm %PmAction% com.android.email.partnerprovider.overlay
%adb% shell am force-stop com.android.email.partnerprovider.overlay
%adb% shell pm clear com.android.email.partnerprovider.overlay
%adb% shell pm %PmAction% com.android.providers.partnerbookmarks
%adb% shell am force-stop com.android.providers.partnerbookmarks
%adb% shell pm clear com.android.providers.partnerbookmarks
%adb% shell pm %PmAction% com.android.runintest.ddrtest
%adb% shell am force-stop com.android.runintest.ddrtest
%adb% shell pm clear com.android.runintest.ddrtest
%adb% shell pm %PmAction% com.android.simappdialog
%adb% shell am force-stop com.android.simappdialog
%adb% shell pm clear com.android.simappdialog
%adb% shell pm %PmAction% com.android.soundrecorder
%adb% shell am force-stop com.android.soundrecorder
%adb% shell pm clear com.android.soundrecorder
%adb% shell pm %PmAction% com.android.stk
%adb% shell am force-stop com.android.stk
%adb% shell pm clear com.android.stk
%adb% shell pm %PmAction% com.android.stk2
%adb% shell am force-stop com.android.stk2
%adb% shell pm clear com.android.stk2
%adb% shell pm %PmAction% com.android.traceur
%adb% shell am force-stop com.android.traceur
%adb% shell pm clear com.android.traceur
%adb% shell pm %PmAction% com.android.wallpaper.holospiral
%adb% shell am force-stop com.android.wallpaper.holospiral
%adb% shell pm clear com.android.wallpaper.holospiral
%adb% shell pm %PmAction% com.android.wallpaper.livepicker
%adb% shell am force-stop com.android.wallpaper.livepicker
%adb% shell pm clear com.android.wallpaper.livepicker
%adb% shell pm %PmAction% com.android.wallpaper.livepicker.overlay
%adb% shell am force-stop com.android.wallpaper.livepicker.overlay
%adb% shell pm clear com.android.wallpaper.livepicker.overlay
%adb% shell pm %PmAction% com.android.wallpapercropper
%adb% shell am force-stop com.android.wallpapercropper
%adb% shell pm clear com.android.wallpapercropper
%adb% shell pm %PmAction% com.example.android.notepad
%adb% shell am force-stop com.example.android.notepad
%adb% shell pm clear com.example.android.notepad
%adb% shell pm %PmAction% android.auto_generated_vendor_
%adb% shell am force-stop android.auto_generated_vendor_
%adb% shell pm clear android.auto_generated_vendor_
%adb% shell pm %PmAction% android.auto_generated_rro__
%adb% shell am force-stop android.auto_generated_rro__
%adb% shell pm clear android.auto_generated_rro__
%adb% shell pm %PmAction% com.android.apps.tag
%adb% shell am force-stop com.android.apps.tag
%adb% shell pm clear com.android.apps.tag
%adb% shell pm %PmAction% com.android.browser
%adb% shell am force-stop com.android.browser
%adb% shell pm clear com.android.browser
%adb% shell pm %PmAction% com.android.browser.provider
%adb% shell am force-stop com.android.browser.provider
%adb% shell pm clear com.android.browser.provider
%adb% shell pm %PmAction% com.android.quicksearchbox
%adb% shell am force-stop com.android.quicksearchbox
%adb% shell pm clear com.android.quicksearchbox
if "!OpMode!"=="Android 4.3-" (
	%adb% kill-server
) else (
	echo Root (X)
)

echo.
echo ============================================================
echo.

if "!Language!"=="br" (
	echo CONCLUÍDO! Voltando para o menu anterior em 5 segundos.
) else if "!Language!"=="en" (
	echo FINISHED! Returning to the previous menu in 5 seconds.
)

timeout 5 > NUL
goto do-end

:do-companies
cls
if "!OpMode!"=="Android 4.3-" (
	%adb% root
) else (
	echo Root (X)
)
rem Amazon
%adb% shell pm %PmAction% com.amazon.appmanager
%adb% shell am force-stop com.amazon.appmanager
%adb% shell pm clear com.amazon.appmanager
%adb% shell pm %PmAction% com.amazon.avod.thirdpartyclient
%adb% shell am force-stop com.amazon.avod.thirdpartyclient
%adb% shell pm clear com.amazon.avod.thirdpartyclient
%adb% shell pm %PmAction% com.amazon.mShop.android
%adb% shell am force-stop com.amazon.mShop.android
%adb% shell pm clear com.amazon.mShop.android
%adb% shell pm %PmAction% com.amazon.fv
%adb% shell am force-stop com.amazon.fv
%adb% shell pm clear com.amazon.fv
%adb% shell pm %PmAction% com.amazon.kindle
%adb% shell am force-stop com.amazon.kindle
%adb% shell pm clear com.amazon.kindle
%adb% shell pm %PmAction% com.amazon.mp3
%adb% shell am force-stop com.amazon.mp3
%adb% shell pm clear com.amazon.mp3
%adb% shell pm %PmAction% com.amazon.venezia
%adb% shell am force-stop com.amazon.venezia
%adb% shell pm clear com.amazon.venezia
%adb% shell pm %PmAction% com.amazon.aa
%adb% shell am force-stop com.amazon.aa
%adb% shell pm clear com.amazon.aa
%adb% shell pm %PmAction% com.amazon.aa.attribution
%adb% shell am force-stop com.amazon.aa.attribution
%adb% shell pm clear com.amazon.aa.attribution
%adb% shell pm %PmAction% com.amazon.mShop.android.shopping
%adb% shell am force-stop com.amazon.mShop.android.shopping
%adb% shell pm clear com.amazon.mShop.android.shopping
%adb% shell pm %PmAction% com.amazon.mShop.android.shopping.vpl
%adb% shell am force-stop com.amazon.mShop.android.shopping.vpl
%adb% shell pm clear com.amazon.mShop.android.shopping.vpl
%adb% shell pm %PmAction% com.amazon.clouddrive.photos
%adb% shell am force-stop com.amazon.clouddrive.photos
%adb% shell pm clear com.amazon.clouddrive.photos
%adb% shell pm %PmAction% in.amazon.mShop.android.shopping
%adb% shell am force-stop in.amazon.mShop.android.shopping
%adb% shell pm clear in.amazon.mShop.android.shopping
rem Baidu
%adb% shell pm %PmAction% com.baidu.map.location
%adb% shell am force-stop com.baidu.map.location
%adb% shell pm clear com.baidu.map.location
rem Meta
%adb% shell pm %PmAction% com.facebook.katana
%adb% shell am force-stop com.facebook.katana
%adb% shell pm clear com.facebook.katana
%adb% shell pm %PmAction% com.facebook.system
%adb% shell am force-stop com.facebook.system
%adb% shell pm clear com.facebook.system
%adb% shell pm %PmAction% com.facebook.appmanager
%adb% shell am force-stop com.facebook.appmanager
%adb% shell pm clear com.facebook.appmanager
%adb% shell pm %PmAction% com.facebook.services
%adb% shell am force-stop com.facebook.services
%adb% shell pm clear com.facebook.services
%adb% shell pm %PmAction% com.facebook.orca
%adb% shell am force-stop com.facebook.orca
%adb% shell pm clear com.facebook.orca
%adb% shell pm %PmAction% com.instagram.android
%adb% shell am force-stop com.instagram.android
%adb% shell pm clear com.instagram.android
%adb% shell pm %PmAction% com.whatsapp
%adb% shell am force-stop com.whatsapp
%adb% shell pm clear com.whatsapp
rem Microsoft
%adb% shell pm %PmAction% com.microsoft.skydrive
%adb% shell am force-stop com.microsoft.skydrive
%adb% shell pm clear com.microsoft.skydrive
%adb% shell pm %PmAction% com.skype.raider
%adb% shell am force-stop com.skype.raider
%adb% shell pm clear com.skype.raider
%adb% shell pm %PmAction% com.microsoft.office.excel
%adb% shell am force-stop com.microsoft.office.excel
%adb% shell pm clear com.microsoft.office.excel
%adb% shell pm %PmAction% com.microsoft.office.word
%adb% shell am force-stop com.microsoft.office.word
%adb% shell pm clear com.microsoft.office.word
%adb% shell pm %PmAction% com.microsoft.office.outlook
%adb% shell am force-stop com.microsoft.office.outlook
%adb% shell pm clear com.microsoft.office.outlook
%adb% shell pm %PmAction% com.microsoft.office.powerpoint
%adb% shell am force-stop com.microsoft.office.powerpoint
%adb% shell pm clear com.microsoft.office.powerpoint
%adb% shell pm %PmAction% com.skype.m2
%adb% shell am force-stop com.skype.m2
%adb% shell pm clear com.skype.m2
%adb% shell pm %PmAction% com.microsoft.office.officehubhl
%adb% shell am force-stop com.microsoft.office.officehubhl
%adb% shell pm clear com.microsoft.office.officehubhl
%adb% shell pm %PmAction% com.microsoft.office.officehub
%adb% shell am force-stop com.microsoft.office.officehub
%adb% shell pm clear com.microsoft.office.officehub
%adb% shell pm %PmAction% com.microsoft.office.officehubrow
%adb% shell am force-stop com.microsoft.office.officehubrow
%adb% shell pm clear com.microsoft.office.officehubrow
%adb% shell pm %PmAction% com.microsoft.appmanager
%adb% shell am force-stop com.microsoft.appmanager
%adb% shell pm clear com.microsoft.appmanager
%adb% shell pm %PmAction% com.microsoft.translator
%adb% shell am force-stop com.microsoft.translator
%adb% shell pm clear com.microsoft.translator
if "!OpMode!"=="Android 4.3-" (
	%adb% kill-server
) else (
	echo Root (X)
)

echo.
echo ============================================================
echo.

if "!Language!"=="br" (
	echo CONCLUÍDO! Voltando para o menu anterior em 5 segundos.
) else if "!Language!"=="en" (
	echo FINISHED! Returning to the previous menu in 5 seconds.
)

timeout 5 > NUL
goto do-end

:do-manufacturers
cls
if "!OpMode!"=="Android 4.3-" (
	%adb% root
) else (
	echo Root (X)
)
rem ASUS
%adb% shell pm %PmAction% com.asus.calculator
%adb% shell am force-stop com.asus.calculator
%adb% shell pm clear com.asus.calculator
%adb% shell pm %PmAction% com.asus.easylauncher
%adb% shell am force-stop com.asus.easylauncher
%adb% shell pm clear com.asus.easylauncher
%adb% shell pm %PmAction% com.asus.ia.asusapp
%adb% shell am force-stop com.asus.ia.asusapp
%adb% shell pm clear com.asus.ia.asusapp
%adb% shell pm %PmAction% com.asus.soundrecorder
%adb% shell am force-stop com.asus.soundrecorder
%adb% shell pm clear com.asus.soundrecorder
%adb% shell pm %PmAction% com.asus.userfeedback
%adb% shell am force-stop com.asus.userfeedback
%adb% shell pm clear com.asus.userfeedback
%adb% shell pm %PmAction% com.asus.smartcalendar
%adb% shell am force-stop com.asus.smartcalendar
%adb% shell pm clear com.asus.smartcalendar
%adb% shell pm %PmAction% com.asus.cnmessage
%adb% shell am force-stop com.asus.cnmessage
%adb% shell pm clear com.asus.cnmessage
%adb% shell pm %PmAction% com.asus.asusincallui
%adb% shell am force-stop com.asus.asusincallui
%adb% shell pm clear com.asus.asusincallui
rem Acer
%adb% shell pm %PmAction% com.acer.android.liveupdater
%adb% shell am force-stop com.acer.android.liveupdater
%adb% shell pm clear com.acer.android.liveupdater
%adb% shell pm %PmAction% com.acer.pwrsavingctrl
%adb% shell am force-stop com.acer.pwrsavingctrl
%adb% shell pm clear com.acer.pwrsavingctrl
%adb% shell pm %PmAction% com.acer.android.service
%adb% shell am force-stop com.acer.android.service
%adb% shell pm clear com.acer.android.service
%adb% shell pm %PmAction% com.acer.android.acernidus
%adb% shell am force-stop com.acer.android.acernidus
%adb% shell pm clear com.acer.android.acernidus
%adb% shell pm %PmAction% com.acer.android.oobe
%adb% shell am force-stop com.acer.android.oobe
%adb% shell pm clear com.acer.android.oobe
%adb% shell pm %PmAction% com.acer.map.amundsen
%adb% shell am force-stop com.acer.map.amundsen
%adb% shell pm clear com.acer.map.amundsen
%adb% shell pm %PmAction% com.acer.ap.DemoVideo
%adb% shell am force-stop com.acer.ap.DemoVideo
%adb% shell pm clear com.acer.ap.DemoVideo
%adb% shell pm %PmAction% com.acer.ezhome
%adb% shell am force-stop com.acer.ezhome
%adb% shell pm clear com.acer.ezhome
%adb% shell pm %PmAction% android.autoinstalls.config.acer.acer_Vulcan
%adb% shell am force-stop android.autoinstalls.config.acer.acer_Vulcan
%adb% shell pm clear android.autoinstalls.config.acer.acer_Vulcan
%adb% shell pm %PmAction% com.acer.ezhome.res
%adb% shell am force-stop com.acer.ezhome.res
%adb% shell pm clear com.acer.ezhome.res
%adb% shell pm %PmAction% com.acer.suw.opa
%adb% shell am force-stop com.acer.suw.opa
%adb% shell pm clear com.acer.suw.opa
rem Huawei
%adb% shell pm %PmAction% com.android.keyguard
%adb% shell am force-stop com.android.keyguard
%adb% shell pm clear com.android.keyguard
%adb% shell pm %PmAction% com.android.hwmirror
%adb% shell am force-stop com.android.hwmirror
%adb% shell pm clear com.android.hwmirror
%adb% shell pm %PmAction% com.baidu.input_huawei
%adb% shell am force-stop com.baidu.input_huawei
%adb% shell pm clear com.baidu.input_huawei
%adb% shell pm %PmAction% com.hicloud.android.clone
%adb% shell am force-stop com.hicloud.android.clone
%adb% shell pm clear com.hicloud.android.clone
%adb% shell pm %PmAction% com.huawei.android.chr
%adb% shell am force-stop com.huawei.android.chr
%adb% shell pm clear com.huawei.android.chr
%adb% shell pm %PmAction% com.huawei.android.FloatTasks
%adb% shell am force-stop com.huawei.android.FloatTasks
%adb% shell pm clear com.huawei.android.FloatTasks
%adb% shell pm %PmAction% com.huawei.android.hsf
%adb% shell am force-stop com.huawei.android.hsf
%adb% shell pm clear com.huawei.android.hsf
%adb% shell pm %PmAction% com.huawei.android.hwpay
%adb% shell am force-stop com.huawei.android.hwpay
%adb% shell pm clear com.huawei.android.hwpay
%adb% shell pm %PmAction% com.huawei.android.instantonline
%adb% shell am force-stop com.huawei.android.instantonline
%adb% shell pm clear com.huawei.android.instantonline
%adb% shell pm %PmAction% com.huawei.android.instantshare
%adb% shell am force-stop com.huawei.android.instantshare
%adb% shell pm clear com.huawei.android.instantshare
%adb% shell pm %PmAction% com.huawei.android.karaoke
%adb% shell am force-stop com.huawei.android.karaoke
%adb% shell pm clear com.huawei.android.karaoke
%adb% shell pm %PmAction% com.huawei.android.mirrorshare
%adb% shell am force-stop com.huawei.android.mirrorshare
%adb% shell pm clear com.huawei.android.mirrorshare
%adb% shell pm %PmAction% com.huawei.android.pushagent
%adb% shell am force-stop com.huawei.android.pushagent
%adb% shell pm clear com.huawei.android.pushagent
%adb% shell pm %PmAction% com.huawei.android.remotecontroller
%adb% shell am force-stop com.huawei.android.remotecontroller
%adb% shell pm clear com.huawei.android.remotecontroller
%adb% shell pm %PmAction% com.huawei.android.tips
%adb% shell am force-stop com.huawei.android.tips
%adb% shell pm clear com.huawei.android.tips
%adb% shell pm %PmAction% com.huawei.android.totemweather
%adb% shell am force-stop com.huawei.android.totemweather
%adb% shell pm clear com.huawei.android.totemweather
%adb% shell pm %PmAction% com.huawei.android.totemweatherapp
%adb% shell am force-stop com.huawei.android.totemweatherapp
%adb% shell pm clear com.huawei.android.totemweatherapp
%adb% shell pm %PmAction% com.huawei.android.totemweatherwidget
%adb% shell am force-stop com.huawei.android.totemweatherwidget
%adb% shell pm clear com.huawei.android.totemweatherwidget
%adb% shell pm %PmAction% com.huawei.android.wfdft
%adb% shell am force-stop com.huawei.android.wfdft
%adb% shell pm clear com.huawei.android.wfdft
%adb% shell pm %PmAction% com.huawei.android.wfdirect
%adb% shell am force-stop com.huawei.android.wfdirect
%adb% shell pm clear com.huawei.android.wfdirect
%adb% shell pm %PmAction% com.huawei.appmarket
%adb% shell am force-stop com.huawei.appmarket
%adb% shell pm clear com.huawei.appmarket
%adb% shell pm %PmAction% com.huawei.arengine.service
%adb% shell am force-stop com.huawei.arengine.service
%adb% shell pm clear com.huawei.arengine.service
%adb% shell pm %PmAction% com.huawei.bd
%adb% shell am force-stop com.huawei.bd
%adb% shell pm clear com.huawei.bd
%adb% shell pm %PmAction% com.huawei.bluetooth
%adb% shell am force-stop com.huawei.bluetooth
%adb% shell pm clear com.huawei.bluetooth
%adb% shell pm %PmAction% com.huawei.browser
%adb% shell am force-stop com.huawei.browser
%adb% shell pm clear com.huawei.browser
%adb% shell pm %PmAction% com.huawei.browserhomepage
%adb% shell am force-stop com.huawei.browserhomepage
%adb% shell pm clear com.huawei.browserhomepage
%adb% shell pm %PmAction% com.huawei.compass
%adb% shell am force-stop com.huawei.compass
%adb% shell pm clear com.huawei.compass
%adb% shell pm %PmAction% com.huawei.contactscamcard
%adb% shell am force-stop com.huawei.contactscamcard
%adb% shell pm clear com.huawei.contactscamcard
%adb% shell pm %PmAction% com.huawei.contacts.sync
%adb% shell am force-stop com.huawei.contacts.sync
%adb% shell pm clear com.huawei.contacts.sync
%adb% shell pm %PmAction% com.huawei.desktop.explorer
%adb% shell am force-stop com.huawei.desktop.explorer
%adb% shell pm clear com.huawei.desktop.explorer
%adb% shell pm %PmAction% com.huawei.email
%adb% shell am force-stop com.huawei.email
%adb% shell pm clear com.huawei.email
%adb% shell pm %PmAction% com.huawei.fido.uafclient
%adb% shell am force-stop com.huawei.fido.uafclient
%adb% shell pm clear com.huawei.fido.uafclient
%adb% shell pm %PmAction% com.huawei.game.kitserver
%adb% shell am force-stop com.huawei.game.kitserver
%adb% shell pm clear com.huawei.game.kitserver
%adb% shell pm %PmAction% com.huawei.gameassistant
%adb% shell am force-stop com.huawei.gameassistant
%adb% shell pm clear com.huawei.gameassistant
%adb% shell pm %PmAction% com.huawei.geofence
%adb% shell am force-stop com.huawei.geofence
%adb% shell pm clear com.huawei.geofence
%adb% shell pm %PmAction% com.huawei.hwsearch
%adb% shell am force-stop com.huawei.hwsearch
%adb% shell pm clear com.huawei.hwsearch
%adb% shell pm %PmAction% com.huawei.hwid
%adb% shell am force-stop com.huawei.hwid
%adb% shell pm clear com.huawei.hwid
%adb% shell pm %PmAction% com.huawei.hiaction
%adb% shell am force-stop com.huawei.hiaction
%adb% shell pm clear com.huawei.hiaction
%adb% shell pm %PmAction% com.huawei.hiai
%adb% shell am force-stop com.huawei.hiai
%adb% shell pm clear com.huawei.hiai
%adb% shell pm %PmAction% com.huawei.hiassistantoversea
%adb% shell am force-stop com.huawei.hiassistantoversea
%adb% shell pm clear com.huawei.hiassistantoversea
%adb% shell pm %PmAction% com.huawei.hicard
%adb% shell am force-stop com.huawei.hicard
%adb% shell pm clear com.huawei.hicard
%adb% shell pm %PmAction% com.huawei.hicloud
%adb% shell am force-stop com.huawei.hicloud
%adb% shell pm clear com.huawei.hicloud
%adb% shell pm %PmAction% com.huawei.hifolder
%adb% shell am force-stop com.huawei.hifolder
%adb% shell pm clear com.huawei.hifolder
%adb% shell pm %PmAction% com.huawei.himovie.overseas
%adb% shell am force-stop com.huawei.himovie.overseas
%adb% shell pm clear com.huawei.himovie.overseas
%adb% shell pm %PmAction% com.huawei.hitouch
%adb% shell am force-stop com.huawei.hitouch
%adb% shell pm clear com.huawei.hitouch
%adb% shell pm %PmAction% com.huawei.hwasm
%adb% shell am force-stop com.huawei.hwasm
%adb% shell pm clear com.huawei.hwasm
%adb% shell pm %PmAction% com.huawei.hwblockchain
%adb% shell am force-stop com.huawei.hwblockchain
%adb% shell pm clear com.huawei.hwblockchain
%adb% shell pm %PmAction% com.huawei.hwdetectrepair
%adb% shell am force-stop com.huawei.hwdetectrepair
%adb% shell pm clear com.huawei.hwdetectrepair
%adb% shell pm %PmAction% com.huawei.hwstartupguide
%adb% shell am force-stop com.huawei.hwstartupguide
%adb% shell pm clear com.huawei.hwstartupguide
%adb% shell pm %PmAction% com.huawei.hwvoipservice
%adb% shell am force-stop com.huawei.hwvoipservice
%adb% shell pm clear com.huawei.hwvoipservice
%adb% shell pm %PmAction% com.huawei.iaware
%adb% shell am force-stop com.huawei.iaware
%adb% shell pm clear com.huawei.iaware
%adb% shell pm %PmAction% com.huawei.ihealth
%adb% shell am force-stop com.huawei.ihealth
%adb% shell pm clear com.huawei.ihealth
%adb% shell pm %PmAction% com.huawei.intelligent
%adb% shell am force-stop com.huawei.intelligent
%adb% shell pm clear com.huawei.intelligent
%adb% shell pm %PmAction% com.huawei.health
%adb% shell am force-stop com.huawei.health
%adb% shell pm clear com.huawei.health
%adb% shell pm %PmAction% com.huawei.livewallpaper.paradise
%adb% shell am force-stop com.huawei.livewallpaper.paradise
%adb% shell pm clear com.huawei.livewallpaper.paradise
%adb% shell pm %PmAction% com.huawei.livewallpaper.artflower
%adb% shell am force-stop com.huawei.livewallpaper.artflower
%adb% shell pm clear com.huawei.livewallpaper.artflower
%adb% shell pm %PmAction% com.huawei.livewallpaper.flowersbloom
%adb% shell am force-stop com.huawei.livewallpaper.flowersbloom
%adb% shell pm clear com.huawei.livewallpaper.flowersbloom
%adb% shell pm %PmAction% com.huawei.livewallpaper.mountaincloud
%adb% shell am force-stop com.huawei.livewallpaper.mountaincloud
%adb% shell pm clear com.huawei.livewallpaper.mountaincloud
%adb% shell pm %PmAction% com.huawei.livewallpaper.naturalgarden
%adb% shell am force-stop com.huawei.livewallpaper.naturalgarden
%adb% shell pm clear com.huawei.livewallpaper.naturalgarden
%adb% shell pm %PmAction% com.huawei.livewallpaper.ripplestone
%adb% shell am force-stop com.huawei.livewallpaper.ripplestone
%adb% shell pm clear com.huawei.livewallpaper.ripplestone
%adb% shell pm %PmAction% com.huawei.magazine
%adb% shell am force-stop com.huawei.magazine
%adb% shell pm clear com.huawei.magazine
%adb% shell pm %PmAction% com.huawei.mirror
%adb% shell am force-stop com.huawei.mirror
%adb% shell pm clear com.huawei.mirror
%adb% shell pm %PmAction% com.huawei.mirrorlink
%adb% shell am force-stop com.huawei.mirrorlink
%adb% shell pm clear com.huawei.mirrorlink
%adb% shell pm %PmAction% com.huawei.music
%adb% shell am force-stop com.huawei.music
%adb% shell pm clear com.huawei.music
%adb% shell pm %PmAction% com.huawei.parentcontrol
%adb% shell am force-stop com.huawei.parentcontrol
%adb% shell pm clear com.huawei.parentcontrol
%adb% shell pm %PmAction% com.huawei.pcassistant
%adb% shell am force-stop com.huawei.pcassistant
%adb% shell pm clear com.huawei.pcassistant
%adb% shell pm %PmAction% com.huawei.phoneservice
%adb% shell am force-stop com.huawei.phoneservice
%adb% shell pm clear com.huawei.phoneservice
%adb% shell pm %PmAction% com.huawei.scanner
%adb% shell am force-stop com.huawei.scanner
%adb% shell pm clear com.huawei.scanner
%adb% shell pm %PmAction% com.huawei.stylus.floatmenu
%adb% shell am force-stop com.huawei.stylus.floatmenu
%adb% shell pm clear com.huawei.stylus.floatmenu
%adb% shell pm %PmAction% com.huawei.synergy
%adb% shell am force-stop com.huawei.synergy
%adb% shell pm clear com.huawei.synergy
%adb% shell pm %PmAction% com.huawei.tips
%adb% shell am force-stop com.huawei.tips
%adb% shell pm clear com.huawei.tips
%adb% shell pm %PmAction% com.huawei.trustagent
%adb% shell am force-stop com.huawei.trustagent
%adb% shell pm clear com.huawei.trustagent
%adb% shell pm %PmAction% com.huawei.vassistant
%adb% shell am force-stop com.huawei.vassistant
%adb% shell pm clear com.huawei.vassistant
%adb% shell pm %PmAction% com.huawei.videoeditor
%adb% shell am force-stop com.huawei.videoeditor
%adb% shell pm clear com.huawei.videoeditor
%adb% shell pm %PmAction% com.huawei.wallet
%adb% shell am force-stop com.huawei.wallet
%adb% shell pm clear com.huawei.wallet
%adb% shell pm %PmAction% com.huawei.watch.sync
%adb% shell am force-stop com.huawei.watch.sync
%adb% shell pm clear com.huawei.watch.sync
%adb% shell pm %PmAction% com.iflytek.speechsuite
%adb% shell am force-stop com.iflytek.speechsuite
%adb% shell pm clear com.iflytek.speechsuite
%adb% shell pm %PmAction% com.nuance.swype.emui
%adb% shell am force-stop com.nuance.swype.emui
%adb% shell pm clear com.nuance.swype.emui
rem LG
%adb% shell pm %PmAction% com.android.LGSetupWizard
%adb% shell am force-stop com.android.LGSetupWizard
%adb% shell pm clear com.android.LGSetupWizard
%adb% shell pm %PmAction% com.lge.appbox.client
%adb% shell am force-stop com.lge.appbox.client
%adb% shell pm clear com.lge.appbox.client
%adb% shell pm %PmAction% com.lge.bnr
%adb% shell am force-stop com.lge.bnr
%adb% shell pm clear com.lge.bnr
%adb% shell pm %PmAction% com.lge.cic.eden.service
%adb% shell am force-stop com.lge.cic.eden.service
%adb% shell pm clear com.lge.cic.eden.service
%adb% shell pm %PmAction% com.lge.cloudhub
%adb% shell am force-stop com.lge.cloudhub
%adb% shell pm clear com.lge.cloudhub
%adb% shell pm %PmAction% com.lge.drmservice
%adb% shell am force-stop com.lge.drmservice
%adb% shell pm clear com.lge.drmservice
%adb% shell pm %PmAction% com.lge.easyhome
%adb% shell am force-stop com.lge.easyhome
%adb% shell pm clear com.lge.easyhome
%adb% shell pm %PmAction% com.lge.eltest
%adb% shell am force-stop com.lge.eltest
%adb% shell pm clear com.lge.eltest
%adb% shell pm %PmAction% com.lge.email
%adb% shell am force-stop com.lge.email
%adb% shell pm clear com.lge.email
%adb% shell pm %PmAction% com.lge.eula
%adb% shell am force-stop com.lge.eula
%adb% shell pm clear com.lge.eula
%adb% shell pm %PmAction% com.lge.eulaprovider
%adb% shell am force-stop com.lge.eulaprovider
%adb% shell pm clear com.lge.eulaprovider
%adb% shell pm %PmAction% com.lge.fmradio
%adb% shell am force-stop com.lge.fmradio
%adb% shell pm clear com.lge.fmradio
%adb% shell pm %PmAction% com.lge.friendsmanager
%adb% shell am force-stop com.lge.friendsmanager
%adb% shell pm clear com.lge.friendsmanager
%adb% shell pm %PmAction% com.lge.gallery.collagewallpaper
%adb% shell am force-stop com.lge.gallery.collagewallpaper
%adb% shell pm clear com.lge.gallery.collagewallpaper
%adb% shell pm %PmAction% com.lge.gallery.vr.wallpaper
%adb% shell am force-stop com.lge.gallery.vr.wallpaper
%adb% shell pm clear com.lge.gallery.vr.wallpaper
%adb% shell pm %PmAction% com.lge.gcuv
%adb% shell am force-stop com.lge.gcuv
%adb% shell pm clear com.lge.gcuv
%adb% shell pm %PmAction% com.lge.gestureanswering
%adb% shell am force-stop com.lge.gestureanswering
%adb% shell pm clear com.lge.gestureanswering
%adb% shell pm %PmAction% com.lge.gnss.airtest
%adb% shell am force-stop com.lge.gnss.airtest
%adb% shell pm clear com.lge.gnss.airtest
%adb% shell pm %PmAction% com.lge.gnsslogcat
%adb% shell am force-stop com.lge.gnsslogcat
%adb% shell pm clear com.lge.gnsslogcat
%adb% shell pm %PmAction% com.lge.gnsspostest
%adb% shell am force-stop com.lge.gnsspostest
%adb% shell pm clear com.lge.gnsspostest
%adb% shell pm %PmAction% com.lge.gnsstest
%adb% shell am force-stop com.lge.gnsstest
%adb% shell pm clear com.lge.gnsstest
%adb% shell pm %PmAction% com.lge.hifirecorder
%adb% shell am force-stop com.lge.hifirecorder
%adb% shell pm clear com.lge.hifirecorder
%adb% shell pm %PmAction% com.lge.hotspotlauncher
%adb% shell am force-stop com.lge.hotspotlauncher
%adb% shell pm clear com.lge.hotspotlauncher
%adb% shell pm %PmAction% com.lge.ia.task.smartcare
%adb% shell am force-stop com.lge.ia.task.smartcare
%adb% shell pm clear com.lge.ia.task.smartcare
%adb% shell pm %PmAction% com.lge.ia.task.smartsetting
%adb% shell am force-stop com.lge.ia.task.smartsetting
%adb% shell pm clear com.lge.ia.task.smartsetting
%adb% shell pm %PmAction% com.lge.iftttmanager
%adb% shell am force-stop com.lge.iftttmanager
%adb% shell pm clear com.lge.iftttmanager
%adb% shell pm %PmAction% com.lge.ime.solution.handwriting
%adb% shell am force-stop com.lge.ime.solution.handwriting
%adb% shell pm clear com.lge.ime.solution.handwriting
%adb% shell pm %PmAction% com.lge.ime.solution.text
%adb% shell am force-stop com.lge.ime.solution.text
%adb% shell pm clear com.lge.ime.solution.text
%adb% shell pm %PmAction% com.lge.launcher2.theme.optimus
%adb% shell am force-stop com.lge.launcher2.theme.optimus
%adb% shell pm clear com.lge.launcher2.theme.optimus
%adb% shell pm %PmAction% com.lge.leccp
%adb% shell am force-stop com.lge.leccp
%adb% shell pm clear com.lge.leccp
%adb% shell pm %PmAction% com.lge.lgaccount
%adb% shell am force-stop com.lge.lgaccount
%adb% shell pm clear com.lge.lgaccount
%adb% shell pm %PmAction% com.lge.lgdrm.permission
%adb% shell am force-stop com.lge.lgdrm.permission
%adb% shell pm clear com.lge.lgdrm.permission
%adb% shell pm %PmAction% com.lge.lginstallservies
%adb% shell am force-stop com.lge.lginstallservies
%adb% shell pm clear com.lge.lginstallservies
%adb% shell pm %PmAction% com.lge.lgmapui
%adb% shell am force-stop com.lge.lgmapui
%adb% shell pm clear com.lge.lgmapui
%adb% shell pm %PmAction% com.lge.lgsetupview
%adb% shell am force-stop com.lge.lgsetupview
%adb% shell pm clear com.lge.lgsetupview
%adb% shell pm %PmAction% com.lge.LGSetupView
%adb% shell am force-stop com.lge.LGSetupView
%adb% shell pm clear com.lge.LGSetupView
%adb% shell pm %PmAction% com.lge.lgworld
%adb% shell am force-stop com.lge.lgworld
%adb% shell pm clear com.lge.lgworld
%adb% shell pm %PmAction% com.lge.lifetracker
%adb% shell am force-stop com.lge.lifetracker
%adb% shell pm clear com.lge.lifetracker
%adb% shell pm %PmAction% com.lge.mirrorlink
%adb% shell am force-stop com.lge.mirrorlink
%adb% shell pm clear com.lge.mirrorlink
%adb% shell pm %PmAction% com.lge.mlt
%adb% shell am force-stop com.lge.mlt
%adb% shell pm clear com.lge.mlt
%adb% shell pm %PmAction% com.lge.mtalk.sf
%adb% shell am force-stop com.lge.mtalk.sf
%adb% shell pm clear com.lge.mtalk.sf
%adb% shell pm %PmAction% com.lge.musicshare
%adb% shell am force-stop com.lge.musicshare
%adb% shell pm clear com.lge.musicshare
%adb% shell pm %PmAction% com.lge.myplace
%adb% shell am force-stop com.lge.myplace
%adb% shell pm clear com.lge.myplace
%adb% shell pm %PmAction% com.lge.myplace.engine
%adb% shell am force-stop com.lge.myplace.engine
%adb% shell pm clear com.lge.myplace.engine
%adb% shell pm %PmAction% com.lge.phonemanagement
%adb% shell am force-stop com.lge.phonemanagement
%adb% shell pm clear com.lge.phonemanagement
%adb% shell pm %PmAction% com.lge.privacylock
%adb% shell am force-stop com.lge.privacylock
%adb% shell pm clear com.lge.privacylock
%adb% shell pm %PmAction% com.lge.qhelp
%adb% shell am force-stop com.lge.qhelp
%adb% shell pm clear com.lge.qhelp
%adb% shell pm %PmAction% com.lge.qhelp.application
%adb% shell am force-stop com.lge.qhelp.application
%adb% shell pm clear com.lge.qhelp.application
%adb% shell pm %PmAction% com.lge.qmemoplus
%adb% shell am force-stop com.lge.qmemoplus
%adb% shell pm clear com.lge.qmemoplus
%adb% shell pm %PmAction% com.lge.remote.lgairdrive
%adb% shell am force-stop com.lge.remote.lgairdrive
%adb% shell pm clear com.lge.remote.lgairdrive
%adb% shell pm %PmAction% com.lge.remote.setting
%adb% shell am force-stop com.lge.remote.setting
%adb% shell pm clear com.lge.remote.setting
%adb% shell pm %PmAction% com.lge.sizechangable.musicwidget.widget
%adb% shell am force-stop com.lge.sizechangable.musicwidget.widget
%adb% shell pm clear com.lge.sizechangable.musicwidget.widget
%adb% shell pm %PmAction% com.lge.sizechangable.weather
%adb% shell am force-stop com.lge.sizechangable.weather
%adb% shell pm clear com.lge.sizechangable.weather
%adb% shell pm %PmAction% com.lge.sizechangable.weather.platform
%adb% shell am force-stop com.lge.sizechangable.weather.platform
%adb% shell pm clear com.lge.sizechangable.weather.platform
%adb% shell pm %PmAction% com.lge.sizechangable.weather.theme.optimus
%adb% shell am force-stop com.lge.sizechangable.weather.theme.optimus
%adb% shell pm clear com.lge.sizechangable.weather.theme.optimus
%adb% shell pm %PmAction% com.lge.smartdoctor.webview
%adb% shell am force-stop com.lge.smartdoctor.webview
%adb% shell pm clear com.lge.smartdoctor.webview
%adb% shell pm %PmAction% com.lge.smartshare
%adb% shell am force-stop com.lge.smartshare
%adb% shell pm clear com.lge.smartshare
%adb% shell pm %PmAction% com.lge.smartshare.provider
%adb% shell am force-stop com.lge.smartshare.provider
%adb% shell pm clear com.lge.smartshare.provider
%adb% shell pm %PmAction% com.lge.smartsharepush
%adb% shell am force-stop com.lge.smartsharepush
%adb% shell pm clear com.lge.smartsharepush
%adb% shell pm %PmAction% com.lge.snappage
%adb% shell am force-stop com.lge.snappage
%adb% shell pm clear com.lge.snappage
%adb% shell pm %PmAction% com.lge.springcleaning
%adb% shell am force-stop com.lge.springcleaning
%adb% shell pm clear com.lge.springcleaning
%adb% shell pm %PmAction% com.lge.sync
%adb% shell am force-stop com.lge.sync
%adb% shell pm clear com.lge.sync
%adb% shell pm %PmAction% com.lge.video.vr.wallpaper
%adb% shell am force-stop com.lge.video.vr.wallpaper
%adb% shell pm clear com.lge.video.vr.wallpaper
%adb% shell pm %PmAction% com.lge.videoplayer
%adb% shell am force-stop com.lge.videoplayer
%adb% shell pm clear com.lge.videoplayer
%adb% shell pm %PmAction% com.lge.videostudio
%adb% shell am force-stop com.lge.videostudio
%adb% shell pm clear com.lge.videostudio
%adb% shell pm %PmAction% com.lge.voicecare
%adb% shell am force-stop com.lge.voicecare
%adb% shell pm clear com.lge.voicecare
%adb% shell pm %PmAction% com.lge.vrplayer
%adb% shell am force-stop com.lge.vrplayer
%adb% shell pm clear com.lge.vrplayer
%adb% shell pm %PmAction% com.lge.wernicke
%adb% shell am force-stop com.lge.wernicke
%adb% shell pm clear com.lge.wernicke
%adb% shell pm %PmAction% com.lge.wernicke.nlp
%adb% shell am force-stop com.lge.wernicke.nlp
%adb% shell pm clear com.lge.wernicke.nlp
%adb% shell pm %PmAction% com.lge.wfd.spmirroring.source
%adb% shell am force-stop com.lge.wfd.spmirroring.source
%adb% shell pm clear com.lge.wfd.spmirroring.source
%adb% shell pm %PmAction% com.lge.wfds.service.v3
%adb% shell am force-stop com.lge.wfds.service.v3
%adb% shell pm clear com.lge.wfds.service.v3
%adb% shell pm %PmAction% com.lge.wifi.p2p
%adb% shell am force-stop com.lge.wifi.p2p
%adb% shell pm clear com.lge.wifi.p2p
%adb% shell pm %PmAction% com.lge.wifihotspotwidget
%adb% shell am force-stop com.lge.wifihotspotwidget
%adb% shell pm clear com.lge.wifihotspotwidget
%adb% shell pm %PmAction% com.lge.appwidget.dualsimstatus
%adb% shell am force-stop com.lge.appwidget.dualsimstatus
%adb% shell pm clear com.lge.appwidget.dualsimstatus
%adb% shell pm %PmAction% com.lge.hiddenpersomenu
%adb% shell am force-stop com.lge.hiddenpersomenu
%adb% shell pm clear com.lge.hiddenpersomenu
%adb% shell pm %PmAction% com.lge.hiddenmenu
%adb% shell am force-stop com.lge.hiddenmenu
%adb% shell pm clear com.lge.hiddenmenu
%adb% shell pm %PmAction% com.lge.operator.hiddenmenu
%adb% shell am force-stop com.lge.operator.hiddenmenu
%adb% shell pm clear com.lge.operator.hiddenmenu
%adb% shell pm %PmAction% com.rsupport.rs.activity.lge.allinone
%adb% shell am force-stop com.rsupport.rs.activity.lge.allinone
%adb% shell pm clear com.rsupport.rs.activity.lge.allinone
%adb% shell pm %PmAction% com.lge.laot
%adb% shell am force-stop com.lge.laot
%adb% shell pm clear com.lge.laot
%adb% shell pm %PmAction% com.lge.lgfmservice
%adb% shell am force-stop com.lge.lgfmservice
%adb% shell pm clear com.lge.lgfmservice
%adb% shell pm %PmAction% com.lge.bnr.launcher
%adb% shell am force-stop com.lge.bnr.launcher
%adb% shell pm clear com.lge.bnr.launcher
%adb% shell pm %PmAction% com.lge.homeselector
%adb% shell am force-stop com.lge.homeselector
%adb% shell pm clear com.lge.homeselector
%adb% shell pm %PmAction% com.lge.music
%adb% shell am force-stop com.lge.music
%adb% shell pm clear com.lge.music
%adb% shell pm %PmAction% com.lge.floatingbar
%adb% shell am force-stop com.lge.floatingbar
%adb% shell pm clear com.lge.floatingbar
rem Motorola
%adb% shell pm %PmAction% android.autoinstalls.config.motorola.layout
%adb% shell am force-stop android.autoinstalls.config.motorola.layout
%adb% shell pm clear android.autoinstalls.config.motorola.layout
%adb% shell pm %PmAction% com.lenovo.lsf.user
%adb% shell am force-stop com.lenovo.lsf.user
%adb% shell pm clear com.lenovo.lsf.user
%adb% shell pm %PmAction% com.lmi.motorola.rescuesecurity
%adb% shell am force-stop com.lmi.motorola.rescuesecurity
%adb% shell pm clear com.lmi.motorola.rescuesecurity
%adb% shell pm %PmAction% com.motorola.android.fmradio
%adb% shell am force-stop com.motorola.android.fmradio
%adb% shell pm clear com.motorola.android.fmradio
%adb% shell pm %PmAction% com.motorola.android.jvtcmd
%adb% shell am force-stop com.motorola.android.jvtcmd
%adb% shell pm clear com.motorola.android.jvtcmd
%adb% shell pm %PmAction% com.motorola.android.nativedropboxagent
%adb% shell am force-stop com.motorola.android.nativedropboxagent
%adb% shell pm clear com.motorola.android.nativedropboxagent
%adb% shell pm %PmAction% com.motorola.android.providers.chromehomepage
%adb% shell am force-stop com.motorola.android.providers.chromehomepage
%adb% shell pm clear com.motorola.android.providers.chromehomepage
%adb% shell pm %PmAction% com.motorola.android.provisioning
%adb% shell am force-stop com.motorola.android.provisioning
%adb% shell pm clear com.motorola.android.provisioning
%adb% shell pm %PmAction% com.motorola.android.settings.diag_mdlog
%adb% shell am force-stop com.motorola.android.settings.diag_mdlog
%adb% shell pm clear com.motorola.android.settings.diag_mdlog
%adb% shell pm %PmAction% com.motorola.android.settings.modemdebug
%adb% shell am force-stop com.motorola.android.settings.modemdebug
%adb% shell pm clear com.motorola.android.settings.modemdebug
%adb% shell pm %PmAction% com.motorola.appdirectedsmsproxy
%adb% shell am force-stop com.motorola.appdirectedsmsproxy
%adb% shell pm clear com.motorola.appdirectedsmsproxy
%adb% shell pm %PmAction% com.motorola.bach.modemstats
%adb% shell am force-stop com.motorola.bach.modemstats
%adb% shell pm clear com.motorola.bach.modemstats
%adb% shell pm %PmAction% com.motorola.brapps
%adb% shell am force-stop com.motorola.brapps
%adb% shell pm clear com.motorola.brapps
%adb% shell pm %PmAction% com.motorola.bug2go
%adb% shell am force-stop com.motorola.bug2go
%adb% shell pm clear com.motorola.bug2go
%adb% shell pm %PmAction% com.motorola.ccc.devicemanagement
%adb% shell am force-stop com.motorola.ccc.devicemanagement
%adb% shell pm clear com.motorola.ccc.devicemanagement
%adb% shell pm %PmAction% com.motorola.ccc.mainplm
%adb% shell am force-stop com.motorola.ccc.mainplm
%adb% shell pm clear com.motorola.ccc.mainplm
%adb% shell pm %PmAction% com.motorola.ccc.notification
%adb% shell am force-stop com.motorola.ccc.notification
%adb% shell pm clear com.motorola.ccc.notification
%adb% shell pm %PmAction% com.motorola.contacts.preloadcontacts
%adb% shell am force-stop com.motorola.contacts.preloadcontacts
%adb% shell pm clear com.motorola.contacts.preloadcontacts
%adb% shell pm %PmAction% com.motorola.demo
%adb% shell am force-stop com.motorola.demo
%adb% shell pm clear com.motorola.demo
%adb% shell pm %PmAction% com.motorola.demo.env
%adb% shell am force-stop com.motorola.demo.env
%adb% shell pm clear com.motorola.demo.env
%adb% shell pm %PmAction% com.motorola.easyprefix
%adb% shell am force-stop com.motorola.easyprefix
%adb% shell pm clear com.motorola.easyprefix
%adb% shell pm %PmAction% com.motorola.email
%adb% shell am force-stop com.motorola.email
%adb% shell pm clear com.motorola.email
%adb% shell pm %PmAction% com.motorola.fmplayer
%adb% shell am force-stop com.motorola.fmplayer
%adb% shell pm clear com.motorola.fmplayer
%adb% shell pm %PmAction% com.motorola.frameworks.singlehand
%adb% shell am force-stop com.motorola.frameworks.singlehand
%adb% shell pm clear com.motorola.frameworks.singlehand
%adb% shell pm %PmAction% com.motorola.genie
%adb% shell am force-stop com.motorola.genie
%adb% shell pm clear com.motorola.genie
%adb% shell pm %PmAction% com.motorola.gesture
%adb% shell am force-stop com.motorola.gesture
%adb% shell pm clear com.motorola.gesture
%adb% shell pm %PmAction% com.motorola.help
%adb% shell am force-stop com.motorola.help
%adb% shell pm clear com.motorola.help
%adb% shell pm %PmAction% com.motorola.lifetimedata
%adb% shell am force-stop com.motorola.lifetimedata
%adb% shell pm clear com.motorola.lifetimedata
%adb% shell pm %PmAction% com.motorola.hiddenmenuapp
%adb% shell am force-stop com.motorola.hiddenmenuapp
%adb% shell pm clear com.motorola.hiddenmenuapp
%adb% shell pm %PmAction% com.motorola.moto
%adb% shell am force-stop com.motorola.moto
%adb% shell pm clear com.motorola.moto
%adb% shell pm %PmAction% com.motorola.motocare
%adb% shell am force-stop com.motorola.motocare
%adb% shell pm clear com.motorola.motocare
%adb% shell pm %PmAction% com.motorola.motocare.internal
%adb% shell am force-stop com.motorola.motocare.internal
%adb% shell pm clear com.motorola.motocare.internal
%adb% shell pm %PmAction% com.motorola.motocit
%adb% shell am force-stop com.motorola.motocit
%adb% shell pm clear com.motorola.motocit
%adb% shell pm %PmAction% com.motorola.motodisplay
%adb% shell am force-stop com.motorola.motodisplay
%adb% shell pm clear com.motorola.motodisplay
%adb% shell pm %PmAction% com.motorola.paks
%adb% shell am force-stop com.motorola.paks
%adb% shell pm clear com.motorola.paks
%adb% shell pm %PmAction% com.motorola.programmenu
%adb% shell am force-stop com.motorola.programmenu
%adb% shell pm clear com.motorola.programmenu
%adb% shell pm %PmAction% com.motorola.ptt.prip
%adb% shell am force-stop com.motorola.ptt.prip
%adb% shell pm clear com.motorola.ptt.prip
%adb% shell pm %PmAction% com.motorola.setup
%adb% shell am force-stop com.motorola.setup
%adb% shell pm clear com.motorola.setup
%adb% shell pm %PmAction% com.motorola.slpc_sys
%adb% shell am force-stop com.motorola.slpc_sys
%adb% shell pm clear com.motorola.slpc_sys
%adb% shell pm %PmAction% com.motorola.timeweatherwidget
%adb% shell am force-stop com.motorola.timeweatherwidget
%adb% shell pm clear com.motorola.timeweatherwidget
%adb% shell pm %PmAction% com.motorola.actions
%adb% shell am force-stop com.motorola.actions
%adb% shell pm clear com.motorola.actions
%adb% shell pm %PmAction% com.motorola.carriersettingsext
%adb% shell am force-stop com.motorola.carriersettingsext
%adb% shell pm clear com.motorola.carriersettingsext
%adb% shell pm %PmAction% com.motorola.comcast.settings.extensions
%adb% shell am force-stop com.motorola.comcast.settings.extensions
%adb% shell pm clear com.motorola.comcast.settings.extensions
%adb% shell pm %PmAction% com.motorola.comcastext
%adb% shell am force-stop com.motorola.comcastext
%adb% shell pm clear com.motorola.comcastext
%adb% shell pm %PmAction% com.motorola.faceunlock
%adb% shell am force-stop com.motorola.faceunlock
%adb% shell pm clear com.motorola.faceunlock
%adb% shell pm %PmAction% com.motorola.faceunlocktrustagent
%adb% shell am force-stop com.motorola.faceunlocktrustagent
%adb% shell pm clear com.motorola.faceunlocktrustagent
%adb% shell pm %PmAction% com.motorola.invisiblenet
%adb% shell am force-stop com.motorola.invisiblenet
%adb% shell pm clear com.motorola.invisiblenet
%adb% shell pm %PmAction% com.motorola.motosignature.app
%adb% shell am force-stop com.motorola.motosignature.app
%adb% shell pm clear com.motorola.motosignature.app
%adb% shell pm %PmAction% com.motorola.omadm.service
%adb% shell am force-stop com.motorola.omadm.service
%adb% shell pm clear com.motorola.omadm.service
%adb% shell pm %PmAction% com.motorola.pgmsystem2
%adb% shell am force-stop com.motorola.pgmsystem2
%adb% shell pm clear com.motorola.pgmsystem2
%adb% shell pm %PmAction% com.motorola.systemserver
%adb% shell am force-stop com.motorola.systemserver
%adb% shell pm clear com.motorola.systemserver
%adb% shell pm %PmAction% com.motorola.config.wifi
%adb% shell am force-stop com.motorola.config.wifi
%adb% shell pm clear com.motorola.config.wifi
%adb% shell pm %PmAction% com.motorola.coresettingsext
%adb% shell am force-stop com.motorola.coresettingsext
%adb% shell pm clear com.motorola.coresettingsext
rem Multi
%adb% shell pm %PmAction% br.com.multilaser.trackupdater
%adb% shell am force-stop br.com.multilaser.trackupdater
%adb% shell pm clear br.com.multilaser.trackupdater
%adb% shell pm %PmAction% br.com.pdsoft.ml.gerenciadorandroid
%adb% shell am force-stop br.com.pdsoft.ml.gerenciadorandroid
%adb% shell pm clear br.com.pdsoft.ml.gerenciadorandroid
%adb% shell pm %PmAction% com.example.pdfreader
%adb% shell am force-stop com.example.pdfreader
%adb% shell pm clear com.example.pdfreader
%adb% shell pm %PmAction% com.gingaone.multilaserrecomenda
%adb% shell am force-stop com.gingaone.multilaserrecomenda
%adb% shell pm clear com.gingaone.multilaserrecomenda
%adb% shell pm %PmAction% com.rock.gota
%adb% shell am force-stop com.rock.gota
%adb% shell pm clear com.rock.gota
rem Nokia
%adb% shell pm %PmAction% com.android.partnerbrowsercustomizations.btl.s600ww.overlay
%adb% shell am force-stop com.android.partnerbrowsercustomizations.btl.s600ww.overlay
%adb% shell pm clear com.android.partnerbrowsercustomizations.btl.s600ww.overlay
%adb% shell pm %PmAction% com.android.providers.calendar.overlay.base.s600ww
%adb% shell am force-stop com.android.providers.calendar.overlay.base.s600ww
%adb% shell pm clear com.android.providers.calendar.overlay.base.s600ww
%adb% shell pm %PmAction% com.android.providers.settings.btl.s600ww.overlay
%adb% shell am force-stop com.android.providers.settings.btl.s600ww.overlay
%adb% shell pm clear com.android.providers.settings.btl.s600ww.overlay
%adb% shell pm %PmAction% com.android.providers.settings.overlay.base.s600ww
%adb% shell am force-stop com.android.providers.settings.overlay.base.s600ww
%adb% shell pm clear com.android.providers.settings.overlay.base.s600ww
%adb% shell pm %PmAction% com.android.retaildemo.overlay.base.s600ww
%adb% shell am force-stop com.android.retaildemo.overlay.base.s600ww
%adb% shell pm clear com.android.retaildemo.overlay.base.s600ww
%adb% shell pm %PmAction% com.data.overlay.base.s600ww
%adb% shell am force-stop com.data.overlay.base.s600ww
%adb% shell pm clear com.data.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.apnwidget.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.apnwidget.overlay.base.s600ww
%adb% shell pm clear com.evenwell.apnwidget.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.AprUploadService
%adb% shell am force-stop com.evenwell.AprUploadService
%adb% shell pm %PmAction% com.evenwell.AprUploadService.data.overlay.base
%adb% shell am force-stop com.evenwell.AprUploadService.data.overlay.base
%adb% shell pm clear com.evenwell.AprUploadService.data.overlay.base
%adb% shell pm %PmAction% com.evenwell.AprUploadService.data.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.AprUploadService.data.overlay.base.s600ww
%adb% shell pm clear com.evenwell.AprUploadService.data.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.AprUploadService.data.overlay.base.s600id
%adb% shell am force-stop com.evenwell.AprUploadService.data.overlay.base.s600id
%adb% shell pm clear com.evenwell.AprUploadService.data.overlay.base.s600id
%adb% shell pm %PmAction% com.evenwell.autoregistration
%adb% shell am force-stop com.evenwell.autoregistration
%adb% shell pm %PmAction% com.evenwell.autoregistration.overlay.base
%adb% shell am force-stop com.evenwell.autoregistration.overlay.base
%adb% shell pm clear com.evenwell.autoregistration.overlay.base
%adb% shell pm %PmAction% com.evenwell.autoregistration.overlay.base.s600id
%adb% shell am force-stop com.evenwell.autoregistration.overlay.base.s600id
%adb% shell pm clear com.evenwell.autoregistration.overlay.base.s600id
%adb% shell pm %PmAction% com.evenwell.autoregistration.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.autoregistration.overlay.base.s600ww
%adb% shell pm clear com.evenwell.autoregistration.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.autoregistration.overlay.d.base.s600id
%adb% shell am force-stop com.evenwell.autoregistration.overlay.d.base.s600id
%adb% shell pm clear com.evenwell.autoregistration.overlay.d.base.s600id
%adb% shell pm %PmAction% com.evenwell.autoregistration.overlay.d.base.s600ww
%adb% shell am force-stop com.evenwell.autoregistration.overlay.d.base.s600ww
%adb% shell pm clear com.evenwell.autoregistration.overlay.d.base.s600ww
%adb% shell pm %PmAction% com.evenwell.batteryprotect
%adb% shell am force-stop com.evenwell.batteryprotect
%adb% shell pm %PmAction% com.evenwell.batteryprotect.overlay.base
%adb% shell am force-stop com.evenwell.batteryprotect.overlay.base
%adb% shell pm clear com.evenwell.batteryprotect.overlay.base
%adb% shell pm %PmAction% com.evenwell.batteryprotect.overlay.base.s600id
%adb% shell am force-stop com.evenwell.batteryprotect.overlay.base.s600id
%adb% shell pm clear com.evenwell.batteryprotect.overlay.base.s600id
%adb% shell pm %PmAction% com.evenwell.batteryprotect.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.batteryprotect.overlay.base.s600ww
%adb% shell pm clear com.evenwell.batteryprotect.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.batteryprotect.overlay.d.base.s600e0
%adb% shell am force-stop com.evenwell.batteryprotect.overlay.d.base.s600e0
%adb% shell pm clear com.evenwell.batteryprotect.overlay.d.base.s600e0
%adb% shell pm %PmAction% com.evenwell.bboxsbox
%adb% shell am force-stop com.evenwell.bboxsbox
%adb% shell pm %PmAction% com.evenwell.bboxsbox.app
%adb% shell am force-stop com.evenwell.bboxsbox.app
%adb% shell pm %PmAction% com.evenwell.bokeheditor
%adb% shell am force-stop com.evenwell.bokeheditor
%adb% shell pm %PmAction% com.evenwell.bokeheditor.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.bokeheditor.overlay.base.s600ww
%adb% shell pm clear com.evenwell.bokeheditor.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.CPClient
%adb% shell am force-stop com.evenwell.CPClient
%adb% shell pm %PmAction% com.evenwell.CPClient.overlay.base
%adb% shell am force-stop com.evenwell.CPClient.overlay.base
%adb% shell pm clear com.evenwell.CPClient.overlay.base
%adb% shell pm %PmAction% com.evenwell.CPClient.overlay.base.s600id
%adb% shell am force-stop com.evenwell.CPClient.overlay.base.s600id
%adb% shell pm clear com.evenwell.CPClient.overlay.base.s600id
%adb% shell pm %PmAction% com.evenwell.CPClient.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.CPClient.overlay.base.s600ww
%adb% shell pm clear com.evenwell.CPClient.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.custmanager
%adb% shell am force-stop com.evenwell.custmanager
%adb% shell pm %PmAction% com.evenwell.custmanager.data.overlay.base
%adb% shell am force-stop com.evenwell.custmanager.data.overlay.base
%adb% shell pm clear com.evenwell.custmanager.data.overlay.base
%adb% shell pm %PmAction% com.evenwell.custmanager.data.overlay.base.s600id
%adb% shell am force-stop com.evenwell.custmanager.data.overlay.base.s600id
%adb% shell pm clear com.evenwell.custmanager.data.overlay.base.s600id
%adb% shell pm %PmAction% com.evenwell.custmanager.data.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.custmanager.data.overlay.base.s600ww
%adb% shell pm clear com.evenwell.custmanager.data.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.customerfeedback.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.customerfeedback.overlay.base.s600ww
%adb% shell pm clear com.evenwell.customerfeedback.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.dataagent
%adb% shell am force-stop com.evenwell.dataagent
%adb% shell pm %PmAction% com.evenwell.dataagent.overlay.base
%adb% shell am force-stop com.evenwell.dataagent.overlay.base
%adb% shell pm clear com.evenwell.dataagent.overlay.base
%adb% shell pm %PmAction% com.evenwell.dataagent.overlay.base.s600id
%adb% shell am force-stop com.evenwell.dataagent.overlay.base.s600id
%adb% shell pm clear com.evenwell.dataagent.overlay.base.s600id
%adb% shell pm %PmAction% com.evenwell.dataagent.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.dataagent.overlay.base.s600ww
%adb% shell pm clear com.evenwell.dataagent.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.DbgCfgTool
%adb% shell am force-stop com.evenwell.DbgCfgTool
%adb% shell pm %PmAction% com.evenwell.DbgCfgTool.overlay.base
%adb% shell am force-stop com.evenwell.DbgCfgTool.overlay.base
%adb% shell pm clear com.evenwell.DbgCfgTool.overlay.base
%adb% shell pm %PmAction% com.evenwell.DbgCfgTool.overlay.base.s600id
%adb% shell am force-stop com.evenwell.DbgCfgTool.overlay.base.s600id
%adb% shell pm clear com.evenwell.DbgCfgTool.overlay.base.s600id
%adb% shell pm %PmAction% com.evenwell.DbgCfgTool.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.DbgCfgTool.overlay.base.s600ww
%adb% shell pm clear com.evenwell.DbgCfgTool.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.defaultappconfigure.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.defaultappconfigure.overlay.base.s600ww
%adb% shell pm clear com.evenwell.defaultappconfigure.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.DeviceMonitorControl
%adb% shell am force-stop com.evenwell.DeviceMonitorControl
%adb% shell pm %PmAction% com.evenwell.DeviceMonitorControl.data.overlay.base
%adb% shell am force-stop com.evenwell.DeviceMonitorControl.data.overlay.base
%adb% shell pm clear com.evenwell.DeviceMonitorControl.data.overlay.base
%adb% shell pm %PmAction% com.evenwell.DeviceMonitorControl.data.overlay.base.s600id
%adb% shell am force-stop com.evenwell.DeviceMonitorControl.data.overlay.base.s600id
%adb% shell pm clear com.evenwell.DeviceMonitorControl.data.overlay.base.s600id
%adb% shell pm %PmAction% com.evenwell.DeviceMonitorControl.data.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.DeviceMonitorControl.data.overlay.base.s600ww
%adb% shell pm clear com.evenwell.DeviceMonitorControl.data.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.email.data.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.email.data.overlay.base.s600ww
%adb% shell pm clear com.evenwell.email.data.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.factorywizard
%adb% shell am force-stop com.evenwell.factorywizard
%adb% shell pm %PmAction% com.evenwell.factorywizard.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.factorywizard.overlay.base.s600ww
%adb% shell pm clear com.evenwell.factorywizard.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.foxlauncher.partner
%adb% shell am force-stop com.evenwell.foxlauncher.partner
%adb% shell pm %PmAction% com.evenwell.fqc
%adb% shell am force-stop com.evenwell.fqc
%adb% shell pm %PmAction% com.evenwell.legalterm
%adb% shell am force-stop com.evenwell.legalterm
%adb% shell pm %PmAction% com.evenwell.legalterm.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.legalterm.overlay.base.s600ww
%adb% shell pm clear com.evenwell.legalterm.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.managedprovisioning
%adb% shell am force-stop com.evenwell.managedprovisioning
%adb% shell pm %PmAction% com.evenwell.managedprovisioning.overlay.base
%adb% shell am force-stop com.evenwell.managedprovisioning.overlay.base
%adb% shell pm clear com.evenwell.managedprovisioning.overlay.base
%adb% shell pm %PmAction% com.evenwell.managedprovisioning.overlay.base.s600id
%adb% shell am force-stop com.evenwell.managedprovisioning.overlay.base.s600id
%adb% shell pm clear com.evenwell.managedprovisioning.overlay.base.s600id
%adb% shell pm %PmAction% com.evenwell.managedprovisioning.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.managedprovisioning.overlay.base.s600ww
%adb% shell pm clear com.evenwell.managedprovisioning.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.mappartner
%adb% shell am force-stop com.evenwell.mappartner
%adb% shell pm %PmAction% com.evenwell.nps
%adb% shell am force-stop com.evenwell.nps
%adb% shell pm %PmAction% com.evenwell.nps.overlay.base
%adb% shell am force-stop com.evenwell.nps.overlay.base
%adb% shell pm clear com.evenwell.nps.overlay.base
%adb% shell pm %PmAction% com.evenwell.nps.overlay.base.s600id
%adb% shell am force-stop com.evenwell.nps.overlay.base.s600id
%adb% shell pm clear com.evenwell.nps.overlay.base.s600id
%adb% shell pm %PmAction% com.evenwell.nps.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.nps.overlay.base.s600ww
%adb% shell pm clear com.evenwell.nps.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.pandorasbox
%adb% shell am force-stop com.evenwell.pandorasbox
%adb% shell pm %PmAction% com.evenwell.pandorasbox.app
%adb% shell am force-stop com.evenwell.pandorasbox.app
%adb% shell pm %PmAction% com.evenwell.partnerbrowsercustomizations
%adb% shell am force-stop com.evenwell.partnerbrowsercustomizations
%adb% shell pm %PmAction% com.evenwell.partnerbrowsercustomizations.overlay.base
%adb% shell am force-stop com.evenwell.partnerbrowsercustomizations.overlay.base
%adb% shell pm clear com.evenwell.partnerbrowsercustomizations.overlay.base
%adb% shell pm %PmAction% com.evenwell.partnerbrowsercustomizations.overlay.base.s600id
%adb% shell am force-stop com.evenwell.partnerbrowsercustomizations.overlay.base.s600id
%adb% shell pm clear com.evenwell.partnerbrowsercustomizations.overlay.base.s600id
%adb% shell pm %PmAction% com.evenwell.partnerbrowsercustomizations.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.partnerbrowsercustomizations.overlay.base.s600ww
%adb% shell pm clear com.evenwell.partnerbrowsercustomizations.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.permissiondetection
%adb% shell am force-stop com.evenwell.permissiondetection
%adb% shell pm %PmAction% com.evenwell.permissiondetection.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.permissiondetection.overlay.base.s600ww
%adb% shell pm clear com.evenwell.permissiondetection.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.phone.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.phone.overlay.base.s600ww
%adb% shell pm clear com.evenwell.phone.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.phone.overlay.base
%adb% shell am force-stop com.evenwell.phone.overlay.base
%adb% shell pm %PmAction% com.evenwell.PowerMonitor
%adb% shell am force-stop com.evenwell.PowerMonitor
%adb% shell pm %PmAction% com.evenwell.PowerMonitor.overlay.base
%adb% shell am force-stop com.evenwell.PowerMonitor.overlay.base
%adb% shell pm clear com.evenwell.PowerMonitor.overlay.base
%adb% shell pm %PmAction% com.evenwell.PowerMonitor.overlay.base.s600id
%adb% shell am force-stop com.evenwell.PowerMonitor.overlay.base.s600id
%adb% shell pm clear com.evenwell.PowerMonitor.overlay.base.s600id
%adb% shell pm %PmAction% com.evenwell.PowerMonitor.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.PowerMonitor.overlay.base.s600ww
%adb% shell pm clear com.evenwell.PowerMonitor.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.providers.downloads.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.providers.downloads.overlay.base.s600ww
%adb% shell pm clear com.evenwell.providers.downloads.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.providers.downloads.ui.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.providers.downloads.ui.overlay.base.s600ww
%adb% shell pm clear com.evenwell.providers.downloads.ui.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.providers.partnerbookmarks.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.providers.partnerbookmarks.overlay.base.s600ww
%adb% shell pm clear com.evenwell.providers.partnerbookmarks.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.providers.weather
%adb% shell am force-stop com.evenwell.providers.weather
%adb% shell pm %PmAction% com.evenwell.providers.weather.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.providers.weather.overlay.base.s600ww
%adb% shell pm clear com.evenwell.providers.weather.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.pushagent
%adb% shell am force-stop com.evenwell.pushagent
%adb% shell pm %PmAction% com.evenwell.pushagent.overlay.base
%adb% shell am force-stop com.evenwell.pushagent.overlay.base
%adb% shell pm clear com.evenwell.pushagent.overlay.base
%adb% shell pm %PmAction% com.evenwell.pushagent.overlay.base.s600id
%adb% shell am force-stop com.evenwell.pushagent.overlay.base.s600id
%adb% shell pm clear com.evenwell.pushagent.overlay.base.s600id
%adb% shell pm %PmAction% com.evenwell.pushagent.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.pushagent.overlay.base.s600ww
%adb% shell pm clear com.evenwell.pushagent.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.retaildemoapp
%adb% shell am force-stop com.evenwell.retaildemoapp
%adb% shell pm %PmAction% com.evenwell.retaildemoapp.overlay.base
%adb% shell am force-stop com.evenwell.retaildemoapp.overlay.base
%adb% shell pm clear com.evenwell.retaildemoapp.overlay.base
%adb% shell pm %PmAction% com.evenwell.retaildemoapp.overlay.base.s600id
%adb% shell am force-stop com.evenwell.retaildemoapp.overlay.base.s600id
%adb% shell pm clear com.evenwell.retaildemoapp.overlay.base.s600id
%adb% shell pm %PmAction% com.evenwell.retaildemoapp.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.retaildemoapp.overlay.base.s600ww
%adb% shell pm clear com.evenwell.retaildemoapp.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.screenlock.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.screenlock.overlay.base.s600ww
%adb% shell pm clear com.evenwell.screenlock.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.settings.data.overlay.base
%adb% shell am force-stop com.evenwell.settings.data.overlay.base
%adb% shell pm clear com.evenwell.settings.data.overlay.base
%adb% shell pm %PmAction% com.evenwell.settings.data.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.settings.data.overlay.base.s600ww
%adb% shell pm clear com.evenwell.settings.data.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.SettingsUtils
%adb% shell am force-stop com.evenwell.SettingsUtils
%adb% shell pm %PmAction% com.evenwell.SettingsUtils.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.SettingsUtils.overlay.base.s600ww
%adb% shell pm clear com.evenwell.SettingsUtils.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.SetupWizard
%adb% shell am force-stop com.evenwell.SetupWizard
%adb% shell pm %PmAction% com.evenwell.SetupWizard.overlay.base
%adb% shell am force-stop com.evenwell.SetupWizard.overlay.base
%adb% shell pm clear com.evenwell.SetupWizard.overlay.base
%adb% shell pm %PmAction% com.evenwell.setupwizard.btl.s600ww.overlay
%adb% shell am force-stop com.evenwell.setupwizard.btl.s600ww.overlay
%adb% shell pm clear com.evenwell.setupwizard.btl.s600ww.overlay
%adb% shell pm %PmAction% com.evenwell.SetupWizard.overlay.d.base.s600ww
%adb% shell am force-stop com.evenwell.SetupWizard.overlay.d.base.s600ww
%adb% shell pm clear com.evenwell.SetupWizard.overlay.d.base.s600ww
%adb% shell pm %PmAction% com.evenwell.SetupWizard.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.SetupWizard.overlay.base.s600ww
%adb% shell pm clear com.evenwell.SetupWizard.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.stbmonitor
%adb% shell am force-stop com.evenwell.stbmonitor
%adb% shell pm %PmAction% com.evenwell.stbmonitor.data.overlay.base
%adb% shell am force-stop com.evenwell.stbmonitor.data.overlay.base
%adb% shell pm clear com.evenwell.stbmonitor.data.overlay.base
%adb% shell pm %PmAction% com.evenwell.stbmonitor.data.overlay.base.s600id
%adb% shell am force-stop com.evenwell.stbmonitor.data.overlay.base.s600id
%adb% shell pm clear com.evenwell.stbmonitor.data.overlay.base.s600id
%adb% shell pm %PmAction% com.evenwell.stbmonitor.data.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.stbmonitor.data.overlay.base.s600ww
%adb% shell pm clear com.evenwell.stbmonitor.data.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.telecom.data.overlay.base
%adb% shell am force-stop com.evenwell.telecom.data.overlay.base
%adb% shell pm %PmAction% com.evenwell.telecom.data.overlay.base.s600id
%adb% shell am force-stop com.evenwell.telecom.data.overlay.base.s600id
%adb% shell pm %PmAction% com.evenwell.telecom.data.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.telecom.data.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.UsageStatsLogReceiver
%adb% shell am force-stop com.evenwell.UsageStatsLogReceiver
%adb% shell pm %PmAction% com.evenwell.UsageStatsLogReceiver.data.overlay.back.s600id
%adb% shell am force-stop com.evenwell.UsageStatsLogReceiver.data.overlay.back.s600id
%adb% shell pm %PmAction% com.evenwell.UsageStatsLogReceiver.data.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.UsageStatsLogReceiver.data.overlay.base.s600ww
%adb% shell pm clear com.evenwell.UsageStatsLogReceiver.data.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.weather.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.weather.overlay.base.s600ww
%adb% shell pm clear com.evenwell.weather.overlay.base.s600ww
%adb% shell pm %PmAction% com.evenwell.weatherservice
%adb% shell am force-stop com.evenwell.weatherservice
%adb% shell pm %PmAction% com.evenwell.weatherservice.overlay.base.s600ww
%adb% shell am force-stop com.evenwell.weatherservice.overlay.base.s600ww
%adb% shell pm clear com.evenwell.weatherservice.overlay.base.s600ww
%adb% shell pm %PmAction% com.fih.infodisplay
%adb% shell am force-stop com.fih.infodisplay
%adb% shell pm %PmAction% com.fih.StatsdLogger
%adb% shell am force-stop com.fih.StatsdLogger
%adb% shell pm %PmAction% com.foxconn.ifaa
%adb% shell am force-stop com.foxconn.ifaa
%adb% shell pm %PmAction% com.hmdglobal.datago
%adb% shell am force-stop com.hmdglobal.datago
%adb% shell pm %PmAction% com.hmdglobal.datago.overlay.base
%adb% shell am force-stop com.hmdglobal.datago.overlay.base
%adb% shell pm clear com.hmdglobal.datago.overlay.base
%adb% shell pm %PmAction% com.hmdglobal.datago.overlay.base.s600ww
%adb% shell am force-stop com.hmdglobal.datago.overlay.base.s600ww
%adb% shell pm clear com.hmdglobal.datago.overlay.base.s600ww
%adb% shell pm %PmAction% com.hmdglobal.support
%adb% shell am force-stop com.hmdglobal.support
rem OnePlus
%adb% shell pm %PmAction% cn.oneplus.photos
%adb% shell am force-stop cn.oneplus.photos
%adb% shell pm clear cn.oneplus.photos
%adb% shell pm %PmAction% com.example.wifirftest
%adb% shell am force-stop com.example.wifirftest
%adb% shell pm clear com.example.wifirftest
%adb% shell pm %PmAction% com.fingerprints.fingerprintsensortest
%adb% shell am force-stop com.fingerprints.fingerprintsensortest
%adb% shell pm clear com.fingerprints.fingerprintsensortest
%adb% shell pm %PmAction% com.oem.autotest
%adb% shell am force-stop com.oem.autotest
%adb% shell pm clear com.oem.autotest
%adb% shell pm %PmAction% com.oem.logkitsdservice
%adb% shell am force-stop com.oem.logkitsdservice
%adb% shell pm clear com.oem.logkitsdservice
%adb% shell pm %PmAction% com.oem.nfc
%adb% shell am force-stop com.oem.nfc
%adb% shell pm clear com.oem.nfc
%adb% shell pm %PmAction% com.oem.oemlogkit
%adb% shell am force-stop com.oem.oemlogkit
%adb% shell pm clear com.oem.oemlogkit
%adb% shell pm %PmAction% com.oneplus.backuprestore
%adb% shell am force-stop com.oneplus.backuprestore
%adb% shell pm clear com.oneplus.backuprestore
%adb% shell pm %PmAction% com.oneplus.brickmode
%adb% shell am force-stop com.oneplus.brickmode
%adb% shell pm clear com.oneplus.brickmode
%adb% shell pm %PmAction% com.oneplus.bttestmode
%adb% shell am force-stop com.oneplus.bttestmode
%adb% shell pm clear com.oneplus.bttestmode
%adb% shell pm %PmAction% com.oneplus.card
%adb% shell am force-stop com.oneplus.card
%adb% shell pm clear com.oneplus.card
%adb% shell pm %PmAction% com.oneplus.factorymode
%adb% shell am force-stop com.oneplus.factorymode
%adb% shell pm clear com.oneplus.factorymode
%adb% shell pm %PmAction% com.oneplus.factorymode.specialtest
%adb% shell am force-stop com.oneplus.factorymode.specialtest
%adb% shell pm clear com.oneplus.factorymode.specialtest
%adb% shell pm %PmAction% com.oneplus.gamespace
%adb% shell am force-stop com.oneplus.gamespace
%adb% shell pm clear com.oneplus.gamespace
%adb% shell pm %PmAction% com.oneplus.note
%adb% shell am force-stop com.oneplus.note
%adb% shell pm clear com.oneplus.note
%adb% shell pm %PmAction% com.oneplus.opbugreportlite
%adb% shell am force-stop com.oneplus.opbugreportlite
%adb% shell pm clear com.oneplus.opbugreportlite
%adb% shell pm %PmAction% com.oneplus.soundrecorder
%adb% shell am force-stop com.oneplus.soundrecorder
%adb% shell pm clear com.oneplus.soundrecorder
%adb% shell pm %PmAction% com.wapi.wapicertmanage
%adb% shell am force-stop com.wapi.wapicertmanage
%adb% shell pm clear com.wapi.wapicertmanage
%adb% shell pm %PmAction% net.oneplus.commonlogtool
%adb% shell am force-stop net.oneplus.commonlogtool
%adb% shell pm clear net.oneplus.commonlogtool
%adb% shell pm %PmAction% net.oneplus.forums
%adb% shell am force-stop net.oneplus.forums
%adb% shell pm clear net.oneplus.forums
%adb% shell pm %PmAction% com.oneplus.opsports
%adb% shell am force-stop com.oneplus.opsports
%adb% shell pm clear com.oneplus.opsports
%adb% shell pm %PmAction% net.oneplus.odm
%adb% shell am force-stop net.oneplus.odm
%adb% shell pm clear net.oneplus.odm
%adb% shell pm %PmAction% net.oneplus.odm.provider
%adb% shell am force-stop net.oneplus.odm.provider
%adb% shell pm clear net.oneplus.odm.provider
%adb% shell pm %PmAction% net.oneplus.provider.appcategoryprovider
%adb% shell am force-stop net.oneplus.provider.appcategoryprovider
%adb% shell pm clear net.oneplus.provider.appcategoryprovider
%adb% shell pm %PmAction% net.oneplus.push
%adb% shell am force-stop net.oneplus.push
%adb% shell pm clear net.oneplus.push
%adb% shell pm %PmAction% net.oneplus.weather
%adb% shell am force-stop net.oneplus.weather
%adb% shell pm clear net.oneplus.weather
%adb% shell pm %PmAction% net.oneplus.widget
%adb% shell am force-stop net.oneplus.widget
%adb% shell pm clear net.oneplus.widget
rem Oppo
%adb% shell pm %PmAction% com.coloros.appmanager
%adb% shell am force-stop com.coloros.appmanager
%adb% shell pm clear com.coloros.appmanager
%adb% shell pm %PmAction% com.coloros.assistantscreen
%adb% shell am force-stop com.coloros.assistantscreen
%adb% shell pm clear com.coloros.assistantscreen
%adb% shell pm %PmAction% com.coloros.backuprestore
%adb% shell am force-stop com.coloros.backuprestore
%adb% shell pm clear com.coloros.backuprestore
%adb% shell pm %PmAction% com.coloros.childrenspace
%adb% shell am force-stop com.coloros.childrenspace
%adb% shell pm clear com.coloros.childrenspace
%adb% shell pm %PmAction% com.coloros.cloud
%adb% shell am force-stop com.coloros.cloud
%adb% shell pm clear com.coloros.cloud
%adb% shell pm %PmAction% com.coloros.directui
%adb% shell am force-stop com.coloros.directui
%adb% shell pm clear com.coloros.directui
%adb% shell pm %PmAction% com.coloros.findmyphone
%adb% shell am force-stop com.coloros.findmyphone
%adb% shell pm clear com.coloros.findmyphone
%adb% shell pm %PmAction% com.coloros.gamespace
%adb% shell am force-stop com.coloros.gamespace
%adb% shell pm clear com.coloros.gamespace
%adb% shell pm %PmAction% com.coloros.healthcheck
%adb% shell am force-stop com.coloros.healthcheck
%adb% shell pm clear com.coloros.healthcheck
%adb% shell pm %PmAction% com.coloros.mcs
%adb% shell am force-stop com.coloros.mcs
%adb% shell pm clear com.coloros.mcs
%adb% shell pm %PmAction% com.coloros.ocrscanner
%adb% shell am force-stop com.coloros.ocrscanner
%adb% shell pm clear com.coloros.ocrscanner
%adb% shell pm %PmAction% com.coloros.oppomultiapp
%adb% shell am force-stop com.coloros.oppomultiapp
%adb% shell pm clear com.coloros.oppomultiapp
%adb% shell pm %PmAction% com.coloros.phonenoareainquire
%adb% shell am force-stop com.coloros.phonenoareainquire
%adb% shell pm clear com.coloros.phonenoareainquire
%adb% shell pm %PmAction% com.coloros.smartdrive
%adb% shell am force-stop com.coloros.smartdrive
%adb% shell pm clear com.coloros.smartdrive
%adb% shell pm %PmAction% com.coloros.soundrecorder
%adb% shell am force-stop com.coloros.soundrecorder
%adb% shell pm clear com.coloros.soundrecorder
%adb% shell pm %PmAction% com.coloros.speechassist
%adb% shell am force-stop com.coloros.speechassist
%adb% shell pm clear com.coloros.speechassist
%adb% shell pm %PmAction% com.coloros.weather.service
%adb% shell am force-stop com.coloros.weather.service
%adb% shell pm clear com.coloros.weather.service
%adb% shell pm %PmAction% com.coloros.widget.smallweather
%adb% shell am force-stop com.coloros.widget.smallweather
%adb% shell pm clear com.coloros.widget.smallweather
%adb% shell pm %PmAction% com.heytap.cloud
%adb% shell am force-stop com.heytap.cloud
%adb% shell pm clear com.heytap.cloud
%adb% shell pm %PmAction% com.mobiletools.systemhelper
%adb% shell am force-stop com.mobiletools.systemhelper
%adb% shell pm clear com.mobiletools.systemhelper
%adb% shell pm %PmAction% com.nearme.atlas
%adb% shell am force-stop com.nearme.atlas
%adb% shell pm clear com.nearme.atlas
%adb% shell pm %PmAction% com.nearme.browser
%adb% shell am force-stop com.nearme.browser
%adb% shell pm clear com.nearme.browser
%adb% shell pm %PmAction% com.nearme.instant.platform
%adb% shell am force-stop com.nearme.instant.platform
%adb% shell pm clear com.nearme.instant.platform
%adb% shell pm %PmAction% com.nearme.themestore
%adb% shell am force-stop com.nearme.themestore
%adb% shell pm clear com.nearme.themestore
%adb% shell pm %PmAction% com.oppo.fingerprints.fingerprintsensortest
%adb% shell am force-stop com.oppo.fingerprints.fingerprintsensortest
%adb% shell pm clear com.oppo.fingerprints.fingerprintsensortest
%adb% shell pm %PmAction% com.oppo.logkitservice
%adb% shell am force-stop com.oppo.logkitservice
%adb% shell pm clear com.oppo.logkitservice
%adb% shell pm %PmAction% com.oppo.logkit
%adb% shell am force-stop com.oppo.logkit
%adb% shell pm clear com.oppo.logkit
%adb% shell pm %PmAction% com.oppo.market
%adb% shell am force-stop com.oppo.market
%adb% shell pm clear com.oppo.market
%adb% shell pm %PmAction% com.oppo.music
%adb% shell am force-stop com.oppo.music
%adb% shell pm clear com.oppo.music
%adb% shell pm %PmAction% com.oppo.ovoicemanager
%adb% shell am force-stop com.oppo.ovoicemanager
%adb% shell pm clear com.oppo.ovoicemanager
%adb% shell pm %PmAction% com.oppo.oppopowermonitor
%adb% shell am force-stop com.oppo.oppopowermonitor
%adb% shell pm clear com.oppo.oppopowermonitor
%adb% shell pm %PmAction% com.oppo.quicksearchbox
%adb% shell am force-stop com.oppo.quicksearchbox
%adb% shell pm clear com.oppo.quicksearchbox
%adb% shell pm %PmAction% com.oppo.securepay
%adb% shell am force-stop com.oppo.securepay
%adb% shell pm clear com.oppo.securepay
%adb% shell pm %PmAction% com.coloros.wallet
%adb% shell am force-stop com.coloros.wallet
%adb% shell pm clear com.coloros.wallet
%adb% shell pm %PmAction% com.realme.findphone.client2
%adb% shell am force-stop com.realme.findphone.client2
%adb% shell pm clear com.realme.findphone.client2
%adb% shell pm %PmAction% com.coloros.phonemanager
%adb% shell am force-stop com.coloros.phonemanager
%adb% shell pm clear com.coloros.phonemanager
%adb% shell pm %PmAction% com.heytap.pictorial
%adb% shell am force-stop com.heytap.pictorial
%adb% shell pm clear com.heytap.pictorial
%adb% shell pm %PmAction% com.heytap.habit.analysis
%adb% shell am force-stop com.heytap.habit.analysis
%adb% shell pm clear com.heytap.habit.analysis
%adb% shell pm %PmAction% com.heytap.openid
%adb% shell am force-stop com.heytap.openid
%adb% shell pm clear com.heytap.openid
%adb% shell pm %PmAction% com.heytap.datamigration
%adb% shell am force-stop com.heytap.datamigration
%adb% shell pm clear com.heytap.datamigration
rem Samsung
%adb% shell pm %PmAction% android.autoinstalls.config.samsung
%adb% shell am force-stop android.autoinstalls.config.samsung
%adb% shell pm clear android.autoinstalls.config.samsung
%adb% shell pm %PmAction% com.aura.oobe.samsung
%adb% shell am force-stop com.aura.oobe.samsung
%adb% shell pm clear com.aura.oobe.samsung
%adb% shell pm %PmAction% com.cnn.mobile.android.phone.edgepanel
%adb% shell am force-stop com.cnn.mobile.android.phone.edgepanel
%adb% shell pm clear com.cnn.mobile.android.phone.edgepanel
%adb% shell pm %PmAction% com.enhance.gameservice
%adb% shell am force-stop com.enhance.gameservice
%adb% shell pm clear com.enhance.gameservice
%adb% shell pm %PmAction% com.hiya.star
%adb% shell am force-stop com.hiya.star
%adb% shell pm clear com.hiya.star
%adb% shell pm %PmAction% com.knox.vpn.proxyhandler
%adb% shell am force-stop com.knox.vpn.proxyhandler
%adb% shell pm clear com.knox.vpn.proxyhandler
%adb% shell pm %PmAction% com.mygalaxy
%adb% shell am force-stop com.mygalaxy
%adb% shell pm clear com.mygalaxy
%adb% shell pm %PmAction% com.mobeam.barcodeService
%adb% shell am force-stop com.mobeam.barcodeService
%adb% shell pm clear com.mobeam.barcodeService
%adb% shell pm %PmAction% com.samsung.app.jansky
%adb% shell am force-stop com.samsung.app.jansky
%adb% shell pm clear com.samsung.app.jansky
%adb% shell pm %PmAction% com.samsung.aasaservice
%adb% shell am force-stop com.samsung.aasaservice
%adb% shell pm clear com.samsung.aasaservice
%adb% shell pm %PmAction% com.samsung.accessory
%adb% shell am force-stop com.samsung.accessory
%adb% shell pm clear com.samsung.accessory
%adb% shell pm %PmAction% com.samsung.accessory.beansmgr
%adb% shell am force-stop com.samsung.accessory.beansmgr
%adb% shell pm clear com.samsung.accessory.beansmgr
%adb% shell pm %PmAction% com.samsung.accessory.safiletransfer
%adb% shell am force-stop com.samsung.accessory.safiletransfer
%adb% shell pm clear com.samsung.accessory.safiletransfer
%adb% shell pm %PmAction% com.samsung.android.aircommandmanager
%adb% shell am force-stop com.samsung.android.aircommandmanager
%adb% shell pm clear com.samsung.android.aircommandmanager
%adb% shell pm %PmAction% com.samsung.android.airtel.stubapp
%adb% shell am force-stop com.samsung.android.airtel.stubapp
%adb% shell pm clear com.samsung.android.airtel.stubapp
%adb% shell pm %PmAction% com.samsung.android.allshare.service.mediashare
%adb% shell am force-stop com.samsung.android.allshare.service.mediashare
%adb% shell pm clear com.samsung.android.allshare.service.mediashare
%adb% shell pm %PmAction% com.samsung.android.app.accesscontrol
%adb% shell am force-stop com.samsung.android.app.accesscontrol
%adb% shell pm clear com.samsung.android.app.accesscontrol
%adb% shell pm %PmAction% com.samsung.android.app.advsounddetector
%adb% shell am force-stop com.samsung.android.app.advsounddetector
%adb% shell pm clear com.samsung.android.app.advsounddetector
%adb% shell pm %PmAction% com.samsung.android.app.appsedge
%adb% shell am force-stop com.samsung.android.app.appsedge
%adb% shell pm clear com.samsung.android.app.appsedge
%adb% shell pm %PmAction% com.samsung.android.app.assistantmenu
%adb% shell am force-stop com.samsung.android.app.assistantmenu
%adb% shell pm clear com.samsung.android.app.assistantmenu
%adb% shell pm %PmAction% com.samsung.android.app.camera.sticker.facear.preload
%adb% shell am force-stop com.samsung.android.app.camera.sticker.facear.preload
%adb% shell pm clear com.samsung.android.app.camera.sticker.facear.preload
%adb% shell pm %PmAction% com.samsung.android.app.camera.sticker.facear3d.preload
%adb% shell am force-stop com.samsung.android.app.camera.sticker.facear3d.preload
%adb% shell pm clear com.samsung.android.app.camera.sticker.facear3d.preload
%adb% shell pm %PmAction% com.samsung.android.app.camera.sticker.stamp.preload
%adb% shell am force-stop com.samsung.android.app.camera.sticker.stamp.preload
%adb% shell pm clear com.samsung.android.app.camera.sticker.stamp.preload
%adb% shell pm %PmAction% com.samsung.android.app.camera.sticker.facearframe.preload
%adb% shell am force-stop com.samsung.android.app.camera.sticker.facearframe.preload
%adb% shell pm clear com.samsung.android.app.camera.sticker.facearframe.preload
%adb% shell pm %PmAction% com.samsung.android.app.camera.sticker.facearavatar.preload
%adb% shell am force-stop com.samsung.android.app.camera.sticker.facearavatar.preload
%adb% shell pm clear com.samsung.android.app.camera.sticker.facearavatar.preload
%adb% shell pm %PmAction% com.samsung.android.app.clipboardedge
%adb% shell am force-stop com.samsung.android.app.clipboardedge
%adb% shell pm clear com.samsung.android.app.clipboardedge
%adb% shell pm %PmAction% com.samsung.android.app.cocktailbarservice
%adb% shell am force-stop com.samsung.android.app.cocktailbarservice
%adb% shell pm clear com.samsung.android.app.cocktailbarservice
%adb% shell pm %PmAction% com.samsung.android.app.color
%adb% shell am force-stop com.samsung.android.app.color
%adb% shell pm clear com.samsung.android.app.color
%adb% shell pm %PmAction% com.samsung.android.app.dressroom
%adb% shell am force-stop com.samsung.android.app.dressroom
%adb% shell pm clear com.samsung.android.app.dressroom
%adb% shell pm %PmAction% com.samsung.android.app.episodes
%adb% shell am force-stop com.samsung.android.app.episodes
%adb% shell pm clear com.samsung.android.app.episodes
%adb% shell pm %PmAction% com.samsung.android.app.filterinstaller
%adb% shell am force-stop com.samsung.android.app.filterinstaller
%adb% shell pm clear com.samsung.android.app.filterinstaller
%adb% shell pm %PmAction% com.samsung.app.highlightplayer
%adb% shell am force-stop com.samsung.app.highlightplayer
%adb% shell pm clear com.samsung.app.highlightplayer
%adb% shell pm %PmAction% com.samsung.android.app.interactivepanoramaviewer
%adb% shell am force-stop com.samsung.android.app.interactivepanoramaviewer
%adb% shell pm clear com.samsung.android.app.interactivepanoramaviewer
%adb% shell pm %PmAction% com.samsung.android.app.ledbackcover
%adb% shell am force-stop com.samsung.android.app.ledbackcover
%adb% shell pm clear com.samsung.android.app.ledbackcover
%adb% shell pm %PmAction% com.samsung.android.app.ledcoverdream
%adb% shell am force-stop com.samsung.android.app.ledcoverdream
%adb% shell pm clear com.samsung.android.app.ledcoverdream
%adb% shell pm %PmAction% com.samsung.android.app.omcagent
%adb% shell am force-stop com.samsung.android.app.omcagent
%adb% shell pm clear com.samsung.android.app.omcagent
%adb% shell pm %PmAction% com.samsung.android.app.memo
%adb% shell am force-stop com.samsung.android.app.memo
%adb% shell pm clear com.samsung.android.app.memo
%adb% shell pm %PmAction% com.samsung.android.app.mhswrappertmo
%adb% shell am force-stop com.samsung.android.app.mhswrappertmo
%adb% shell pm clear com.samsung.android.app.mhswrappertmo
%adb% shell pm %PmAction% com.samsung.android.app.mirrorlink
%adb% shell am force-stop com.samsung.android.app.mirrorlink
%adb% shell pm clear com.samsung.android.app.mirrorlink
%adb% shell pm %PmAction% com.samsung.android.app.news
%adb% shell am force-stop com.samsung.android.app.news
%adb% shell pm clear com.samsung.android.app.news
%adb% shell pm %PmAction% com.samsung.android.app.notes
%adb% shell am force-stop com.samsung.android.app.notes
%adb% shell pm clear com.samsung.android.app.notes
%adb% shell pm %PmAction% com.samsung.android.app.panel.naver.v
%adb% shell am force-stop com.samsung.android.app.panel.naver.v
%adb% shell pm clear com.samsung.android.app.panel.naver.v
%adb% shell pm %PmAction% com.samsung.android.app.pinboard
%adb% shell am force-stop com.samsung.android.app.pinboard
%adb% shell pm clear com.samsung.android.app.pinboard
%adb% shell pm %PmAction% com.samsung.android.app.reminder
%adb% shell am force-stop com.samsung.android.app.reminder
%adb% shell pm clear com.samsung.android.app.reminder
%adb% shell pm %PmAction% com.samsung.android.app.routines
%adb% shell am force-stop com.samsung.android.app.routines
%adb% shell pm clear com.samsung.android.app.routines
%adb% shell pm %PmAction% com.samsung.android.app.sbrowseredge
%adb% shell am force-stop com.samsung.android.app.sbrowseredge
%adb% shell pm clear com.samsung.android.app.sbrowseredge
%adb% shell pm %PmAction% com.samsung.android.app.settings.bixby
%adb% shell am force-stop com.samsung.android.app.settings.bixby
%adb% shell pm clear com.samsung.android.app.settings.bixby
%adb% shell pm %PmAction% com.samsung.android.app.simplesharing
%adb% shell am force-stop com.samsung.android.app.simplesharing
%adb% shell pm clear com.samsung.android.app.simplesharing
%adb% shell pm %PmAction% com.samsung.android.app.social
%adb% shell am force-stop com.samsung.android.app.social
%adb% shell pm clear com.samsung.android.app.social
%adb% shell pm %PmAction% com.samsung.android.app.spage
%adb% shell am force-stop com.samsung.android.app.spage
%adb% shell pm clear com.samsung.android.app.spage
%adb% shell pm %PmAction% com.samsung.android.app.storyalbumwidget
%adb% shell am force-stop com.samsung.android.app.storyalbumwidget
%adb% shell pm clear com.samsung.android.app.storyalbumwidget
%adb% shell pm %PmAction% com.samsung.android.app.talkback
%adb% shell am force-stop com.samsung.android.app.talkback
%adb% shell pm clear com.samsung.android.app.talkback
%adb% shell pm %PmAction% com.samsung.android.app.taskedge
%adb% shell am force-stop com.samsung.android.app.taskedge
%adb% shell pm clear com.samsung.android.app.taskedge
%adb% shell pm %PmAction% com.samsung.android.app.tips
%adb% shell am force-stop com.samsung.android.app.tips
%adb% shell pm clear com.samsung.android.app.tips
%adb% shell pm %PmAction% com.samsung.android.app.vrsetupwizards
%adb% shell am force-stop com.samsung.android.app.vrsetupwizards
%adb% shell pm clear com.samsung.android.app.vrsetupwizards
%adb% shell pm %PmAction% com.samsung.android.app.vrsetupwizardstub
%adb% shell am force-stop com.samsung.android.app.vrsetupwizardstub
%adb% shell pm clear com.samsung.android.app.vrsetupwizardstub
%adb% shell pm %PmAction% com.samsung.android.app.watchmanager
%adb% shell am force-stop com.samsung.android.app.watchmanager
%adb% shell pm clear com.samsung.android.app.watchmanager
%adb% shell pm %PmAction% com.samsung.android.app.watchmanagerstub
%adb% shell am force-stop com.samsung.android.app.watchmanagerstub
%adb% shell pm clear com.samsung.android.app.watchmanagerstub
%adb% shell pm %PmAction% com.samsung.android.app.withtv
%adb% shell am force-stop com.samsung.android.app.withtv
%adb% shell pm clear com.samsung.android.app.withtv
%adb% shell pm %PmAction% com.samsung.android.ardrawing
%adb% shell am force-stop com.samsung.android.ardrawing
%adb% shell pm clear com.samsung.android.ardrawing
%adb% shell pm %PmAction% com.samsung.android.arzone
%adb% shell am force-stop com.samsung.android.arzone
%adb% shell pm clear com.samsung.android.arzone
%adb% shell pm %PmAction% com.samsung.android.aremoji
%adb% shell am force-stop com.samsung.android.aremoji
%adb% shell pm clear com.samsung.android.aremoji
%adb% shell pm %PmAction% com.samsung.android.aremojieditor
%adb% shell am force-stop com.samsung.android.aremojieditor
%adb% shell pm clear com.samsung.android.aremojieditor
%adb% shell pm %PmAction% com.samsung.android.asksmanager
%adb% shell am force-stop com.samsung.android.asksmanager
%adb% shell pm clear com.samsung.android.asksmanager
%adb% shell pm %PmAction% com.samsung.android.authfw
%adb% shell am force-stop com.samsung.android.authfw
%adb% shell pm clear com.samsung.android.authfw
%adb% shell pm %PmAction% com.samsung.android.aware.service
%adb% shell am force-stop com.samsung.android.aware.service
%adb% shell pm clear com.samsung.android.aware.service
%adb% shell pm %PmAction% com.samsung.android.bbc.bbcagent
%adb% shell am force-stop com.samsung.android.bbc.bbcagent
%adb% shell pm clear com.samsung.android.bbc.bbcagent
%adb% shell pm %PmAction% com.samsung.android.bbc.fileprovider
%adb% shell am force-stop com.samsung.android.bbc.fileprovider
%adb% shell pm clear com.samsung.android.bbc.fileprovider
%adb% shell pm %PmAction% com.samsung.android.beaconmanager
%adb% shell am force-stop com.samsung.android.beaconmanager
%adb% shell pm clear com.samsung.android.beaconmanager
%adb% shell pm %PmAction% com.samsung.android.bixby.agent
%adb% shell am force-stop com.samsung.android.bixby.agent
%adb% shell pm clear com.samsung.android.bixby.agent
%adb% shell pm %PmAction% com.samsung.android.bixby.agent.dummy
%adb% shell am force-stop com.samsung.android.bixby.agent.dummy
%adb% shell pm clear com.samsung.android.bixby.agent.dummy
%adb% shell pm %PmAction% com.samsung.android.bixby.agent
%adb% shell am force-stop com.samsung.android.bixby.agent
%adb% shell pm clear com.samsung.android.bixby.agent
%adb% shell pm %PmAction% com.samsung.android.bixby.agent
%adb% shell am force-stop com.samsung.android.bixby.agent
%adb% shell pm clear com.samsung.android.bixby.agent
%adb% shell pm %PmAction% com.samsung.android.bixby.voiceinput
%adb% shell am force-stop com.samsung.android.bixby.voiceinput
%adb% shell pm clear com.samsung.android.bixby.voiceinput
%adb% shell pm %PmAction% com.samsung.android.bixby.wakeup
%adb% shell am force-stop com.samsung.android.bixby.wakeup
%adb% shell pm clear com.samsung.android.bixby.wakeup
%adb% shell pm %PmAction% com.samsung.android.bixbyvision.framework
%adb% shell am force-stop com.samsung.android.bixbyvision.framework
%adb% shell pm clear com.samsung.android.bixbyvision.framework
%adb% shell pm %PmAction% com.samsung.android.calendar
%adb% shell am force-stop com.samsung.android.calendar
%adb% shell pm clear com.samsung.android.calendar
%adb% shell pm %PmAction% com.samsung.android.coreapps
%adb% shell am force-stop com.samsung.android.coreapps
%adb% shell pm clear com.samsung.android.coreapps
%adb% shell pm %PmAction% com.samsung.android.da.daagent
%adb% shell am force-stop com.samsung.android.da.daagent
%adb% shell pm clear com.samsung.android.da.daagent
%adb% shell pm %PmAction% com.samsung.android.dlp.service
%adb% shell am force-stop com.samsung.android.dlp.service
%adb% shell pm clear com.samsung.android.dlp.service
%adb% shell pm %PmAction% com.samsung.android.dqagent
%adb% shell am force-stop com.samsung.android.dqagent
%adb% shell pm clear com.samsung.android.dqagent
%adb% shell pm %PmAction% com.samsung.android.drivelink.stub
%adb% shell am force-stop com.samsung.android.drivelink.stub
%adb% shell pm clear com.samsung.android.drivelink.stub
%adb% shell pm %PmAction% com.samsung.android.dynamiclock
%adb% shell am force-stop com.samsung.android.dynamiclock
%adb% shell pm clear com.samsung.android.dynamiclock
%adb% shell pm %PmAction% com.samsung.android.gearoplugin
%adb% shell am force-stop com.samsung.android.gearoplugin
%adb% shell pm clear com.samsung.android.gearoplugin
%adb% shell pm %PmAction% com.samsung.android.easysetup
%adb% shell am force-stop com.samsung.android.easysetup
%adb% shell pm clear com.samsung.android.easysetup
%adb% shell pm %PmAction% com.samsung.android.email.provider
%adb% shell am force-stop com.samsung.android.email.provider
%adb% shell pm clear com.samsung.android.email.provider
%adb% shell pm %PmAction% com.samsung.android.emojiupdater
%adb% shell am force-stop com.samsung.android.emojiupdater
%adb% shell pm clear com.samsung.android.emojiupdater
%adb% shell pm %PmAction% com.samsung.android.fast
%adb% shell am force-stop com.samsung.android.fast
%adb% shell pm clear com.samsung.android.fast
%adb% shell pm %PmAction% com.samsung.android.fmm
%adb% shell am force-stop com.samsung.android.fmm
%adb% shell pm clear com.samsung.android.fmm
%adb% shell pm %PmAction% com.samsung.android.game.gamehome
%adb% shell am force-stop com.samsung.android.game.gamehome
%adb% shell pm clear com.samsung.android.game.gamehome
%adb% shell pm %PmAction% com.samsung.android.game.gametools
%adb% shell am force-stop com.samsung.android.game.gametools
%adb% shell pm clear com.samsung.android.game.gametools
%adb% shell pm %PmAction% com.samsung.android.game.gos
%adb% shell am force-stop com.samsung.android.game.gos
%adb% shell pm clear com.samsung.android.game.gos
%adb% shell pm %PmAction% com.samsung.android.game.gos
%adb% shell am force-stop com.samsung.android.game.gos
%adb% shell pm clear com.samsung.android.game.gos
%adb% shell pm %PmAction% com.samsung.android.homemode
%adb% shell am force-stop com.samsung.android.homemode
%adb% shell pm clear com.samsung.android.homemode
%adb% shell pm %PmAction% com.samsung.android.hmt.vrshell
%adb% shell am force-stop com.samsung.android.hmt.vrshell
%adb% shell pm clear com.samsung.android.hmt.vrshell
%adb% shell pm %PmAction% com.samsung.android.hmt.vrsvc
%adb% shell am force-stop com.samsung.android.hmt.vrsvc
%adb% shell pm clear com.samsung.android.hmt.vrsvc
%adb% shell pm %PmAction% com.samsung.android.icecone
%adb% shell am force-stop com.samsung.android.icecone
%adb% shell pm clear com.samsung.android.icecone
%adb% shell pm %PmAction% com.samsung.android.intelligenceservice2
%adb% shell am force-stop com.samsung.android.intelligenceservice2
%adb% shell pm clear com.samsung.android.intelligenceservice2
%adb% shell pm %PmAction% com.samsung.android.ipsgeofence
%adb% shell am force-stop com.samsung.android.ipsgeofence
%adb% shell pm clear com.samsung.android.ipsgeofence
%adb% shell pm %PmAction% com.samsung.android.keyguardwallpaperupdator
%adb% shell am force-stop com.samsung.android.keyguardwallpaperupdator
%adb% shell pm clear com.samsung.android.keyguardwallpaperupdator
%adb% shell pm %PmAction% com.samsung.android.kidsinstaller
%adb% shell am force-stop com.samsung.android.kidsinstaller
%adb% shell pm clear com.samsung.android.kidsinstaller
%adb% shell pm %PmAction% com.samsung.android.knox.attestation
%adb% shell am force-stop com.samsung.android.knox.attestation
%adb% shell pm clear com.samsung.android.knox.attestation
%adb% shell pm %PmAction% com.samsung.android.knox.containeragent
%adb% shell am force-stop com.samsung.android.knox.containeragent
%adb% shell pm clear com.samsung.android.knox.containeragent
%adb% shell pm %PmAction% com.samsung.android.knox.containercore
%adb% shell am force-stop com.samsung.android.knox.containercore
%adb% shell pm clear com.samsung.android.knox.containercore
%adb% shell pm %PmAction% com.samsung.android.knox.containerdesktop
%adb% shell am force-stop com.samsung.android.knox.containerdesktop
%adb% shell pm clear com.samsung.android.knox.containerdesktop
%adb% shell pm %PmAction% com.samsung.android.livestickers
%adb% shell am force-stop com.samsung.android.livestickers
%adb% shell pm clear com.samsung.android.livestickers
%adb% shell pm %PmAction% com.samsung.android.look
%adb% shell am force-stop com.samsung.android.look
%adb% shell pm clear com.samsung.android.look
%adb% shell pm %PmAction% com.samsung.android.lool
%adb% shell am force-stop com.samsung.android.lool
%adb% shell pm clear com.samsung.android.lool
%adb% shell pm %PmAction% com.samsung.android.mediacontroller
%adb% shell am force-stop com.samsung.android.mediacontroller
%adb% shell pm clear com.samsung.android.mediacontroller
%adb% shell pm %PmAction% com.samsung.android.meggachef
%adb% shell am force-stop com.samsung.android.meggachef
%adb% shell pm clear com.samsung.android.meggachef
%adb% shell pm %PmAction% com.samsung.android.mirrorlink
%adb% shell am force-stop com.samsung.android.mirrorlink
%adb% shell pm clear com.samsung.android.mirrorlink
%adb% shell pm %PmAction% com.samsung.android.motionphoto
%adb% shell am force-stop com.samsung.android.motionphoto
%adb% shell pm clear com.samsung.android.motionphoto
%adb% shell pm %PmAction% com.samsung.android.multiwindow
%adb% shell am force-stop com.samsung.android.multiwindow
%adb% shell pm clear com.samsung.android.multiwindow
%adb% shell pm %PmAction% com.samsung.android.oneconnect
%adb% shell am force-stop com.samsung.android.oneconnect
%adb% shell pm clear com.samsung.android.oneconnect
%adb% shell pm %PmAction% com.samsung.android.powersoundrecorder
%adb% shell am force-stop com.samsung.android.powersoundrecorder
%adb% shell pm clear com.samsung.android.powersoundrecorder
%adb% shell pm %PmAction% com.samsung.android.rubin.app
%adb% shell am force-stop com.samsung.android.rubin.app
%adb% shell pm clear com.samsung.android.rubin.app
%adb% shell pm %PmAction% com.samsung.android.samsungpassautofill
%adb% shell am force-stop com.samsung.android.samsungpassautofill
%adb% shell pm clear com.samsung.android.samsungpassautofill
%adb% shell pm %PmAction% com.samsung.android.samsungpass
%adb% shell am force-stop com.samsung.android.samsungpass
%adb% shell pm clear com.samsung.android.samsungpass
%adb% shell pm %PmAction% com.samsung.android.samsungpass
%adb% shell am force-stop com.samsung.android.samsungpass
%adb% shell pm clear com.samsung.android.samsungpass
%adb% shell pm %PmAction% com.samsung.android.scloud
%adb% shell am force-stop com.samsung.android.scloud
%adb% shell pm clear com.samsung.android.scloud
%adb% shell pm %PmAction% com.samsung.android.scs
%adb% shell am force-stop com.samsung.android.scs
%adb% shell pm clear com.samsung.android.scs
%adb% shell pm %PmAction% com.samsung.android.sds
%adb% shell am force-stop com.samsung.android.sds
%adb% shell pm clear com.samsung.android.sds
%adb% shell pm %PmAction% com.samsung.android.securitylogagent
%adb% shell am force-stop com.samsung.android.securitylogagent
%adb% shell pm clear com.samsung.android.securitylogagent
%adb% shell pm %PmAction% com.samsung.android.service.peoplestripe
%adb% shell am force-stop com.samsung.android.service.peoplestripe
%adb% shell pm clear com.samsung.android.service.peoplestripe
%adb% shell pm %PmAction% com.samsung.android.setting.multiaudio
%adb% shell am force-stop com.samsung.android.setting.multiaudio
%adb% shell pm clear com.samsung.android.setting.multiaudio
%adb% shell pm %PmAction% com.samsung.android.setupwizard
%adb% shell am force-stop com.samsung.android.setupwizard
%adb% shell pm clear com.samsung.android.setupwizard
%adb% shell pm %PmAction% com.samsung.android.sidepageedge
%adb% shell am force-stop com.samsung.android.sidepageedge
%adb% shell pm clear com.samsung.android.sidepageedge
%adb% shell pm %PmAction% com.samsung.android.smartcallprovider
%adb% shell am force-stop com.samsung.android.smartcallprovider
%adb% shell pm clear com.samsung.android.smartcallprovider
%adb% shell pm %PmAction% com.samsung.android.smartcallprovider
%adb% shell am force-stop com.samsung.android.smartcallprovider
%adb% shell pm clear com.samsung.android.smartcallprovider
%adb% shell pm %PmAction% com.samsung.android.smartface
%adb% shell am force-stop com.samsung.android.smartface
%adb% shell pm clear com.samsung.android.smartface
%adb% shell pm %PmAction% com.samsung.android.smartface
%adb% shell am force-stop com.samsung.android.smartface
%adb% shell pm clear com.samsung.android.smartface
%adb% shell pm %PmAction% com.samsung.android.smartface
%adb% shell am force-stop com.samsung.android.smartface
%adb% shell pm clear com.samsung.android.smartface
%adb% shell pm %PmAction% com.samsung.android.smartswitchassistant
%adb% shell am force-stop com.samsung.android.smartswitchassistant
%adb% shell pm clear com.samsung.android.smartswitchassistant
%adb% shell pm %PmAction% com.samsung.android.stickercenter
%adb% shell am force-stop com.samsung.android.stickercenter
%adb% shell pm clear com.samsung.android.stickercenter
%adb% shell pm %PmAction% com.samsung.android.stickercenter
%adb% shell am force-stop com.samsung.android.stickercenter
%adb% shell pm clear com.samsung.android.stickercenter
%adb% shell pm %PmAction% com.samsung.android.stickerplugin
%adb% shell am force-stop com.samsung.android.stickerplugin
%adb% shell pm clear com.samsung.android.stickerplugin
%adb% shell pm %PmAction% com.samsung.android.stickerplugin
%adb% shell am force-stop com.samsung.android.stickerplugin
%adb% shell pm clear com.samsung.android.stickerplugin
%adb% shell pm %PmAction% com.samsung.android.stickerplugin
%adb% shell am force-stop com.samsung.android.stickerplugin
%adb% shell pm clear com.samsung.android.stickerplugin
%adb% shell pm %PmAction% com.samsung.android.stickerplugin
%adb% shell am force-stop com.samsung.android.stickerplugin
%adb% shell pm clear com.samsung.android.stickerplugin
%adb% shell pm %PmAction% com.samsung.android.visionarapps
%adb% shell am force-stop com.samsung.android.visionarapps
%adb% shell pm clear com.samsung.android.visionarapps
%adb% shell pm %PmAction% com.samsung.app.playreadyui
%adb% shell am force-stop com.samsung.app.playreadyui
%adb% shell pm clear com.samsung.app.playreadyui
%adb% shell pm %PmAction% com.samsung.systemui.tmobile
%adb% shell am force-stop com.samsung.systemui.tmobile
%adb% shell pm clear com.samsung.systemui.tmobile
%adb% shell pm %PmAction% com.samsung.ucs.ucsservice
%adb% shell am force-stop com.samsung.ucs.ucsservice
%adb% shell pm clear com.samsung.ucs.ucsservice
%adb% shell pm %PmAction% com.samsung.ucs.spacemanager
%adb% shell am force-stop com.samsung.ucs.spacemanager
%adb% shell pm clear com.samsung.ucs.spacemanager
%adb% shell pm %PmAction% com.samsung.svoice.sync
%adb% shell am force-stop com.samsung.svoice.sync
%adb% shell pm clear com.samsung.svoice.sync
%adb% shell pm %PmAction% com.samsung.systemui.bixby2
%adb% shell am force-stop com.samsung.systemui.bixby2
%adb% shell pm clear com.samsung.systemui.bixby2
%adb% shell pm %PmAction% com.samsung.systemui.bixby2
%adb% shell am force-stop com.samsung.systemui.bixby2
%adb% shell pm clear com.samsung.systemui.bixby2
%adb% shell pm %PmAction% com.samsung.systemui.bixby2
%adb% shell am force-stop com.samsung.systemui.bixby2
%adb% shell pm clear com.samsung.systemui.bixby2
%adb% shell pm %PmAction% com.samsung.systemui.bixby2
%adb% shell am force-stop com.samsung.systemui.bixby2
%adb% shell pm clear com.samsung.systemui.bixby2
%adb% shell pm %PmAction% com.samsung.systemui.bixby2
%adb% shell am force-stop com.samsung.systemui.bixby2
%adb% shell pm clear com.samsung.systemui.bixby2
%adb% shell pm %PmAction% com.sec.android.app.billing
%adb% shell am force-stop com.sec.android.app.billing
%adb% shell pm clear com.sec.android.app.billing
%adb% shell pm %PmAction% com.sec.android.app.chromecustomizations
%adb% shell am force-stop com.sec.android.app.chromecustomizations
%adb% shell pm clear com.sec.android.app.chromecustomizations
%adb% shell pm %PmAction% com.sec.android.app.safetyassurance
%adb% shell am force-stop com.sec.android.app.safetyassurance
%adb% shell pm clear com.sec.android.app.safetyassurance
%adb% shell pm %PmAction% com.sec.android.daemonapp
%adb% shell am force-stop com.sec.android.daemonapp
%adb% shell pm clear com.sec.android.daemonapp
%adb% shell pm %PmAction% com.sec.android.app.easysignup
%adb% shell am force-stop com.sec.android.app.easysignup
%adb% shell pm clear com.sec.android.app.easysignup
%adb% shell pm %PmAction% com.sec.android.app.facelock
%adb% shell am force-stop com.sec.android.app.facelock
%adb% shell pm clear com.sec.android.app.facelock
%adb% shell pm %PmAction% com.sec.android.app.samsungapps
%adb% shell am force-stop com.sec.android.app.samsungapps
%adb% shell pm clear com.sec.android.app.samsungapps
%adb% shell pm %PmAction% com.sec.android.app.shealth
%adb% shell am force-stop com.sec.android.app.shealth
%adb% shell pm clear com.sec.android.app.shealth
%adb% shell pm %PmAction% com.sec.android.app.soundpicker
%adb% shell am force-stop com.sec.android.app.soundpicker
%adb% shell pm clear com.sec.android.app.soundpicker
%adb% shell pm %PmAction% com.sec.android.daemonapp
%adb% shell am force-stop com.sec.android.daemonapp
%adb% shell pm clear com.sec.android.daemonapp
%adb% shell pm %PmAction% com.sec.android.daemonapp
%adb% shell am force-stop com.sec.android.daemonapp
%adb% shell pm clear com.sec.android.daemonapp
%adb% shell pm %PmAction% com.sec.android.directshare
%adb% shell am force-stop com.sec.android.directshare
%adb% shell pm clear com.sec.android.directshare
%adb% shell pm %PmAction% com.sec.android.easyonehand
%adb% shell am force-stop com.sec.android.easyonehand
%adb% shell pm clear com.sec.android.easyonehand
%adb% shell pm %PmAction% com.sec.android.mimage.avatarstickers
%adb% shell am force-stop com.sec.android.mimage.avatarstickers
%adb% shell pm clear com.sec.android.mimage.avatarstickers
%adb% shell pm %PmAction% com.sec.android.sidesync30
%adb% shell am force-stop com.sec.android.sidesync30
%adb% shell pm clear com.sec.android.sidesync30
%adb% shell pm %PmAction% com.sec.android.app.sbrowser
%adb% shell am force-stop com.sec.android.app.sbrowser
%adb% shell pm clear com.sec.android.app.sbrowser
%adb% shell pm %PmAction% com.sec.android.app.sbrowser
%adb% shell am force-stop com.sec.android.app.sbrowser
%adb% shell pm clear com.sec.android.app.sbrowser
%adb% shell pm %PmAction% com.sec.android.app.sbrowser
%adb% shell am force-stop com.sec.android.app.sbrowser
%adb% shell pm clear com.sec.android.app.sbrowser
%adb% shell pm %PmAction% com.sec.android.app.sbrowser
%adb% shell am force-stop com.sec.android.app.sbrowser
%adb% shell pm clear com.sec.android.app.sbrowser
%adb% shell pm %PmAction% com.sec.android.app.sbrowser
%adb% shell am force-stop com.sec.android.app.sbrowser
%adb% shell pm clear com.sec.android.app.sbrowser
%adb% shell pm %PmAction% com.sec.android.app.shealth
%adb% shell am force-stop com.sec.android.app.shealth
%adb% shell pm clear com.sec.android.app.shealth
%adb% shell pm %PmAction% com.sec.android.app.twdvfs
%adb% shell am force-stop com.sec.android.app.twdvfs
%adb% shell pm clear com.sec.android.app.twdvfs
%adb% shell pm %PmAction% com.sec.android.directshare
%adb% shell am force-stop com.sec.android.directshare
%adb% shell pm clear com.sec.android.directshare
%adb% shell pm %PmAction% com.sec.android.mimage.avatarstickers
%adb% shell am force-stop com.sec.android.mimage.avatarstickers
%adb% shell pm clear com.sec.android.mimage.avatarstickers
%adb% shell pm %PmAction% com.sec.android.app.twdvfs
%adb% shell am force-stop com.sec.android.app.twdvfs
%adb% shell pm clear com.sec.android.app.twdvfs
%adb% shell pm %PmAction% com.sec.android.app.wfdbroker
%adb% shell am force-stop com.sec.android.app.wfdbroker
%adb% shell pm clear com.sec.android.app.wfdbroker
%adb% shell pm %PmAction% com.sec.android.app.wfdbroker
%adb% shell am force-stop com.sec.android.app.wfdbroker
%adb% shell pm clear com.sec.android.app.wfdbroker
%adb% shell pm %PmAction% com.sec.android.app.wfdbroker
%adb% shell am force-stop com.sec.android.app.wfdbroker
%adb% shell pm clear com.sec.android.app.wfdbroker
%adb% shell pm %PmAction% com.sec.android.app.wfdbroker
%adb% shell am force-stop com.sec.android.app.wfdbroker
%adb% shell pm clear com.sec.android.app.wfdbroker
%adb% shell pm %PmAction% com.sec.android.app.wfdbroker
%adb% shell am force-stop com.sec.android.app.wfdbroker
%adb% shell pm clear com.sec.android.app.wfdbroker
%adb% shell pm %PmAction% com.sec.android.app.wfdbroker
%adb% shell am force-stop com.sec.android.app.wfdbroker
%adb% shell pm clear com.sec.android.app.wfdbroker
%adb% shell pm %PmAction% com.sec.android.app.wfdbroker
%adb% shell am force-stop com.sec.android.app.wfdbroker
%adb% shell pm clear com.sec.android.app.wfdbroker
%adb% shell pm %PmAction% com.sec.android.app.wfdbroker
%adb% shell am force-stop com.sec.android.app.wfdbroker
%adb% shell pm clear com.sec.android.app.wfdbroker
%adb% shell pm %PmAction% com.sec.android.app.wfdbroker
%adb% shell am force-stop com.sec.android.app.wfdbroker
%adb% shell pm clear com.sec.android.app.wfdbroker
%adb% shell pm %PmAction% com.sec.android.app.wfdbroker
%adb% shell am force-stop com.sec.android.app.wfdbroker
%adb% shell pm clear com.sec.android.app.wfdbroker
%adb% shell pm %PmAction% com.sec.android.app.wfdbroker
%adb% shell am force-stop com.sec.android.app.wfdbroker
%adb% shell pm clear com.sec.android.app.wfdbroker
%adb% shell pm %PmAction% com.sec.android.app.wfdbroker
%adb% shell am force-stop com.sec.android.app.wfdbroker
%adb% shell pm clear com.sec.android.app.wfdbroker
%adb% shell pm %PmAction% com.sec.android.app.wfdbroker
%adb% shell am force-stop com.sec.android.app.wfdbroker
%adb% shell pm clear com.sec.android.app.wfdbroker
%adb% shell pm %PmAction% com.sec.android.app.wfdbroker
%adb% shell am force-stop com.sec.android.app.wfdbroker
%adb% shell pm clear com.sec.android.app.wfdbroker
%adb% shell pm %PmAction% com.sec.android.app.wfdbroker
%adb% shell am force-stop com.sec.android.app.wfdbroker
%adb% shell pm clear com.sec.android.app.wfdbroker
%adb% shell pm %PmAction% com.sec.android.daemonapp
%adb% shell am force-stop com.sec.android.daemonapp
%adb% shell pm clear com.sec.android.daemonapp
%adb% shell pm %PmAction% com.sec.android.gallery3d.polarisoffice
%adb% shell am force-stop com.sec.android.gallery3d.polarisoffice
%adb% shell pm clear com.sec.android.gallery3d.polarisoffice
%adb% shell pm %PmAction% com.sec.android.pagebuddynotisvc
%adb% shell am force-stop com.sec.android.pagebuddynotisvc
%adb% shell pm clear com.sec.android.pagebuddynotisvc
%adb% shell pm %PmAction% com.sec.android.pagebuddysvc
%adb% shell am force-stop com.sec.android.pagebuddysvc
%adb% shell pm clear com.sec.android.pagebuddysvc
%adb% shell pm %PmAction% com.sec.android.provider.birthdayreminder
%adb% shell am force-stop com.sec.android.provider.birthdayreminder
%adb% shell pm clear com.sec.android.provider.birthdayreminder
%adb% shell pm %PmAction% com.sec.android.provider.downloadprovider
%adb% shell am force-stop com.sec.android.provider.downloadprovider
%adb% shell pm clear com.sec.android.provider.downloadprovider
%adb% shell pm %PmAction% com.sec.android.service.health
%adb% shell am force-stop com.sec.android.service.health
%adb% shell pm clear com.sec.android.service.health
%adb% shell pm %PmAction% com.sec.android.service.health
%adb% shell am force-stop com.sec.android.service.health
%adb% shell pm clear com.sec.android.service.health
%adb% shell pm %PmAction% com.sec.android.service.health
%adb% shell am force-stop com.sec.android.service.health
%adb% shell pm clear com.sec.android.service.health
%adb% shell pm %PmAction% com.sec.android.service.health
%adb% shell am force-stop com.sec.android.service.health
%adb% shell pm clear com.sec.android.service.health
%adb% shell pm %PmAction% com.sec.android.service.health
%adb% shell am force-stop com.sec.android.service.health
%adb% shell pm clear com.sec.android.service.health
%adb% shell pm %PmAction% com.sec.android.service.health
%adb% shell am force-stop com.sec.android.service.health
%adb% shell pm clear com.sec.android.service.health
%adb% shell pm %PmAction% com.sec.android.service.health
%adb% shell am force-stop com.sec.android.service.health
%adb% shell pm clear com.sec.android.service.health
%adb% shell pm %PmAction% com.sec.android.service.health
%adb% shell am force-stop com.sec.android.service.health
%adb% shell pm clear com.sec.android.service.health
%adb% shell pm %PmAction% com.sec.android.service.health
%adb% shell am force-stop com.sec.android.service.health
%adb% shell pm clear com.sec.android.service.health
%adb% shell pm %PmAction% com.sec.android.service.health
%adb% shell am force-stop com.sec.android.service.health
%adb% shell pm clear com.sec.android.service.health
%adb% shell pm %PmAction% com.sec.android.service.health
%adb% shell am force-stop com.sec.android.service.health
%adb% shell pm clear com.sec.android.service.health
%adb% shell pm %PmAction% com.sec.android.service.health
%adb% shell am force-stop com.sec.android.service.health
%adb% shell pm clear com.sec.android.service.health
%adb% shell pm %PmAction% com.sec.android.sidesync30
%adb% shell am force-stop com.sec.android.sidesync30
%adb% shell pm clear com.sec.android.sidesync30
%adb% shell pm %PmAction% com.sec.android.splitsound
%adb% shell am force-stop com.sec.android.splitsound
%adb% shell pm clear com.sec.android.splitsound
%adb% shell pm %PmAction% com.sec.android.uibcvirtualsoftkey
%adb% shell am force-stop com.sec.android.uibcvirtualsoftkey
%adb% shell pm clear com.sec.android.uibcvirtualsoftkey
%adb% shell pm %PmAction% com.sec.android.widgetapp.diotek.smemo
%adb% shell am force-stop com.sec.android.widgetapp.diotek.smemo
%adb% shell pm clear com.sec.android.widgetapp.diotek.smemo
%adb% shell pm %PmAction% com.sec.android.widgetapp.easymodecontactswidget
%adb% shell am force-stop com.sec.android.widgetapp.easymodecontactswidget
%adb% shell pm clear com.sec.android.widgetapp.easymodecontactswidget
%adb% shell pm %PmAction% com.sec.android.widgetapp.samsungapps
%adb% shell am force-stop com.sec.android.widgetapp.samsungapps
%adb% shell pm clear com.sec.android.widgetapp.samsungapps
%adb% shell pm %PmAction% com.sec.android.widgetapp.webmanual
%adb% shell am force-stop com.sec.android.widgetapp.webmanual
%adb% shell pm clear com.sec.android.widgetapp.webmanual
%adb% shell pm %PmAction% com.sec.app.RilErrorNotifier
%adb% shell am force-stop com.sec.app.RilErrorNotifier
%adb% shell pm clear com.sec.app.RilErrorNotifier
%adb% shell pm %PmAction% com.sec.bcservice
%adb% shell am force-stop com.sec.bcservice
%adb% shell pm clear com.sec.bcservice
%adb% shell pm %PmAction% com.sec.downloadablekeystore
%adb% shell am force-stop com.sec.downloadablekeystore
%adb% shell pm clear com.sec.downloadablekeystore
%adb% shell pm %PmAction% com.sec.enterprise.knox.attestation
%adb% shell am force-stop com.sec.enterprise.knox.attestation
%adb% shell pm clear com.sec.enterprise.knox.attestation
%adb% shell pm %PmAction% com.sec.enterprise.knox.cloudmdm.smdms
%adb% shell am force-stop com.sec.enterprise.knox.cloudmdm.smdms
%adb% shell pm clear com.sec.enterprise.knox.cloudmdm.smdms
%adb% shell pm %PmAction% com.sec.enterprise.knox.shareddevice.keyguard
%adb% shell am force-stop com.sec.enterprise.knox.shareddevice.keyguard
%adb% shell pm clear com.sec.enterprise.knox.shareddevice.keyguard
%adb% shell pm %PmAction% com.sec.enterprise.mdm.services.simpin
%adb% shell am force-stop com.sec.enterprise.mdm.services.simpin
%adb% shell pm clear com.sec.enterprise.mdm.services.simpin
%adb% shell pm %PmAction% com.sec.enterprise.mdm.vpn
%adb% shell am force-stop com.sec.enterprise.mdm.vpn
%adb% shell pm clear com.sec.enterprise.mdm.vpn
%adb% shell pm %PmAction% com.sec.epdgtestapp
%adb% shell am force-stop com.sec.epdgtestapp
%adb% shell pm clear com.sec.epdgtestapp
%adb% shell pm %PmAction% com.sec.everglades
%adb% shell am force-stop com.sec.everglades
%adb% shell pm clear com.sec.everglades
%adb% shell pm %PmAction% com.sec.everglades.update
%adb% shell am force-stop com.sec.everglades.update
%adb% shell pm clear com.sec.everglades.update
%adb% shell pm %PmAction% com.sec.factory
%adb% shell am force-stop com.sec.factory
%adb% shell pm clear com.sec.factory
%adb% shell pm %PmAction% com.sec.factory.camera
%adb% shell am force-stop com.sec.factory.camera
%adb% shell pm clear com.sec.factory.camera
%adb% shell pm %PmAction% com.sec.factory.iris.usercamera
%adb% shell am force-stop com.sec.factory.iris.usercamera
%adb% shell pm clear com.sec.factory.iris.usercamera
%adb% shell pm %PmAction% com.sec.hiddenmenu
%adb% shell am force-stop com.sec.hiddenmenu
%adb% shell pm clear com.sec.hiddenmenu
%adb% shell pm %PmAction% com.sec.imslogger
%adb% shell am force-stop com.sec.imslogger
%adb% shell pm clear com.sec.imslogger
%adb% shell pm %PmAction% com.sec.kidsplat.installer
%adb% shell am force-stop com.sec.kidsplat.installer
%adb% shell pm clear com.sec.kidsplat.installer
%adb% shell pm %PmAction% com.sec.knox.bluetooth
%adb% shell am force-stop com.sec.knox.bluetooth
%adb% shell pm clear com.sec.knox.bluetooth
%adb% shell pm %PmAction% com.sec.knox.bridge
%adb% shell am force-stop com.sec.knox.bridge
%adb% shell pm clear com.sec.knox.bridge
%adb% shell pm %PmAction% com.sec.knox.containeragent2
%adb% shell am force-stop com.sec.knox.containeragent2
%adb% shell pm clear com.sec.knox.containeragent2
%adb% shell pm %PmAction% com.sec.knox.foldercontainer
%adb% shell am force-stop com.sec.knox.foldercontainer
%adb% shell pm clear com.sec.knox.foldercontainer
%adb% shell pm %PmAction% com.sec.knox.knoxsetupwizardclient
%adb% shell am force-stop com.sec.knox.knoxsetupwizardclient
%adb% shell pm clear com.sec.knox.knoxsetupwizardclient
%adb% shell pm %PmAction% com.sec.knox.packageverifier
%adb% shell am force-stop com.sec.knox.packageverifier
%adb% shell pm clear com.sec.knox.packageverifier
%adb% shell pm %PmAction% com.sec.knox.shortcutsms
%adb% shell am force-stop com.sec.knox.shortcutsms
%adb% shell pm clear com.sec.knox.shortcutsms
%adb% shell pm %PmAction% com.sec.knox.switcher
%adb% shell am force-stop com.sec.knox.switcher
%adb% shell pm clear com.sec.knox.switcher
%adb% shell pm %PmAction% com.sec.knox.switchknoxI
%adb% shell am force-stop com.sec.knox.switchknoxI
%adb% shell pm clear com.sec.knox.switchknoxI
%adb% shell pm %PmAction% com.sec.knox.switchknoxII
%adb% shell am force-stop com.sec.knox.switchknoxII
%adb% shell pm clear com.sec.knox.switchknoxII
%adb% shell pm %PmAction% com.sec.location.nsflp2
%adb% shell am force-stop com.sec.location.nsflp2
%adb% shell pm clear com.sec.location.nsflp2
%adb% shell pm %PmAction% com.sec.mldapchecker
%adb% shell am force-stop com.sec.mldapchecker
%adb% shell pm clear com.sec.mldapchecker
%adb% shell pm %PmAction% com.sec.modem.settings
%adb% shell am force-stop com.sec.modem.settings
%adb% shell pm clear com.sec.modem.settings
%adb% shell pm %PmAction% com.sec.phone
%adb% shell am force-stop com.sec.phone
%adb% shell pm clear com.sec.phone
%adb% shell pm %PmAction% com.sec.readershub
%adb% shell am force-stop com.sec.readershub
%adb% shell pm clear com.sec.readershub
%adb% shell pm %PmAction% com.sec.smartcard.manager
%adb% shell am force-stop com.sec.smartcard.manager
%adb% shell pm clear com.sec.smartcard.manager
%adb% shell pm %PmAction% com.sec.spp.push
%adb% shell am force-stop com.sec.spp.push
%adb% shell pm clear com.sec.spp.push
%adb% shell pm %PmAction% com.sec.sve
%adb% shell am force-stop com.sec.sve
%adb% shell pm clear com.sec.sve
%adb% shell pm %PmAction% com.sec.yosemite.phone
%adb% shell am force-stop com.sec.yosemite.phone
%adb% shell pm clear com.sec.yosemite.phone
%adb% shell pm %PmAction% com.skms.android.agent
%adb% shell am force-stop com.skms.android.agent
%adb% shell pm clear com.skms.android.agent
%adb% shell pm %PmAction% com.sec.usbsettings
%adb% shell am force-stop com.sec.usbsettings
%adb% shell pm clear com.sec.usbsettings
%adb% shell pm %PmAction% com.monotype.android.font.samsungone
%adb% shell am force-stop com.monotype.android.font.samsungone
%adb% shell pm clear com.monotype.android.font.samsungone
%adb% shell pm %PmAction% com.vlingo.midas
%adb% shell am force-stop com.vlingo.midas
%adb% shell pm clear com.vlingo.midas
%adb% shell pm %PmAction% com.wsomacp
%adb% shell am force-stop com.wsomacp
%adb% shell pm clear com.wsomacp
%adb% shell pm %PmAction% com.wssnps
%adb% shell am force-stop com.wssnps
%adb% shell pm clear com.wssnps
%adb% shell pm %PmAction% tv.peel.samsung.app
%adb% shell am force-stop tv.peel.samsung.app
%adb% shell pm clear tv.peel.samsung.app
%adb% shell pm %PmAction% com.samsung.japan.easysettingmanager
%adb% shell am force-stop com.samsung.japan.easysettingmanager
%adb% shell pm clear com.samsung.japan.easysettingmanager
rem Sony
%adb% shell pm %PmAction% com.sony.tvsideview.videoph
%adb% shell am force-stop com.sony.tvsideview.videoph
%adb% shell pm clear com.sony.tvsideview.videoph
%adb% shell pm %PmAction% com.sonyericsson.android.addoncamera.artfilter
%adb% shell am force-stop com.sonyericsson.android.addoncamera.artfilter
%adb% shell pm clear com.sonyericsson.android.addoncamera.artfilter
%adb% shell pm %PmAction% com.sonyericsson.android.omacp
%adb% shell am force-stop com.sonyericsson.android.omacp
%adb% shell pm clear com.sonyericsson.android.omacp
%adb% shell pm %PmAction% com.sonyericsson.conversations.res.overlay_305
%adb% shell am force-stop com.sonyericsson.conversations.res.overlay_305
%adb% shell pm clear com.sonyericsson.conversations.res.overlay_305
%adb% shell pm %PmAction% com.sonyericsson.conversations.res.overlay
%adb% shell am force-stop com.sonyericsson.conversations.res.overlay
%adb% shell pm clear com.sonyericsson.conversations.res.overlay
%adb% shell pm %PmAction% com.sonyericsson.idd.agent
%adb% shell am force-stop com.sonyericsson.idd.agent
%adb% shell pm clear com.sonyericsson.idd.agent
%adb% shell pm %PmAction% com.sonyericsson.mtp.extension.backuprestore
%adb% shell am force-stop com.sonyericsson.mtp.extension.backuprestore
%adb% shell pm clear com.sonyericsson.mtp.extension.backuprestore
%adb% shell pm %PmAction% com.sonyericsson.mtp.extension.update
%adb% shell am force-stop com.sonyericsson.mtp.extension.update
%adb% shell pm clear com.sonyericsson.mtp.extension.update
%adb% shell pm %PmAction% com.sonyericsson.music
%adb% shell am force-stop com.sonyericsson.music
%adb% shell pm clear com.sonyericsson.music
%adb% shell pm %PmAction% com.sonyericsson.settings.res.overlay_305
%adb% shell am force-stop com.sonyericsson.settings.res.overlay_305
%adb% shell pm clear com.sonyericsson.settings.res.overlay_305
%adb% shell pm %PmAction% com.sonyericsson.startupflagservice
%adb% shell am force-stop com.sonyericsson.startupflagservice
%adb% shell pm clear com.sonyericsson.startupflagservice
%adb% shell pm %PmAction% com.sonyericsson.textinput.chinese
%adb% shell am force-stop com.sonyericsson.textinput.chinese
%adb% shell pm clear com.sonyericsson.textinput.chinese
%adb% shell pm %PmAction% com.sonyericsson.trackid.res.overlay
%adb% shell am force-stop com.sonyericsson.trackid.res.overlay
%adb% shell pm clear com.sonyericsson.trackid.res.overlay
%adb% shell pm %PmAction% com.sonyericsson.trackid.res.overlay_305
%adb% shell am force-stop com.sonyericsson.trackid.res.overlay_305
%adb% shell pm clear com.sonyericsson.trackid.res.overlay_305
%adb% shell pm %PmAction% com.sonyericsson.unsupportedheadsetnotifier
%adb% shell am force-stop com.sonyericsson.unsupportedheadsetnotifier
%adb% shell pm clear com.sonyericsson.unsupportedheadsetnotifier
%adb% shell pm %PmAction% com.sonyericsson.wappush
%adb% shell am force-stop com.sonyericsson.wappush
%adb% shell pm clear com.sonyericsson.wappush
%adb% shell pm %PmAction% com.sonyericsson.warrantytime
%adb% shell am force-stop com.sonyericsson.warrantytime
%adb% shell pm clear com.sonyericsson.warrantytime
%adb% shell pm %PmAction% com.sonyericsson.xhs
%adb% shell am force-stop com.sonyericsson.xhs
%adb% shell pm clear com.sonyericsson.xhs
%adb% shell pm %PmAction% com.sonymobile.advancedlogging
%adb% shell am force-stop com.sonymobile.advancedlogging
%adb% shell pm clear com.sonymobile.advancedlogging
%adb% shell pm %PmAction% com.sonymobile.advancedwidget.topcontacts
%adb% shell am force-stop com.sonymobile.advancedwidget.topcontacts
%adb% shell pm clear com.sonymobile.advancedwidget.topcontacts
%adb% shell pm %PmAction% com.sonymobile.android.addoncamera.soundphoto
%adb% shell am force-stop com.sonymobile.android.addoncamera.soundphoto
%adb% shell pm clear com.sonymobile.android.addoncamera.soundphoto
%adb% shell pm %PmAction% com.sonymobile.androidapp.cameraaddon.areffect
%adb% shell am force-stop com.sonymobile.androidapp.cameraaddon.areffect
%adb% shell pm clear com.sonymobile.androidapp.cameraaddon.areffect
%adb% shell pm %PmAction% com.sonymobile.android.externalkeyboard
%adb% shell am force-stop com.sonymobile.android.externalkeyboard
%adb% shell pm clear com.sonymobile.android.externalkeyboard
%adb% shell pm %PmAction% com.sonymobile.android.contacts.res.overlay_305
%adb% shell am force-stop com.sonymobile.android.contacts.res.overlay_305
%adb% shell pm clear com.sonymobile.android.contacts.res.overlay_305
%adb% shell pm %PmAction% com.sonymobile.android.externalkeyboardjp
%adb% shell am force-stop com.sonymobile.android.externalkeyboardjp
%adb% shell pm clear com.sonymobile.android.externalkeyboardjp
%adb% shell pm %PmAction% com.sonymobile.anondata
%adb% shell am force-stop com.sonymobile.anondata
%adb% shell pm clear com.sonymobile.anondata
%adb% shell pm %PmAction% com.sonymobile.aptx.notifier
%adb% shell am force-stop com.sonymobile.aptx.notifier
%adb% shell pm clear com.sonymobile.aptx.notifier
%adb% shell pm %PmAction% com.sonymobile.assist
%adb% shell am force-stop com.sonymobile.assist
%adb% shell pm clear com.sonymobile.assist
%adb% shell pm %PmAction% com.sonymobile.assist.persistent
%adb% shell am force-stop com.sonymobile.assist.persistent
%adb% shell pm clear com.sonymobile.assist.persistent
%adb% shell pm %PmAction% com.sonymobile.cameracommon.wearablebridge
%adb% shell am force-stop com.sonymobile.cameracommon.wearablebridge
%adb% shell pm clear com.sonymobile.cameracommon.wearablebridge
%adb% shell pm %PmAction% com.sonymobile.coverapp2
%adb% shell am force-stop com.sonymobile.coverapp2
%adb% shell pm clear com.sonymobile.coverapp2
%adb% shell pm %PmAction% com.sonymobile.demoappchecker
%adb% shell am force-stop com.sonymobile.demoappchecker
%adb% shell pm clear com.sonymobile.demoappchecker
%adb% shell pm %PmAction% com.sonymobile.deviceconfigtool
%adb% shell am force-stop com.sonymobile.deviceconfigtool
%adb% shell pm clear com.sonymobile.deviceconfigtool
%adb% shell pm %PmAction% com.sonymobile.dualshockmanager
%adb% shell am force-stop com.sonymobile.dualshockmanager
%adb% shell pm clear com.sonymobile.dualshockmanager
%adb% shell pm %PmAction% com.sonymobile.email
%adb% shell am force-stop com.sonymobile.email
%adb% shell pm clear com.sonymobile.email
%adb% shell pm %PmAction% com.sonymobile.entrance
%adb% shell am force-stop com.sonymobile.entrance
%adb% shell pm clear com.sonymobile.entrance
%adb% shell pm %PmAction% com.sonymobile.getmore.client
%adb% shell am force-stop com.sonymobile.getmore.client
%adb% shell pm clear com.sonymobile.getmore.client
%adb% shell pm %PmAction% com.sonymobile.getset
%adb% shell am force-stop com.sonymobile.getset
%adb% shell pm clear com.sonymobile.getset
%adb% shell pm %PmAction% com.sonymobile.getset.priv
%adb% shell am force-stop com.sonymobile.getset.priv
%adb% shell pm clear com.sonymobile.getset.priv
%adb% shell pm %PmAction% com.sonymobile.gettoknowit
%adb% shell am force-stop com.sonymobile.gettoknowit
%adb% shell pm clear com.sonymobile.gettoknowit
%adb% shell pm %PmAction% com.sonymobile.glovemode
%adb% shell am force-stop com.sonymobile.glovemode
%adb% shell pm clear com.sonymobile.glovemode
%adb% shell pm %PmAction% com.sonymobile.googleanalyticsproxy
%adb% shell am force-stop com.sonymobile.googleanalyticsproxy
%adb% shell pm clear com.sonymobile.googleanalyticsproxy
%adb% shell pm %PmAction% com.sonymobile.intelligent.backlight
%adb% shell am force-stop com.sonymobile.intelligent.backlight
%adb% shell pm clear com.sonymobile.intelligent.backlight
%adb% shell pm %PmAction% com.sonymobile.indeviceintelligence
%adb% shell am force-stop com.sonymobile.indeviceintelligence
%adb% shell pm clear com.sonymobile.indeviceintelligence
%adb% shell pm %PmAction% com.sonymobile.intelligent.gesture
%adb% shell am force-stop com.sonymobile.intelligent.gesture
%adb% shell pm clear com.sonymobile.intelligent.gesture
%adb% shell pm %PmAction% com.sonymobile.intelligent.iengine
%adb% shell am force-stop com.sonymobile.intelligent.iengine
%adb% shell pm clear com.sonymobile.intelligent.iengine
%adb% shell pm %PmAction% com.sonymobile.intelligent.observer
%adb% shell am force-stop com.sonymobile.intelligent.observer
%adb% shell pm clear com.sonymobile.intelligent.observer
%adb% shell pm %PmAction% com.sonymobile.lifelog
%adb% shell am force-stop com.sonymobile.lifelog
%adb% shell pm clear com.sonymobile.lifelog
%adb% shell pm %PmAction% com.sonymobile.moviecreator.rmm
%adb% shell am force-stop com.sonymobile.moviecreator.rmm
%adb% shell pm clear com.sonymobile.moviecreator.rmm
%adb% shell pm %PmAction% com.sonymobile.mtp.extension.fotaupdate
%adb% shell am force-stop com.sonymobile.mtp.extension.fotaupdate
%adb% shell pm clear com.sonymobile.mtp.extension.fotaupdate
%adb% shell pm %PmAction% com.sonymobile.music.googlelyricsplugin
%adb% shell am force-stop com.sonymobile.music.googlelyricsplugin
%adb% shell pm clear com.sonymobile.music.googlelyricsplugin
%adb% shell pm %PmAction% com.sonymobile.music.wikipediaplugin
%adb% shell am force-stop com.sonymobile.music.wikipediaplugin
%adb% shell pm clear com.sonymobile.music.wikipediaplugin
%adb% shell pm %PmAction% com.sonymobile.music.youtubekaraokeplugin
%adb% shell am force-stop com.sonymobile.music.youtubekaraokeplugin
%adb% shell pm clear com.sonymobile.music.youtubekaraokeplugin
%adb% shell pm %PmAction% com.sonymobile.music.youtubeplugin
%adb% shell am force-stop com.sonymobile.music.youtubeplugin
%adb% shell pm clear com.sonymobile.music.youtubeplugin
%adb% shell pm %PmAction% com.sonymobile.pip
%adb% shell am force-stop com.sonymobile.pip
%adb% shell pm clear com.sonymobile.pip
%adb% shell pm %PmAction% com.sonymobile.pobox
%adb% shell am force-stop com.sonymobile.pobox
%adb% shell pm clear com.sonymobile.pobox
%adb% shell pm %PmAction% com.sonymobile.prediction
%adb% shell am force-stop com.sonymobile.prediction
%adb% shell pm clear com.sonymobile.prediction
%adb% shell pm %PmAction% com.sonymobile.retaildemo
%adb% shell am force-stop com.sonymobile.retaildemo
%adb% shell pm clear com.sonymobile.retaildemo
%adb% shell pm %PmAction% com.sonymobile.scan3d
%adb% shell am force-stop com.sonymobile.scan3d
%adb% shell pm clear com.sonymobile.scan3d
%adb% shell pm %PmAction% com.sonymobile.simlockunlockapp
%adb% shell am force-stop com.sonymobile.simlockunlockapp
%adb% shell pm clear com.sonymobile.simlockunlockapp
%adb% shell pm %PmAction% com.sonymobile.smartcharger
%adb% shell am force-stop com.sonymobile.smartcharger
%adb% shell pm clear com.sonymobile.smartcharger
%adb% shell pm %PmAction% com.sonymobile.support
%adb% shell am force-stop com.sonymobile.support
%adb% shell pm clear com.sonymobile.support
%adb% shell pm %PmAction% com.sonymobile.synchub
%adb% shell am force-stop com.sonymobile.synchub
%adb% shell pm clear com.sonymobile.synchub
%adb% shell pm %PmAction% com.sonymobile.themes.sou.cid18.black
%adb% shell am force-stop com.sonymobile.themes.sou.cid18.black
%adb% shell pm clear com.sonymobile.themes.sou.cid18.black
%adb% shell pm %PmAction% com.sonymobile.themes.sou.cid19.silver
%adb% shell am force-stop com.sonymobile.themes.sou.cid19.silver
%adb% shell pm clear com.sonymobile.themes.sou.cid19.silver
%adb% shell pm %PmAction% com.sonymobile.themes.sou.cid20.blue
%adb% shell am force-stop com.sonymobile.themes.sou.cid20.blue
%adb% shell pm clear com.sonymobile.themes.sou.cid20.blue
%adb% shell pm %PmAction% com.sonymobile.themes.sou.cid21.pink
%adb% shell am force-stop com.sonymobile.themes.sou.cid21.pink
%adb% shell pm clear com.sonymobile.themes.sou.cid21.pink
%adb% shell pm %PmAction% com.sonymobile.themes.xperialoops2
%adb% shell am force-stop com.sonymobile.themes.xperialoops2
%adb% shell pm clear com.sonymobile.themes.xperialoops2
%adb% shell pm %PmAction% com.sonymobile.xperialounge.services
%adb% shell am force-stop com.sonymobile.xperialounge.services
%adb% shell pm clear com.sonymobile.xperialounge.services
%adb% shell pm %PmAction% com.sonymobile.xperiaxlivewallpaper
%adb% shell am force-stop com.sonymobile.xperiaxlivewallpaper
%adb% shell pm clear com.sonymobile.xperiaxlivewallpaper
%adb% shell pm %PmAction% com.sonymobile.xperiaxlivewallpaper.product.res.overlay
%adb% shell am force-stop com.sonymobile.xperiaxlivewallpaper.product.res.overlay
%adb% shell pm clear com.sonymobile.xperiaxlivewallpaper.product.res.overlay
%adb% shell pm %PmAction% com.sonymobile.xperiaservices
%adb% shell am force-stop com.sonymobile.xperiaservices
%adb% shell pm clear com.sonymobile.xperiaservices
%adb% shell pm %PmAction% com.sonymobile.xperiatransfermobile
%adb% shell am force-stop com.sonymobile.xperiatransfermobile
%adb% shell pm clear com.sonymobile.xperiatransfermobile
%adb% shell pm %PmAction% com.sonymobile.xperiaweather
%adb% shell am force-stop com.sonymobile.xperiaweather
%adb% shell pm clear com.sonymobile.xperiaweather
%adb% shell pm %PmAction% com.sony.drbd.reader.other.jp
%adb% shell am force-stop com.sony.drbd.reader.other.jp
%adb% shell pm clear com.sony.drbd.reader.other.jp
%adb% shell pm %PmAction% com.sony.nfx.app.sfrc
%adb% shell am force-stop com.sony.nfx.app.sfrc
%adb% shell pm clear com.sony.nfx.app.sfrc
%adb% shell pm %PmAction% com.sony.smallapp.appframework
%adb% shell am force-stop com.sony.smallapp.appframework
%adb% shell pm clear com.sony.smallapp.appframework
%adb% shell pm %PmAction% com.sony.smallapp.managerservice
%adb% shell am force-stop com.sony.smallapp.managerservice
%adb% shell pm clear com.sony.smallapp.managerservice
%adb% shell pm %PmAction% com.sony.tvsideview.phone
%adb% shell am force-stop com.sony.tvsideview.phone
%adb% shell pm clear com.sony.tvsideview.phone
%adb% shell pm %PmAction% com.sonyericsson.advancedwidget.clock
%adb% shell am force-stop com.sonyericsson.advancedwidget.clock
%adb% shell pm clear com.sonyericsson.advancedwidget.clock
%adb% shell pm %PmAction% com.sonyericsson.advancedwidget.photo
%adb% shell am force-stop com.sonyericsson.advancedwidget.photo
%adb% shell pm clear com.sonyericsson.advancedwidget.photo
%adb% shell pm %PmAction% com.sonyericsson.android.servicemenu.product.res.overlay.docomo
%adb% shell am force-stop com.sonyericsson.android.servicemenu.product.res.overlay.docomo
%adb% shell pm clear com.sonyericsson.android.servicemenu.product.res.overlay.docomo
%adb% shell pm %PmAction% com.sonyericsson.androidapp.sehome
%adb% shell am force-stop com.sonyericsson.androidapp.sehome
%adb% shell pm clear com.sonyericsson.androidapp.sehome
%adb% shell pm %PmAction% com.sonyericsson.docomo.settings
%adb% shell am force-stop com.sonyericsson.docomo.settings
%adb% shell pm clear com.sonyericsson.docomo.settings
%adb% shell pm %PmAction% com.sonyericsson.home.res.overlay_305
%adb% shell am force-stop com.sonyericsson.home.res.overlay_305
%adb% shell pm clear com.sonyericsson.home.res.overlay_305
%adb% shell pm %PmAction% com.sonyericsson.photoeditor
%adb% shell am force-stop com.sonyericsson.photoeditor
%adb% shell pm clear com.sonyericsson.photoeditor
%adb% shell pm %PmAction% com.sonyericsson.suquashi.soundpicker
%adb% shell am force-stop com.sonyericsson.suquashi.soundpicker
%adb% shell pm clear com.sonyericsson.suquashi.soundpicker
%adb% shell pm %PmAction% com.sonyericsson.trackid
%adb% shell am force-stop com.sonyericsson.trackid
%adb% shell pm clear com.sonyericsson.trackid
%adb% shell pm %PmAction% com.sonyericsson.updatecenter
%adb% shell am force-stop com.sonyericsson.updatecenter
%adb% shell pm clear com.sonyericsson.updatecenter
%adb% shell pm %PmAction% com.sonyericsson.video
%adb% shell am force-stop com.sonyericsson.video
%adb% shell pm clear com.sonyericsson.video
%adb% shell pm %PmAction% com.sonymobile.androidapp.cameraaddon.stickercreator
%adb% shell am force-stop com.sonymobile.androidapp.cameraaddon.stickercreator
%adb% shell pm clear com.sonymobile.androidapp.cameraaddon.stickercreator
%adb% shell pm %PmAction% com.sonymobile.androidapp.smallmovies
%adb% shell am force-stop com.sonymobile.androidapp.smallmovies
%adb% shell pm clear com.sonymobile.androidapp.smallmovies
%adb% shell pm %PmAction% com.sonymobile.calendar
%adb% shell am force-stop com.sonymobile.calendar
%adb% shell pm clear com.sonymobile.calendar
%adb% shell pm %PmAction% com.sonymobile.coverwidget
%adb% shell am force-stop com.sonymobile.coverwidget
%adb% shell pm clear com.sonymobile.coverwidget
%adb% shell pm %PmAction% com.sonymobile.deqp
%adb% shell am force-stop com.sonymobile.deqp
%adb% shell pm clear com.sonymobile.deqp
%adb% shell pm %PmAction% com.sonymobile.docomoemoji.license
%adb% shell am force-stop com.sonymobile.docomoemoji.license
%adb% shell pm clear com.sonymobile.docomoemoji.license
%adb% shell pm %PmAction% com.sonymobile.enterprise.service
%adb% shell am force-stop com.sonymobile.enterprise.service
%adb% shell pm clear com.sonymobile.enterprise.service
%adb% shell pm %PmAction% com.sonymobile.exchange
%adb% shell am force-stop com.sonymobile.exchange
%adb% shell pm clear com.sonymobile.exchange
%adb% shell pm %PmAction% com.sonymobile.moviecreator
%adb% shell am force-stop com.sonymobile.moviecreator
%adb% shell pm clear com.sonymobile.moviecreator
%adb% shell pm %PmAction% com.sonymobile.music.wikipediapluginjpn
%adb% shell am force-stop com.sonymobile.music.wikipediapluginjpn
%adb% shell pm clear com.sonymobile.music.wikipediapluginjpn
%adb% shell pm %PmAction% com.sonymobile.mx.android
%adb% shell am force-stop com.sonymobile.mx.android
%adb% shell pm clear com.sonymobile.mx.android
%adb% shell pm %PmAction% com.sonymobile.photoanalyzer
%adb% shell am force-stop com.sonymobile.photoanalyzer
%adb% shell pm clear com.sonymobile.photoanalyzer
%adb% shell pm %PmAction% com.sonymobile.pobox.skin.easy
%adb% shell am force-stop com.sonymobile.pobox.skin.easy
%adb% shell pm clear com.sonymobile.pobox.skin.easy
%adb% shell pm %PmAction% com.sonymobile.pobox.skin.gummi
%adb% shell am force-stop com.sonymobile.pobox.skin.gummi
%adb% shell pm clear com.sonymobile.pobox.skin.gummi
%adb% shell pm %PmAction% com.sonymobile.pobox.skin.standard
%adb% shell am force-stop com.sonymobile.pobox.skin.standard
%adb% shell pm clear com.sonymobile.pobox.skin.standard
%adb% shell pm %PmAction% com.sonymobile.pobox.skin.wood
%adb% shell am force-stop com.sonymobile.pobox.skin.wood
%adb% shell pm clear com.sonymobile.pobox.skin.wood
%adb% shell pm %PmAction% com.sonymobile.podcast
%adb% shell am force-stop com.sonymobile.podcast
%adb% shell pm clear com.sonymobile.podcast
%adb% shell pm %PmAction% com.sonymobile.screenrecording
%adb% shell am force-stop com.sonymobile.screenrecording
%adb% shell pm clear com.sonymobile.screenrecording
%adb% shell pm %PmAction% com.sonymobile.sketch
%adb% shell am force-stop com.sonymobile.sketch
%adb% shell pm clear com.sonymobile.sketch
%adb% shell pm %PmAction% com.sonymobile.slideshow
%adb% shell am force-stop com.sonymobile.slideshow
%adb% shell pm clear com.sonymobile.slideshow
%adb% shell pm %PmAction% com.sonymobile.smallapps.clipper
%adb% shell am force-stop com.sonymobile.smallapps.clipper
%adb% shell pm clear com.sonymobile.smallapps.clipper
%adb% shell pm %PmAction% com.sonymobile.smallapps.timer
%adb% shell am force-stop com.sonymobile.smallapps.timer
%adb% shell pm clear com.sonymobile.smallapps.timer
%adb% shell pm %PmAction% com.sonymobile.superstamina.docomo.res.overlay
%adb% shell am force-stop com.sonymobile.superstamina.docomo.res.overlay
%adb% shell pm clear com.sonymobile.superstamina.docomo.res.overlay
%adb% shell pm %PmAction% com.sonymobile.themes.id000
%adb% shell am force-stop com.sonymobile.themes.id000
%adb% shell pm clear com.sonymobile.themes.id000
%adb% shell pm %PmAction% com.sonymobile.themes.id001
%adb% shell am force-stop com.sonymobile.themes.id001
%adb% shell pm clear com.sonymobile.themes.id001
%adb% shell pm %PmAction% com.sonymobile.themes.id002
%adb% shell am force-stop com.sonymobile.themes.id002
%adb% shell pm clear com.sonymobile.themes.id002
%adb% shell pm %PmAction% com.sonymobile.themes.id003
%adb% shell am force-stop com.sonymobile.themes.id003
%adb% shell pm clear com.sonymobile.themes.id003
%adb% shell pm %PmAction% com.sonymobile.themes.id004
%adb% shell am force-stop com.sonymobile.themes.id004
%adb% shell pm clear com.sonymobile.themes.id004
%adb% shell pm %PmAction% com.sonymobile.themes.id005
%adb% shell am force-stop com.sonymobile.themes.id005
%adb% shell pm clear com.sonymobile.themes.id005
%adb% shell pm %PmAction% com.sonymobile.themes.id006
%adb% shell am force-stop com.sonymobile.themes.id006
%adb% shell pm clear com.sonymobile.themes.id006
%adb% shell pm %PmAction% com.sonymobile.themes.id007
%adb% shell am force-stop com.sonymobile.themes.id007
%adb% shell pm clear com.sonymobile.themes.id007
%adb% shell pm %PmAction% com.sonymobile.themes.id008
%adb% shell am force-stop com.sonymobile.themes.id008
%adb% shell pm clear com.sonymobile.themes.id008
%adb% shell pm %PmAction% com.sonymobile.touchblocker
%adb% shell am force-stop com.sonymobile.touchblocker
%adb% shell pm clear com.sonymobile.touchblocker
%adb% shell pm %PmAction% com.sonymobile.tvout.wifidisplay
%adb% shell am force-stop com.sonymobile.tvout.wifidisplay
%adb% shell pm clear com.sonymobile.tvout.wifidisplay
%adb% shell pm %PmAction% com.scee.psxandroid
%adb% shell am force-stop com.scee.psxandroid
%adb% shell pm clear com.scee.psxandroid
rem Xiaomi
%adb% shell pm %PmAction% android.autoinstalls.config.Xiaomi.cepheus
%adb% shell am force-stop android.autoinstalls.config.Xiaomi.cepheus
%adb% shell pm clear android.autoinstalls.config.Xiaomi.cepheus
%adb% shell pm %PmAction% android.autoinstalls.config.Xiaomi.dipper
%adb% shell am force-stop android.autoinstalls.config.Xiaomi.dipper
%adb% shell pm clear android.autoinstalls.config.Xiaomi.dipper
%adb% shell pm %PmAction% android.autoinstalls.config.Xiaomi.daisy
%adb% shell am force-stop android.autoinstalls.config.Xiaomi.daisy
%adb% shell pm clear android.autoinstalls.config.Xiaomi.daisy
%adb% shell pm %PmAction% android.autoinstalls.config.Xiaomi.cactus
%adb% shell am force-stop android.autoinstalls.config.Xiaomi.cactus
%adb% shell pm clear android.autoinstalls.config.Xiaomi.cactus
%adb% shell pm %PmAction% android.romstats
%adb% shell am force-stop android.romstats
%adb% shell pm clear android.romstats
%adb% shell pm %PmAction% cn.wps.xiaomi.abroad.lite
%adb% shell am force-stop cn.wps.xiaomi.abroad.lite
%adb% shell pm clear cn.wps.xiaomi.abroad.lite
%adb% shell pm %PmAction% com.android.backup
%adb% shell am force-stop com.android.backup
%adb% shell pm clear com.android.backup
%adb% shell pm %PmAction% com.android.midrive
%adb% shell am force-stop com.android.midrive
%adb% shell pm clear com.android.midrive
%adb% shell pm %PmAction% com.autonavi.minimap
%adb% shell am force-stop com.autonavi.minimap
%adb% shell pm clear com.autonavi.minimap
%adb% shell pm %PmAction% com.baidu.duersdk.opensdk
%adb% shell am force-stop com.baidu.duersdk.opensdk
%adb% shell pm clear com.baidu.duersdk.opensdk
%adb% shell pm %PmAction% com.baidu.input_mi
%adb% shell am force-stop com.baidu.input_mi
%adb% shell pm clear com.baidu.input_mi
%adb% shell pm %PmAction% com.baidu.searchbox
%adb% shell am force-stop com.baidu.searchbox
%adb% shell pm clear com.baidu.searchbox
%adb% shell pm %PmAction% com.bsp.catchlog
%adb% shell am force-stop com.bsp.catchlog
%adb% shell pm clear com.bsp.catchlog
%adb% shell pm %PmAction% com.duokan.phone.remotecontroller
%adb% shell am force-stop com.duokan.phone.remotecontroller
%adb% shell pm clear com.duokan.phone.remotecontroller
%adb% shell pm %PmAction% com.duokan.phone.remotecontroller.peel.plugin
%adb% shell am force-stop com.duokan.phone.remotecontroller.peel.plugin
%adb% shell pm clear com.duokan.phone.remotecontroller.peel.plugin
%adb% shell pm %PmAction% com.facemoji.lite.xiaomi.gp
%adb% shell am force-stop com.facemoji.lite.xiaomi.gp
%adb% shell pm clear com.facemoji.lite.xiaomi.gp
%adb% shell pm %PmAction% com.factory.mmigroup
%adb% shell am force-stop com.factory.mmigroup
%adb% shell pm clear com.factory.mmigroup
%adb% shell pm %PmAction% com.fingerprints.sensortesttool
%adb% shell am force-stop com.fingerprints.sensortesttool
%adb% shell pm clear com.fingerprints.sensortesttool
%adb% shell pm %PmAction% com.huaqin.diaglogger
%adb% shell am force-stop com.huaqin.diaglogger
%adb% shell pm clear com.huaqin.diaglogger
%adb% shell pm %PmAction% com.huaqin.factory
%adb% shell am force-stop com.huaqin.factory
%adb% shell pm clear com.huaqin.factory
%adb% shell pm %PmAction% com.huaqin.sar
%adb% shell am force-stop com.huaqin.sar
%adb% shell pm clear com.huaqin.sar
%adb% shell pm %PmAction% com.milink.service
%adb% shell am force-stop com.milink.service
%adb% shell pm clear com.milink.service
%adb% shell pm %PmAction% com.mipay.wallet
%adb% shell am force-stop com.mipay.wallet
%adb% shell pm clear com.mipay.wallet
%adb% shell pm %PmAction% com.mipay.wallet.id
%adb% shell am force-stop com.mipay.wallet.id
%adb% shell pm clear com.mipay.wallet.id
%adb% shell pm %PmAction% com.mipay.wallet.in
%adb% shell am force-stop com.mipay.wallet.in
%adb% shell pm clear com.mipay.wallet.in
%adb% shell pm %PmAction% com.miui.accessibility
%adb% shell am force-stop com.miui.accessibility
%adb% shell pm clear com.miui.accessibility
%adb% shell pm %PmAction% com.miui.audioeffect
%adb% shell am force-stop com.miui.audioeffect
%adb% shell pm clear com.miui.audioeffect
%adb% shell pm %PmAction% com.miui.cit
%adb% shell am force-stop com.miui.cit
%adb% shell pm clear com.miui.cit
%adb% shell pm %PmAction% com.miui.cloudservice
%adb% shell am force-stop com.miui.cloudservice
%adb% shell pm clear com.miui.cloudservice
%adb% shell pm %PmAction% com.miui.huanji
%adb% shell am force-stop com.miui.huanji
%adb% shell pm clear com.miui.huanji
%adb% shell pm %PmAction% com.miui.enbbs
%adb% shell am force-stop com.miui.enbbs
%adb% shell pm clear com.miui.enbbs
%adb% shell pm %PmAction% com.miui.greenguard
%adb% shell am force-stop com.miui.greenguard
%adb% shell pm clear com.miui.greenguard
%adb% shell pm %PmAction% com.miui.hybrid
%adb% shell am force-stop com.miui.hybrid
%adb% shell pm clear com.miui.hybrid
%adb% shell pm %PmAction% com.miui.hybrid.accessory
%adb% shell am force-stop com.miui.hybrid.accessory
%adb% shell pm clear com.miui.hybrid.accessory
%adb% shell pm %PmAction% com.miui.micloudsync
%adb% shell am force-stop com.miui.micloudsync
%adb% shell pm clear com.miui.micloudsync
%adb% shell pm %PmAction% com.miui.miwallpaper
%adb% shell am force-stop com.miui.miwallpaper
%adb% shell pm clear com.miui.miwallpaper
%adb% shell pm %PmAction% com.miui.nextpay
%adb% shell am force-stop com.miui.nextpay
%adb% shell pm clear com.miui.nextpay
%adb% shell pm %PmAction% com.miui.qr
%adb% shell am force-stop com.miui.qr
%adb% shell pm clear com.miui.qr
%adb% shell pm %PmAction% com.miui.smsextra
%adb% shell am force-stop com.miui.smsextra
%adb% shell pm clear com.miui.smsextra
%adb% shell pm %PmAction% com.miui.touchassistant
%adb% shell am force-stop com.miui.touchassistant
%adb% shell pm clear com.miui.touchassistant
%adb% shell pm %PmAction% com.miui.translation.xmcloud
%adb% shell am force-stop com.miui.translation.xmcloud
%adb% shell pm clear com.miui.translation.xmcloud
%adb% shell pm %PmAction% com.miui.translationservice
%adb% shell am force-stop com.miui.translationservice
%adb% shell pm clear com.miui.translationservice
%adb% shell pm %PmAction% com.miui.userguide
%adb% shell am force-stop com.miui.userguide
%adb% shell pm clear com.miui.userguide
%adb% shell pm %PmAction% com.miui.analytics
%adb% shell am force-stop com.miui.analytics
%adb% shell pm clear com.miui.analytics
%adb% shell pm %PmAction% com.miui.android.fashiongallery
%adb% shell am force-stop com.miui.android.fashiongallery
%adb% shell pm clear com.miui.android.fashiongallery
%adb% shell pm %PmAction% com.miui.antispam
%adb% shell am force-stop com.miui.antispam
%adb% shell pm clear com.miui.antispam
%adb% shell pm %PmAction% com.miui.bugreport
%adb% shell am force-stop com.miui.bugreport
%adb% shell pm clear com.miui.bugreport
%adb% shell pm %PmAction% com.miui.cleanmaster
%adb% shell am force-stop com.miui.cleanmaster
%adb% shell pm clear com.miui.cleanmaster
%adb% shell pm %PmAction% com.miui.cloudbackup
%adb% shell am force-stop com.miui.cloudbackup
%adb% shell pm clear com.miui.cloudbackup
%adb% shell pm %PmAction% com.miui.cloudservice
%adb% shell am force-stop com.miui.cloudservice
%adb% shell pm clear com.miui.cloudservice
%adb% shell pm %PmAction% com.miui.cloudservice.sysbase
%adb% shell am force-stop com.miui.cloudservice.sysbase
%adb% shell pm clear com.miui.cloudservice.sysbase
%adb% shell pm %PmAction% com.miui.compass
%adb% shell am force-stop com.miui.compass
%adb% shell pm clear com.miui.compass
%adb% shell pm %PmAction% com.miui.contentcatcher
%adb% shell am force-stop com.miui.contentcatcher
%adb% shell pm clear com.miui.contentcatcher
%adb% shell pm %PmAction% com.miui.daemon
%adb% shell am force-stop com.miui.daemon
%adb% shell pm clear com.miui.daemon
%adb% shell pm %PmAction% com.miui.fm
%adb% shell am force-stop com.miui.fm
%adb% shell pm clear com.miui.fm
%adb% shell pm %PmAction% com.miui.fmservice
%adb% shell am force-stop com.miui.fmservice
%adb% shell pm clear com.miui.fmservice
%adb% shell pm %PmAction% com.miui.gallery
%adb% shell am force-stop com.miui.gallery
%adb% shell pm clear com.miui.gallery
%adb% shell pm %PmAction% com.miui.klo.bugreport
%adb% shell am force-stop com.miui.klo.bugreport
%adb% shell pm clear com.miui.klo.bugreport
%adb% shell pm %PmAction% com.miui.miservice
%adb% shell am force-stop com.miui.miservice
%adb% shell pm clear com.miui.miservice
%adb% shell pm %PmAction% com.miui.msa.global
%adb% shell am force-stop com.miui.msa.global
%adb% shell pm clear com.miui.msa.global
%adb% shell pm %PmAction% com.miui.notes
%adb% shell am force-stop com.miui.notes
%adb% shell pm clear com.miui.notes
%adb% shell pm %PmAction% com.miui.personalassistant
%adb% shell am force-stop com.miui.personalassistant
%adb% shell pm clear com.miui.personalassistant
%adb% shell pm %PmAction% com.miui.phrase
%adb% shell am force-stop com.miui.phrase
%adb% shell pm clear com.miui.phrase
%adb% shell pm %PmAction% com.miui.player
%adb% shell am force-stop com.miui.player
%adb% shell pm clear com.miui.player
%adb% shell pm %PmAction% com.miui.providers.weather
%adb% shell am force-stop com.miui.providers.weather
%adb% shell pm clear com.miui.providers.weather
%adb% shell pm %PmAction% com.miui.screenrecorder
%adb% shell am force-stop com.miui.screenrecorder
%adb% shell pm clear com.miui.screenrecorder
%adb% shell pm %PmAction% com.miui.spock
%adb% shell am force-stop com.miui.spock
%adb% shell pm clear com.miui.spock
%adb% shell pm %PmAction% com.miui.systemAdSolution
%adb% shell am force-stop com.miui.systemAdSolution
%adb% shell pm clear com.miui.systemAdSolution
%adb% shell pm %PmAction% com.miui.sysopt
%adb% shell am force-stop com.miui.sysopt
%adb% shell pm clear com.miui.sysopt
%adb% shell pm %PmAction% com.miui.translation.kingsoft
%adb% shell am force-stop com.miui.translation.kingsoft
%adb% shell pm clear com.miui.translation.kingsoft
%adb% shell pm %PmAction% com.miui.translation.youdao
%adb% shell am force-stop com.miui.translation.youdao
%adb% shell pm clear com.miui.translation.youdao
%adb% shell pm %PmAction% com.miui.video
%adb% shell am force-stop com.miui.video
%adb% shell pm clear com.miui.video
%adb% shell pm %PmAction% com.miui.videoplayer
%adb% shell am force-stop com.miui.videoplayer
%adb% shell pm clear com.miui.videoplayer
%adb% shell pm %PmAction% com.miui.videoplayer.overlay
%adb% shell am force-stop com.miui.videoplayer.overlay
%adb% shell pm clear com.miui.videoplayer.overlay
%adb% shell pm %PmAction% com.miui.virtualsim
%adb% shell am force-stop com.miui.virtualsim
%adb% shell pm clear com.miui.virtualsim
%adb% shell pm %PmAction% com.miui.vsimcore
%adb% shell am force-stop com.miui.vsimcore
%adb% shell pm clear com.miui.vsimcore
%adb% shell pm %PmAction% com.miui.miwallpaper.earth
%adb% shell am force-stop com.miui.miwallpaper.earth
%adb% shell pm clear com.miui.miwallpaper.earth
%adb% shell pm %PmAction% com.miui.miwallpaper.mars
%adb% shell am force-stop com.miui.miwallpaper.mars
%adb% shell pm clear com.miui.miwallpaper.mars
%adb% shell pm %PmAction% com.miui.newmidrive
%adb% shell am force-stop com.miui.newmidrive
%adb% shell pm clear com.miui.newmidrive
%adb% shell pm %PmAction% com.wapi.wapicertmanager
%adb% shell am force-stop com.wapi.wapicertmanager
%adb% shell pm clear com.wapi.wapicertmanager
%adb% shell pm %PmAction% com.miui.weather2
%adb% shell am force-stop com.miui.weather2
%adb% shell pm clear com.miui.weather2
%adb% shell pm %PmAction% com.miui.yellowpage
%adb% shell am force-stop com.miui.yellowpage
%adb% shell pm clear com.miui.yellowpage
%adb% shell pm %PmAction% com.mfashiongallery.emag
%adb% shell am force-stop com.mfashiongallery.emag
%adb% shell pm clear com.mfashiongallery.emag
%adb% shell pm %PmAction% com.mi.android.globalpersonalassistant
%adb% shell am force-stop com.mi.android.globalpersonalassistant
%adb% shell pm clear com.mi.android.globalpersonalassistant
%adb% shell pm %PmAction% com.mi.android.globalminusscreen
%adb% shell am force-stop com.mi.android.globalminusscreen
%adb% shell pm clear com.mi.android.globalminusscreen
%adb% shell pm %PmAction% com.mi.AutoTest
%adb% shell am force-stop com.mi.AutoTest
%adb% shell pm clear com.mi.AutoTest
%adb% shell pm %PmAction% com.xiaomi.mi_connect_service
%adb% shell am force-stop com.xiaomi.mi_connect_service
%adb% shell pm clear com.xiaomi.mi_connect_service
%adb% shell pm %PmAction% com.mi.global.bbs
%adb% shell am force-stop com.mi.global.bbs
%adb% shell pm clear com.mi.global.bbs
%adb% shell pm %PmAction% com.mi.global.shop
%adb% shell am force-stop com.mi.global.shop
%adb% shell pm clear com.mi.global.shop
%adb% shell pm %PmAction% com.mi.globalTrendNews
%adb% shell am force-stop com.mi.globalTrendNews
%adb% shell pm clear com.mi.globalTrendNews
%adb% shell pm %PmAction% com.mi.health
%adb% shell am force-stop com.mi.health
%adb% shell pm clear com.mi.health
%adb% shell pm %PmAction% com.mi.liveassistant
%adb% shell am force-stop com.mi.liveassistant
%adb% shell pm clear com.mi.liveassistant
%adb% shell pm %PmAction% com.mi.setupwizardoverlay
%adb% shell am force-stop com.mi.setupwizardoverlay
%adb% shell pm clear com.mi.setupwizardoverlay
%adb% shell pm %PmAction% com.mi.webkit.core
%adb% shell am force-stop com.mi.webkit.core
%adb% shell pm clear com.mi.webkit.core
%adb% shell pm %PmAction% com.qiyi.video
%adb% shell am force-stop com.qiyi.video
%adb% shell pm clear com.qiyi.video
%adb% shell pm %PmAction% com.sohu.inputmethod.sogou.xiaomi
%adb% shell am force-stop com.sohu.inputmethod.sogou.xiaomi
%adb% shell pm clear com.sohu.inputmethod.sogou.xiaomi
%adb% shell pm %PmAction% com.wt.secret_code_manager
%adb% shell am force-stop com.wt.secret_code_manager
%adb% shell pm clear com.wt.secret_code_manager
%adb% shell pm %PmAction% com.xiaomi.ab
%adb% shell am force-stop com.xiaomi.ab
%adb% shell pm clear com.xiaomi.ab
%adb% shell pm %PmAction% com.xiaomi.account
%adb% shell am force-stop com.xiaomi.account
%adb% shell pm clear com.xiaomi.account
%adb% shell pm %PmAction% com.xiaomi.channel
%adb% shell am force-stop com.xiaomi.channel
%adb% shell pm clear com.xiaomi.channel
%adb% shell pm %PmAction% com.xiaomi.gamecenter.sdk.service
%adb% shell am force-stop com.xiaomi.gamecenter.sdk.service
%adb% shell pm clear com.xiaomi.gamecenter.sdk.service
%adb% shell pm %PmAction% com.xiaomi.joyose
%adb% shell am force-stop com.xiaomi.joyose
%adb% shell pm clear com.xiaomi.joyose
%adb% shell pm %PmAction% com.xiaomi.jr
%adb% shell am force-stop com.xiaomi.jr
%adb% shell pm clear com.xiaomi.jr
%adb% shell pm %PmAction% com.xiaomi.lens
%adb% shell am force-stop com.xiaomi.lens
%adb% shell pm clear com.xiaomi.lens
%adb% shell pm %PmAction% com.xiaomi.midrop
%adb% shell am force-stop com.xiaomi.midrop
%adb% shell pm clear com.xiaomi.midrop
%adb% shell pm %PmAction% com.xiaomi.midrop.overlay
%adb% shell am force-stop com.xiaomi.midrop.overlay
%adb% shell pm clear com.xiaomi.midrop.overlay
%adb% shell pm %PmAction% com.xiaomi.mipicks
%adb% shell am force-stop com.xiaomi.mipicks
%adb% shell pm clear com.xiaomi.mipicks
%adb% shell pm %PmAction% com.xiaomi.o2o
%adb% shell am force-stop com.xiaomi.o2o
%adb% shell pm clear com.xiaomi.o2o
%adb% shell pm %PmAction% com.xiaomi.pass
%adb% shell am force-stop com.xiaomi.pass
%adb% shell pm clear com.xiaomi.pass
%adb% shell pm %PmAction% com.xiaomi.payment
%adb% shell am force-stop com.xiaomi.payment
%adb% shell pm clear com.xiaomi.payment
%adb% shell pm %PmAction% com.xiaomi.scanner
%adb% shell am force-stop com.xiaomi.scanner
%adb% shell pm clear com.xiaomi.scanner
%adb% shell pm %PmAction% com.xiaomi.shop
%adb% shell am force-stop com.xiaomi.shop
%adb% shell pm clear com.xiaomi.shop
%adb% shell pm %PmAction% com.xiaomi.vipaccount
%adb% shell am force-stop com.xiaomi.vipaccount
%adb% shell pm clear com.xiaomi.vipaccount
%adb% shell pm %PmAction% com.xiaomi.glgm
%adb% shell am force-stop com.xiaomi.glgm
%adb% shell pm clear com.xiaomi.glgm
%adb% shell pm %PmAction% com.xiaomi.micloud.sdk
%adb% shell am force-stop com.xiaomi.micloud.sdk
%adb% shell pm clear com.xiaomi.micloud.sdk
%adb% shell pm %PmAction% com.xiaomi.mirecycle
%adb% shell am force-stop com.xiaomi.mirecycle
%adb% shell pm clear com.xiaomi.mirecycle
%adb% shell pm %PmAction% com.xiaomi.oversea.ecom
%adb% shell am force-stop com.xiaomi.oversea.ecom
%adb% shell pm clear com.xiaomi.oversea.ecom
%adb% shell pm %PmAction% com.xiaomi.providers.appindex
%adb% shell am force-stop com.xiaomi.providers.appindex
%adb% shell pm clear com.xiaomi.providers.appindex
%adb% shell pm %PmAction% com.xiaomi.upnp
%adb% shell am force-stop com.xiaomi.upnp
%adb% shell pm clear com.xiaomi.upnp
%adb% shell pm %PmAction% com.xiaomi.simactivate.service
%adb% shell am force-stop com.xiaomi.simactivate.service
%adb% shell pm clear com.xiaomi.simactivate.service
%adb% shell pm %PmAction% com.xiaomi.smarthome
%adb% shell am force-stop com.xiaomi.smarthome
%adb% shell pm clear com.xiaomi.smarthome
%adb% shell pm %PmAction% com.xiaomi.xmsfkeeper
%adb% shell am force-stop com.xiaomi.xmsfkeeper
%adb% shell pm clear com.xiaomi.xmsfkeeper
%adb% shell pm %PmAction% com.wingtech.standard
%adb% shell am force-stop com.wingtech.standard
%adb% shell pm clear com.wingtech.standard
rem ZTE
%adb% shell pm %PmAction% com.zte.assistant
%adb% shell am force-stop com.zte.assistant
%adb% shell pm clear com.zte.assistant
%adb% shell pm %PmAction% com.zte.weather
%adb% shell am force-stop com.zte.weather
%adb% shell pm clear com.zte.weather
if "!OpMode!"=="Android 4.3-" (
	%adb% kill-server
) else (
	echo Root (X)
)

echo.
echo ============================================================
echo.

if "!Language!"=="br" (
	echo CONCLUÍDO! Voltando para o menu anterior em 5 segundos.
) else if "!Language!"=="en" (
	echo FINISHED! Returning to the previous menu in 5 seconds.
)

timeout 5 > NUL
goto do-end

:do-google
cls
if "!OpMode!"=="Android 4.3-" (
	%adb% root
) else (
	echo Root (X)
)
%adb% shell pm %PmAction% com.android.hotwordenrollment.okgoogle
%adb% shell am force-stop com.android.hotwordenrollment.okgoogle
%adb% shell pm clear com.android.hotwordenrollment.okgoogle
%adb% shell pm %PmAction% com.android.hotwordenrollment.xgoogle
%adb% shell am force-stop com.android.hotwordenrollment.xgoogle
%adb% shell pm clear com.android.hotwordenrollment.xgoogle
%adb% shell pm %PmAction% com.android.partnerbrowsercustomizations.chromeHomepage
%adb% shell am force-stop com.android.partnerbrowsercustomizations.chromeHomepage
%adb% shell pm clear com.android.partnerbrowsercustomizations.chromeHomepage
%adb% shell pm %PmAction% com.android.chrome
%adb% shell am force-stop com.android.chrome
%adb% shell pm clear com.android.chrome
%adb% shell pm %PmAction% com.chrome.beta
%adb% shell am force-stop com.chrome.beta
%adb% shell pm clear com.chrome.beta
%adb% shell pm %PmAction% com.chrome.canary
%adb% shell am force-stop com.chrome.canary
%adb% shell pm clear com.chrome.canary
%adb% shell pm %PmAction% com.chrome.dev
%adb% shell am force-stop com.chrome.dev
%adb% shell pm clear com.chrome.dev
%adb% shell pm %PmAction% com.google.android.apps.access.wifi.consumer
%adb% shell am force-stop com.google.android.apps.access.wifi.consumer
%adb% shell pm clear com.google.android.apps.access.wifi.consumer
%adb% shell pm %PmAction% com.google.android.apps.adm
%adb% shell am force-stop com.google.android.apps.adm
%adb% shell pm clear com.google.android.apps.adm
%adb% shell pm %PmAction% com.google.android.apps.ads.publisher
%adb% shell am force-stop com.google.android.apps.ads.publisher
%adb% shell pm clear com.google.android.apps.ads.publisher
%adb% shell pm %PmAction% com.google.android.apps.adwords
%adb% shell am force-stop com.google.android.apps.adwords
%adb% shell pm clear com.google.android.apps.adwords
%adb% shell pm %PmAction% com.google.android.apps.authenticator2
%adb% shell am force-stop com.google.android.apps.authenticator2
%adb% shell pm clear com.google.android.apps.authenticator2
%adb% shell pm %PmAction% com.google.android.apps.blogger
%adb% shell am force-stop com.google.android.apps.blogger
%adb% shell pm clear com.google.android.apps.blogger
%adb% shell pm %PmAction% com.google.android.apps.books
%adb% shell am force-stop com.google.android.apps.books
%adb% shell pm clear com.google.android.apps.books
%adb% shell pm %PmAction% com.google.android.deskclock
%adb% shell am force-stop com.google.android.deskclock
%adb% shell pm clear com.google.android.deskclock
%adb% shell pm %PmAction% com.google.android.apps.chromecast.app
%adb% shell am force-stop com.google.android.apps.chromecast.app
%adb% shell pm clear com.google.android.apps.chromecast.app
%adb% shell pm %PmAction% com.google.android.apps.cloudprint
%adb% shell am force-stop com.google.android.apps.cloudprint
%adb% shell pm clear com.google.android.apps.cloudprint
%adb% shell pm %PmAction% com.google.android.apps.cultural
%adb% shell am force-stop com.google.android.apps.cultural
%adb% shell pm clear com.google.android.apps.cultural
%adb% shell pm %PmAction% com.google.android.apps.currents
%adb% shell am force-stop com.google.android.apps.currents
%adb% shell pm clear com.google.android.apps.currents
%adb% shell pm %PmAction% com.google.android.apps.docs
%adb% shell am force-stop com.google.android.apps.docs
%adb% shell pm clear com.google.android.apps.docs
%adb% shell pm %PmAction% com.google.android.apps.docs.editors.docs
%adb% shell am force-stop com.google.android.apps.docs.editors.docs
%adb% shell pm clear com.google.android.apps.docs.editors.docs
%adb% shell pm %PmAction% com.google.android.apps.docs.editors.sheets
%adb% shell am force-stop com.google.android.apps.docs.editors.sheets
%adb% shell pm clear com.google.android.apps.docs.editors.sheets
%adb% shell pm %PmAction% com.google.android.apps.docs.editors.slides
%adb% shell am force-stop com.google.android.apps.docs.editors.slides
%adb% shell pm clear com.google.android.apps.docs.editors.slides
%adb% shell pm %PmAction% com.google.android.apps.dynamite
%adb% shell am force-stop com.google.android.apps.dynamite
%adb% shell pm clear com.google.android.apps.dynamite
%adb% shell pm %PmAction% com.google.android.apps.enterprise.cpanel
%adb% shell am force-stop com.google.android.apps.enterprise.cpanel
%adb% shell pm clear com.google.android.apps.enterprise.cpanel
%adb% shell pm %PmAction% com.google.android.apps.enterprise.dmagent
%adb% shell am force-stop com.google.android.apps.enterprise.dmagent
%adb% shell pm clear com.google.android.apps.enterprise.dmagent
%adb% shell pm %PmAction% com.google.android.apps.fireball
%adb% shell am force-stop com.google.android.apps.fireball
%adb% shell pm clear com.google.android.apps.fireball
%adb% shell pm %PmAction% com.google.android.apps.fitness
%adb% shell am force-stop com.google.android.apps.fitness
%adb% shell pm clear com.google.android.apps.fitness
%adb% shell pm %PmAction% com.google.android.apps.freighter
%adb% shell am force-stop com.google.android.apps.freighter
%adb% shell pm clear com.google.android.apps.freighter
%adb% shell pm %PmAction% com.google.android.apps.giant
%adb% shell am force-stop com.google.android.apps.giant
%adb% shell pm clear com.google.android.apps.giant
%adb% shell pm %PmAction% com.google.android.apps.googleassistant
%adb% shell am force-stop com.google.android.apps.googleassistant
%adb% shell pm clear com.google.android.apps.googleassistant
%adb% shell pm %PmAction% com.google.android.apps.handwriting.ime
%adb% shell am force-stop com.google.android.apps.handwriting.ime
%adb% shell pm clear com.google.android.apps.handwriting.ime
%adb% shell pm %PmAction% com.google.android.apps.hangoutsdialer
%adb% shell am force-stop com.google.android.apps.hangoutsdialer
%adb% shell pm clear com.google.android.apps.hangoutsdialer
%adb% shell pm %PmAction% com.google.android.apps.inbox
%adb% shell am force-stop com.google.android.apps.inbox
%adb% shell pm clear com.google.android.apps.inbox
%adb% shell pm %PmAction% com.google.android.apps.kids.familylink
%adb% shell am force-stop com.google.android.apps.kids.familylink
%adb% shell pm clear com.google.android.apps.kids.familylink
%adb% shell pm %PmAction% com.google.android.apps.kids.familylinkhelper
%adb% shell am force-stop com.google.android.apps.kids.familylinkhelper
%adb% shell pm clear com.google.android.apps.kids.familylinkhelper
%adb% shell pm %PmAction% com.google.android.apps.m4b
%adb% shell am force-stop com.google.android.apps.m4b
%adb% shell pm clear com.google.android.apps.m4b
%adb% shell pm %PmAction% com.google.android.apps.magazines
%adb% shell am force-stop com.google.android.apps.magazines
%adb% shell pm clear com.google.android.apps.magazines
%adb% shell pm %PmAction% com.google.android.apps.maps
%adb% shell am force-stop com.google.android.apps.maps
%adb% shell pm clear com.google.android.apps.maps
%adb% shell pm %PmAction% com.google.android.apps.mapslite
%adb% shell am force-stop com.google.android.apps.mapslite
%adb% shell pm clear com.google.android.apps.mapslite
%adb% shell pm %PmAction% com.google.android.apps.meetings
%adb% shell am force-stop com.google.android.apps.meetings
%adb% shell pm clear com.google.android.apps.meetings
%adb% shell pm %PmAction% com.google.android.apps.messaging
%adb% shell am force-stop com.google.android.apps.messaging
%adb% shell pm clear com.google.android.apps.messaging
%adb% shell pm %PmAction% com.google.android.apps.navlite
%adb% shell am force-stop com.google.android.apps.navlite
%adb% shell pm clear com.google.android.apps.navlite
%adb% shell pm %PmAction% com.google.android.apps.nbu.files
%adb% shell am force-stop com.google.android.apps.nbu.files
%adb% shell pm clear com.google.android.apps.nbu.files
%adb% shell pm %PmAction% com.google.android.apps.orkut
%adb% shell am force-stop com.google.android.apps.orkut
%adb% shell pm clear com.google.android.apps.orkut
%adb% shell pm %PmAction% com.google.android.apps.paidtasks
%adb% shell am force-stop com.google.android.apps.paidtasks
%adb% shell pm clear com.google.android.apps.paidtasks
%adb% shell pm %PmAction% com.google.android.apps.pdfviewer
%adb% shell am force-stop com.google.android.apps.pdfviewer
%adb% shell pm clear com.google.android.apps.pdfviewer
%adb% shell pm %PmAction% com.google.android.apps.photos
%adb% shell am force-stop com.google.android.apps.photos
%adb% shell pm clear com.google.android.apps.photos
%adb% shell pm %PmAction% com.google.android.apps.photos.scanner
%adb% shell am force-stop com.google.android.apps.photos.scanner
%adb% shell pm clear com.google.android.apps.photos.scanner
%adb% shell pm %PmAction% com.google.android.apps.plus
%adb% shell am force-stop com.google.android.apps.plus
%adb% shell pm clear com.google.android.apps.plus
%adb% shell pm %PmAction% com.google.android.apps.podcasts
%adb% shell am force-stop com.google.android.apps.podcasts
%adb% shell pm clear com.google.android.apps.podcasts
%adb% shell pm %PmAction% com.google.android.apps.restore
%adb% shell am force-stop com.google.android.apps.restore
%adb% shell pm clear com.google.android.apps.restore
%adb% shell pm %PmAction% com.google.android.apps.recorder
%adb% shell am force-stop com.google.android.apps.recorder
%adb% shell pm clear com.google.android.apps.recorder
%adb% shell pm %PmAction% com.google.android.apps.setupwizard.searchselector
%adb% shell am force-stop com.google.android.apps.setupwizard.searchselector
%adb% shell pm clear com.google.android.apps.setupwizard.searchselector
%adb% shell pm %PmAction% com.google.android.apps.santatracker
%adb% shell am force-stop com.google.android.apps.santatracker
%adb% shell pm clear com.google.android.apps.santatracker
%adb% shell pm %PmAction% com.google.android.apps.subscriptions.red
%adb% shell am force-stop com.google.android.apps.subscriptions.red
%adb% shell pm clear com.google.android.apps.subscriptions.red
%adb% shell pm %PmAction% com.google.android.apps.tachyon
%adb% shell am force-stop com.google.android.apps.tachyon
%adb% shell pm clear com.google.android.apps.tachyon
%adb% shell pm %PmAction% com.google.android.apps.tasks
%adb% shell am force-stop com.google.android.apps.tasks
%adb% shell pm clear com.google.android.apps.tasks
%adb% shell pm %PmAction% com.google.android.apps.translate
%adb% shell am force-stop com.google.android.apps.translate
%adb% shell pm clear com.google.android.apps.translate
%adb% shell pm %PmAction% com.google.android.apps.travel.onthego
%adb% shell am force-stop com.google.android.apps.travel.onthego
%adb% shell pm clear com.google.android.apps.travel.onthego
%adb% shell pm %PmAction% com.google.android.apps.uploader
%adb% shell am force-stop com.google.android.apps.uploader
%adb% shell pm clear com.google.android.apps.uploader
%adb% shell pm %PmAction% com.google.android.apps.vega
%adb% shell am force-stop com.google.android.apps.vega
%adb% shell pm clear com.google.android.apps.vega
%adb% shell pm %PmAction% com.google.android.apps.walletnfcrel
%adb% shell am force-stop com.google.android.apps.walletnfcrel
%adb% shell pm clear com.google.android.apps.walletnfcrel
%adb% shell pm %PmAction% com.google.android.apps.wallpaper
%adb% shell am force-stop com.google.android.apps.wallpaper
%adb% shell pm clear com.google.android.apps.wallpaper
%adb% shell pm %PmAction% com.google.android.apps.wellbeing
%adb% shell am force-stop com.google.android.apps.wellbeing
%adb% shell pm clear com.google.android.apps.wellbeing
%adb% shell pm %PmAction% com.google.android.apps.youtube.creator
%adb% shell am force-stop com.google.android.apps.youtube.creator
%adb% shell pm clear com.google.android.apps.youtube.creator
%adb% shell pm %PmAction% com.google.android.apps.youtube.gaming
%adb% shell am force-stop com.google.android.apps.youtube.gaming
%adb% shell pm clear com.google.android.apps.youtube.gaming
%adb% shell pm %PmAction% com.google.android.apps.youtube.kids
%adb% shell am force-stop com.google.android.apps.youtube.kids
%adb% shell pm clear com.google.android.apps.youtube.kids
%adb% shell pm %PmAction% com.google.android.apps.youtube.music
%adb% shell am force-stop com.google.android.apps.youtube.music
%adb% shell pm clear com.google.android.apps.youtube.music
%adb% shell pm %PmAction% com.google.android.apps.youtube.vr
%adb% shell am force-stop com.google.android.apps.youtube.vr
%adb% shell pm clear com.google.android.apps.youtube.vr
%adb% shell pm %PmAction% com.google.android.apps.youtube.mango
%adb% shell am force-stop com.google.android.apps.youtube.mango
%adb% shell pm clear com.google.android.apps.youtube.mango
%adb% shell pm %PmAction% com.google.android.backup
%adb% shell am force-stop com.google.android.backup
%adb% shell pm clear com.google.android.backup
%adb% shell pm %PmAction% com.google.android.backuptransport
%adb% shell am force-stop com.google.android.backuptransport
%adb% shell pm clear com.google.android.backuptransport
%adb% shell pm %PmAction% com.google.android.calculator
%adb% shell am force-stop com.google.android.calculator
%adb% shell pm clear com.google.android.calculator
%adb% shell pm %PmAction% com.google.android.calendar
%adb% shell am force-stop com.google.android.calendar
%adb% shell pm clear com.google.android.calendar
%adb% shell pm %PmAction% com.google.android.configupdater
%adb% shell am force-stop com.google.android.configupdater
%adb% shell pm clear com.google.android.configupdater
%adb% shell pm %PmAction% com.google.android.feedback
%adb% shell am force-stop com.google.android.feedback
%adb% shell pm clear com.google.android.feedback
%adb% shell pm %PmAction% com.google.android.googlequicksearchbox
%adb% shell am force-stop com.google.android.googlequicksearchbox
%adb% shell pm clear com.google.android.googlequicksearchbox
%adb% shell pm %PmAction% com.google.android.instantapps.supervisor
%adb% shell am force-stop com.google.android.instantapps.supervisor
%adb% shell pm clear com.google.android.instantapps.supervisor
%adb% shell pm %PmAction% com.google.android.keep
%adb% shell am force-stop com.google.android.keep
%adb% shell pm clear com.google.android.keep
%adb% shell pm %PmAction% com.google.android.markup
%adb% shell am force-stop com.google.android.markup
%adb% shell pm clear com.google.android.markup
%adb% shell pm %PmAction% com.google.android.marvin.talkback
%adb% shell am force-stop com.google.android.marvin.talkback
%adb% shell pm clear com.google.android.marvin.talkback
%adb% shell pm %PmAction% com.google.android.music
%adb% shell am force-stop com.google.android.music
%adb% shell pm clear com.google.android.music
%adb% shell pm %PmAction% com.google.android.onetimeinitializer
%adb% shell am force-stop com.google.android.onetimeinitializer
%adb% shell pm clear com.google.android.onetimeinitializer
%adb% shell pm %PmAction% com.google.android.play.games
%adb% shell am force-stop com.google.android.play.games
%adb% shell pm clear com.google.android.play.games
%adb% shell pm %PmAction% com.google.android.printservice.recommendation
%adb% shell am force-stop com.google.android.printservice.recommendation
%adb% shell pm clear com.google.android.printservice.recommendation
%adb% shell pm %PmAction% com.google.android.projection.gearhead
%adb% shell am force-stop com.google.android.projection.gearhead
%adb% shell pm clear com.google.android.projection.gearhead
%adb% shell pm %PmAction% com.google.android.setupwizard
%adb% shell am force-stop com.google.android.setupwizard
%adb% shell pm clear com.google.android.setupwizard
%adb% shell pm %PmAction% com.google.android.setupwizard.a_overlay
%adb% shell am force-stop com.google.android.setupwizard.a_overlay
%adb% shell pm clear com.google.android.setupwizard.a_overlay
%adb% shell pm %PmAction% com.google.android.pixel.setupwizard
%adb% shell am force-stop com.google.android.pixel.setupwizard
%adb% shell pm clear com.google.android.pixel.setupwizard
%adb% shell pm %PmAction% com.google.android.soundpicker
%adb% shell am force-stop com.google.android.soundpicker
%adb% shell pm clear com.google.android.soundpicker
%adb% shell pm %PmAction% com.google.android.street
%adb% shell am force-stop com.google.android.street
%adb% shell pm clear com.google.android.street
%adb% shell pm %PmAction% com.google.android.syncadapters.bookmarks
%adb% shell am force-stop com.google.android.syncadapters.bookmarks
%adb% shell pm clear com.google.android.syncadapters.bookmarks
%adb% shell pm %PmAction% com.google.android.syncadapters.calendar
%adb% shell am force-stop com.google.android.syncadapters.calendar
%adb% shell pm clear com.google.android.syncadapters.calendar
%adb% shell pm %PmAction% com.google.android.syncadapters.contacts
%adb% shell am force-stop com.google.android.syncadapters.contacts
%adb% shell pm clear com.google.android.syncadapters.contacts
%adb% shell pm %PmAction% com.google.android.talk
%adb% shell am force-stop com.google.android.talk
%adb% shell pm clear com.google.android.talk
%adb% shell pm %PmAction% com.google.android.tts
%adb% shell am force-stop com.google.android.tts
%adb% shell pm clear com.google.android.tts
%adb% shell pm %PmAction% com.google.android.tv.remote
%adb% shell am force-stop com.google.android.tv.remote
%adb% shell pm clear com.google.android.tv.remote
%adb% shell pm %PmAction% com.google.android.videoeditor
%adb% shell am force-stop com.google.android.videoeditor
%adb% shell pm clear com.google.android.videoeditor
%adb% shell pm %PmAction% com.google.android.videos
%adb% shell am force-stop com.google.android.videos
%adb% shell pm clear com.google.android.videos
%adb% shell pm %PmAction% com.google.android.voicesearch
%adb% shell am force-stop com.google.android.voicesearch
%adb% shell pm clear com.google.android.voicesearch
%adb% shell pm %PmAction% com.google.android.vr.home
%adb% shell am force-stop com.google.android.vr.home
%adb% shell pm clear com.google.android.vr.home
%adb% shell pm %PmAction% com.google.android.vr.inputmethod
%adb% shell am force-stop com.google.android.vr.inputmethod
%adb% shell pm clear com.google.android.vr.inputmethod
%adb% shell pm %PmAction% com.google.android.wearable.app
%adb% shell am force-stop com.google.android.wearable.app
%adb% shell pm clear com.google.android.wearable.app
%adb% shell pm %PmAction% com.google.android.youtube
%adb% shell am force-stop com.google.android.youtube
%adb% shell pm clear com.google.android.youtube
%adb% shell pm %PmAction% com.google.ar.core
%adb% shell am force-stop com.google.ar.core
%adb% shell pm clear com.google.ar.core
%adb% shell pm %PmAction% com.google.ar.lens
%adb% shell am force-stop com.google.ar.lens
%adb% shell pm clear com.google.ar.lens
%adb% shell pm %PmAction% com.google.chromeremotedesktop
%adb% shell am force-stop com.google.chromeremotedesktop
%adb% shell pm clear com.google.chromeremotedesktop
%adb% shell pm %PmAction% com.google.earth
%adb% shell am force-stop com.google.earth
%adb% shell pm clear com.google.earth
%adb% shell pm %PmAction% com.google.marvin.talkback
%adb% shell am force-stop com.google.marvin.talkback
%adb% shell pm clear com.google.marvin.talkback
%adb% shell pm %PmAction% com.google.samples.apps.cardboarddemo
%adb% shell am force-stop com.google.samples.apps.cardboarddemo
%adb% shell pm clear com.google.samples.apps.cardboarddemo
%adb% shell pm %PmAction% com.google.tango.measure
%adb% shell am force-stop com.google.tango.measure
%adb% shell pm clear com.google.tango.measure
%adb% shell pm %PmAction% com.google.vr.cyclops
%adb% shell am force-stop com.google.vr.cyclops
%adb% shell pm clear com.google.vr.cyclops
%adb% shell pm %PmAction% com.google.vr.expeditions
%adb% shell am force-stop com.google.vr.expeditions
%adb% shell pm clear com.google.vr.expeditions
%adb% shell pm %PmAction% com.google.vr.vrcore
%adb% shell am force-stop com.google.vr.vrcore
%adb% shell pm clear com.google.vr.vrcore
%adb% shell pm %PmAction% com.google.zxing.client.android
%adb% shell am force-stop com.google.zxing.client.android
%adb% shell pm clear com.google.zxing.client.android
%adb% shell pm %PmAction% com.google.android.apps.work.oobconfig
%adb% shell am force-stop com.google.android.apps.work.oobconfig
%adb% shell pm clear com.google.android.apps.work.oobconfig
%adb% shell pm %PmAction% com.google.android.email
%adb% shell am force-stop com.google.android.email
%adb% shell pm clear com.google.android.email
%adb% shell pm %PmAction% com.google.android.tag
%adb% shell am force-stop com.google.android.tag
%adb% shell pm clear com.google.android.tag
%adb% shell pm %PmAction% com.google.android.gms.location.history
%adb% shell am force-stop com.google.android.gms.location.history
%adb% shell pm clear com.google.android.gms.location.history
%adb% shell pm %PmAction% com.google.android.gms.policy_sidecar_aps
%adb% shell am force-stop com.google.android.gms.policy_sidecar_aps
%adb% shell pm clear com.google.android.gms.policy_sidecar_aps
%adb% shell pm %PmAction% com.google.android.partnersetup
%adb% shell am force-stop com.google.android.partnersetup
%adb% shell pm clear com.google.android.partnersetup
%adb% shell pm %PmAction% com.google.audio.hearing.visualization.accessibility.scribe
%adb% shell am force-stop com.google.audio.hearing.visualization.accessibility.scribe
%adb% shell pm clear com.google.audio.hearing.visualization.accessibility.scribe
%adb% shell pm %PmAction% com.google.android.gm
%adb% shell am force-stop com.google.android.gm
%adb% shell pm clear com.google.android.gm
if "!OpMode!"=="Android 4.3-" (
	%adb% kill-server
) else (
	echo Root (X)
)

echo.
echo ============================================================
echo.

if "!Language!"=="br" (
	echo CONCLUÍDO! Voltando para o menu anterior em 5 segundos.
) else if "!Language!"=="en" (
	echo FINISHED! Returning to the previous menu in 5 seconds.
)

timeout 5 > NUL
goto do-end

:do-carriers
cls
if "!OpMode!"=="Android 4.3-" (
	%adb% root
) else (
	echo Root (X)
)
rem American carriers
%adb% shell pm %PmAction% com.mobitv.client.tmobiletvhd
%adb% shell am force-stop com.mobitv.client.tmobiletvhd
%adb% shell pm clear com.mobitv.client.tmobiletvhd
%adb% shell pm %PmAction% com.tmobile.pr.adapt
%adb% shell am force-stop com.tmobile.pr.adapt
%adb% shell pm clear com.tmobile.pr.adapt
%adb% shell pm %PmAction% com.tmobile.pr.mytmobile
%adb% shell am force-stop com.tmobile.pr.mytmobile
%adb% shell pm clear com.tmobile.pr.mytmobile
%adb% shell pm %PmAction% com.tmobile.services.nameid
%adb% shell am force-stop com.tmobile.services.nameid
%adb% shell pm clear com.tmobile.services.nameid
%adb% shell pm %PmAction% com.tmobile.simlock
%adb% shell am force-stop com.tmobile.simlock
%adb% shell pm clear com.tmobile.simlock
%adb% shell pm %PmAction% com.tmobile.vvm.application
%adb% shell am force-stop com.tmobile.vvm.application
%adb% shell pm clear com.tmobile.vvm.application
%adb% shell pm %PmAction% com.whitepages.nameid.tmobile
%adb% shell am force-stop com.whitepages.nameid.tmobile
%adb% shell pm clear com.whitepages.nameid.tmobile
%adb% shell pm %PmAction% us.com.dt.iq.appsource.tmobile
%adb% shell am force-stop us.com.dt.iq.appsource.tmobile
%adb% shell pm clear us.com.dt.iq.appsource.tmobile
%adb% shell pm %PmAction% com.asurion.android.verizon.vms
%adb% shell am force-stop com.asurion.android.verizon.vms
%adb% shell pm clear com.asurion.android.verizon.vms
%adb% shell pm %PmAction% com.customermobile.preload.vzw
%adb% shell am force-stop com.customermobile.preload.vzw
%adb% shell pm clear com.customermobile.preload.vzw
%adb% shell pm %PmAction% com.LogiaGroup.LogiaDeck
%adb% shell am force-stop com.LogiaGroup.LogiaDeck
%adb% shell pm clear com.LogiaGroup.LogiaDeck
%adb% shell pm %PmAction% com.motricity.verizon.ssodownloadable
%adb% shell am force-stop com.motricity.verizon.ssodownloadable
%adb% shell pm clear com.motricity.verizon.ssodownloadable
%adb% shell pm %PmAction% com.securityandprivacy.android.verizon.vms
%adb% shell am force-stop com.securityandprivacy.android.verizon.vms
%adb% shell pm clear com.securityandprivacy.android.verizon.vms
%adb% shell pm %PmAction% com.telecomsys.directedsms.android.SCG
%adb% shell am force-stop com.telecomsys.directedsms.android.SCG
%adb% shell pm clear com.telecomsys.directedsms.android.SCG
%adb% shell pm %PmAction% com.vcast.mediamanager
%adb% shell am force-stop com.vcast.mediamanager
%adb% shell pm clear com.vcast.mediamanager
%adb% shell pm %PmAction% com.verizon.llkagent
%adb% shell am force-stop com.verizon.llkagent
%adb% shell pm clear com.verizon.llkagent
%adb% shell pm %PmAction% com.verizon.loginengine.unbranded
%adb% shell am force-stop com.verizon.loginengine.unbranded
%adb% shell pm clear com.verizon.loginengine.unbranded
%adb% shell pm %PmAction% com.verizon.messaging.vzmsgs
%adb% shell am force-stop com.verizon.messaging.vzmsgs
%adb% shell pm clear com.verizon.messaging.vzmsgs
%adb% shell pm %PmAction% com.verizon.mips.services
%adb% shell am force-stop com.verizon.mips.services
%adb% shell pm clear com.verizon.mips.services
%adb% shell pm %PmAction% com.verizon.obdm
%adb% shell am force-stop com.verizon.obdm
%adb% shell pm clear com.verizon.obdm
%adb% shell pm %PmAction% com.verizon.obdm_permissions
%adb% shell am force-stop com.verizon.obdm_permissions
%adb% shell pm clear com.verizon.obdm_permissions
%adb% shell pm %PmAction% com.verizon.permissions.appdirectedsms
%adb% shell am force-stop com.verizon.permissions.appdirectedsms
%adb% shell pm clear com.verizon.permissions.appdirectedsms
%adb% shell pm %PmAction% com.verizon.permissions.vzwappapn
%adb% shell am force-stop com.verizon.permissions.vzwappapn
%adb% shell pm clear com.verizon.permissions.vzwappapn
%adb% shell pm %PmAction% com.verizon.vzwavs
%adb% shell am force-stop com.verizon.vzwavs
%adb% shell pm clear com.verizon.vzwavs
%adb% shell pm %PmAction% com.verizontelematics.verizonhum
%adb% shell am force-stop com.verizontelematics.verizonhum
%adb% shell pm clear com.verizontelematics.verizonhum
%adb% shell pm %PmAction% com.vznavigator.Generic
%adb% shell am force-stop com.vznavigator.Generic
%adb% shell pm clear com.vznavigator.Generic
%adb% shell pm %PmAction% com.vzw.apnlib
%adb% shell am force-stop com.vzw.apnlib
%adb% shell pm clear com.vzw.apnlib
%adb% shell pm %PmAction% com.vzw.apnservice
%adb% shell am force-stop com.vzw.apnservice
%adb% shell pm clear com.vzw.apnservice
%adb% shell pm %PmAction% com.vzw.ecid
%adb% shell am force-stop com.vzw.ecid
%adb% shell pm clear com.vzw.ecid
%adb% shell pm %PmAction% com.vzw.hss.myverizon
%adb% shell am force-stop com.vzw.hss.myverizon
%adb% shell pm clear com.vzw.hss.myverizon
%adb% shell pm %PmAction% com.vzw.hss.widgets.infozone.large
%adb% shell am force-stop com.vzw.hss.widgets.infozone.large
%adb% shell pm clear com.vzw.hss.widgets.infozone.large
%adb% shell pm %PmAction% com.vzw.qualitydatalog
%adb% shell am force-stop com.vzw.qualitydatalog
%adb% shell pm clear com.vzw.qualitydatalog
%adb% shell pm %PmAction% com.motorola.mot5gmod
%adb% shell am force-stop com.motorola.mot5gmod
%adb% shell pm clear com.motorola.mot5gmod
%adb% shell pm %PmAction% com.motorola.vzw.mot5gmod
%adb% shell am force-stop com.motorola.vzw.mot5gmod
%adb% shell pm clear com.motorola.vzw.mot5gmod
%adb% shell pm %PmAction% com.motorola.vzw.pco.extensions.pcoreceiver
%adb% shell am force-stop com.motorola.vzw.pco.extensions.pcoreceiver
%adb% shell pm clear com.motorola.vzw.pco.extensions.pcoreceiver
%adb% shell pm %PmAction% com.motorola.vzw.phone.extensions
%adb% shell am force-stop com.motorola.vzw.phone.extensions
%adb% shell pm clear com.motorola.vzw.phone.extensions
%adb% shell pm %PmAction% com.motorola.vzw.cloudsetup
%adb% shell am force-stop com.motorola.vzw.cloudsetup
%adb% shell pm clear com.motorola.vzw.cloudsetup
%adb% shell pm %PmAction% com.motorola.ltebroadcastservices_vzw
%adb% shell am force-stop com.motorola.ltebroadcastservices_vzw
%adb% shell pm clear com.motorola.ltebroadcastservices_vzw
%adb% shell pm %PmAction% com.motorola.vzw.loader
%adb% shell am force-stop com.motorola.vzw.loader
%adb% shell pm clear com.motorola.vzw.loader
%adb% shell pm %PmAction% com.motorola.omadm.vzw
%adb% shell am force-stop com.motorola.omadm.vzw
%adb% shell pm clear com.motorola.omadm.vzw
%adb% shell pm %PmAction% com.motorola.vzw.provider
%adb% shell am force-stop com.motorola.vzw.provider
%adb% shell pm clear com.motorola.vzw.provider
%adb% shell pm %PmAction% com.motorola.visualvoicemail
%adb% shell am force-stop com.motorola.visualvoicemail
%adb% shell pm clear com.motorola.visualvoicemail
%adb% shell pm %PmAction% com.android.sprint.hiddenmenuapp
%adb% shell am force-stop com.android.sprint.hiddenmenuapp
%adb% shell pm clear com.android.sprint.hiddenmenuapp
%adb% shell pm %PmAction% com.asurion.home.sprint.vpl
%adb% shell am force-stop com.asurion.home.sprint.vpl
%adb% shell pm clear com.asurion.home.sprint.vpl
%adb% shell pm %PmAction% com.asurion.android.mobilerecovery.sprint.vpl
%adb% shell am force-stop com.asurion.android.mobilerecovery.sprint.vpl
%adb% shell pm clear com.asurion.android.mobilerecovery.sprint.vpl
%adb% shell pm %PmAction% com.asurion.android.mobilerecovery.sprint
%adb% shell am force-stop com.asurion.android.mobilerecovery.sprint
%adb% shell pm clear com.asurion.android.mobilerecovery.sprint
%adb% shell pm %PmAction% com.asurion.home.sprint
%adb% shell am force-stop com.asurion.home.sprint
%adb% shell pm clear com.asurion.home.sprint
%adb% shell pm %PmAction% com.hyperlync.Sprint.Backup
%adb% shell am force-stop com.hyperlync.Sprint.Backup
%adb% shell pm clear com.hyperlync.Sprint.Backup
%adb% shell pm %PmAction% com.hyperlync.Sprint.CloudBinder
%adb% shell am force-stop com.hyperlync.Sprint.CloudBinder
%adb% shell pm clear com.hyperlync.Sprint.CloudBinder
%adb% shell pm %PmAction% com.locationlabs.finder.sprint.vpl
%adb% shell am force-stop com.locationlabs.finder.sprint.vpl
%adb% shell pm clear com.locationlabs.finder.sprint.vpl
%adb% shell pm %PmAction% com.locationlabs.finder.sprint
%adb% shell am force-stop com.locationlabs.finder.sprint
%adb% shell pm clear com.locationlabs.finder.sprint
%adb% shell pm %PmAction% com.mobitv.client.sprinttvng
%adb% shell am force-stop com.mobitv.client.sprinttvng
%adb% shell pm clear com.mobitv.client.sprinttvng
%adb% shell pm %PmAction% com.mobolize.sprint.securewifi
%adb% shell am force-stop com.mobolize.sprint.securewifi
%adb% shell pm clear com.mobolize.sprint.securewifi
%adb% shell pm %PmAction% com.motorola.omadm.sprint
%adb% shell am force-stop com.motorola.omadm.sprint
%adb% shell pm clear com.motorola.omadm.sprint
%adb% shell pm %PmAction% com.sprint.android.musicplus2033
%adb% shell am force-stop com.sprint.android.musicplus2033
%adb% shell pm clear com.sprint.android.musicplus2033
%adb% shell pm %PmAction% com.sprint.android.musicplus2033.vpl
%adb% shell am force-stop com.sprint.android.musicplus2033.vpl
%adb% shell pm clear com.sprint.android.musicplus2033.vpl
%adb% shell pm %PmAction% com.sprint.ecid
%adb% shell am force-stop com.sprint.ecid
%adb% shell pm clear com.sprint.ecid
%adb% shell pm %PmAction% com.sprint.care
%adb% shell am force-stop com.sprint.care
%adb% shell pm clear com.sprint.care
%adb% shell pm %PmAction% com.sprint.ce.updater
%adb% shell am force-stop com.sprint.ce.updater
%adb% shell pm clear com.sprint.ce.updater
%adb% shell pm %PmAction% com.sprint.fng
%adb% shell am force-stop com.sprint.fng
%adb% shell pm clear com.sprint.fng
%adb% shell pm %PmAction% com.sprint.international.message
%adb% shell am force-stop com.sprint.international.message
%adb% shell pm clear com.sprint.international.message
%adb% shell pm %PmAction% com.sprint.psdg.sw
%adb% shell am force-stop com.sprint.psdg.sw
%adb% shell pm clear com.sprint.psdg.sw
%adb% shell pm %PmAction% com.sprint.ms.cdm
%adb% shell am force-stop com.sprint.ms.cdm
%adb% shell pm clear com.sprint.ms.cdm
%adb% shell pm %PmAction% com.sprint.ms.cnap
%adb% shell am force-stop com.sprint.ms.cnap
%adb% shell pm clear com.sprint.ms.cnap
%adb% shell pm %PmAction% com.sprint.safefound
%adb% shell am force-stop com.sprint.safefound
%adb% shell pm clear com.sprint.safefound
%adb% shell pm %PmAction% com.sprint.safefound.vpl
%adb% shell am force-stop com.sprint.safefound.vpl
%adb% shell pm clear com.sprint.safefound.vpl
%adb% shell pm %PmAction% com.sprint.topup
%adb% shell am force-stop com.sprint.topup
%adb% shell pm clear com.sprint.topup
%adb% shell pm %PmAction% com.sprint.w.installer
%adb% shell am force-stop com.sprint.w.installer
%adb% shell pm clear com.sprint.w.installer
%adb% shell pm %PmAction% com.sprint.w.v8
%adb% shell am force-stop com.sprint.w.v8
%adb% shell pm clear com.sprint.w.v8
%adb% shell pm %PmAction% com.aetherpal.attdh.se
%adb% shell am force-stop com.aetherpal.attdh.se
%adb% shell pm clear com.aetherpal.attdh.se
%adb% shell pm %PmAction% com.aetherpal.attdh.zte
%adb% shell am force-stop com.aetherpal.attdh.zte
%adb% shell pm clear com.aetherpal.attdh.zte
%adb% shell pm %PmAction% net.aetherpal.device
%adb% shell am force-stop net.aetherpal.device
%adb% shell pm clear net.aetherpal.device
%adb% shell pm %PmAction% com.asurion.android.mobilerecovery.att
%adb% shell am force-stop com.asurion.android.mobilerecovery.att
%adb% shell pm clear com.asurion.android.mobilerecovery.att
%adb% shell pm %PmAction% com.asurion.android.protech.att
%adb% shell am force-stop com.asurion.android.protech.att
%adb% shell pm clear com.asurion.android.protech.att
%adb% shell pm %PmAction% com.att.android.attsmartwifi
%adb% shell am force-stop com.att.android.attsmartwifi
%adb% shell pm clear com.att.android.attsmartwifi
%adb% shell pm %PmAction% com.att.callprotect
%adb% shell am force-stop com.att.callprotect
%adb% shell pm clear com.att.callprotect
%adb% shell pm %PmAction% com.att.csoiam.mobilekey
%adb% shell am force-stop com.att.csoiam.mobilekey
%adb% shell pm clear com.att.csoiam.mobilekey
%adb% shell pm %PmAction% com.att.dh
%adb% shell am force-stop com.att.dh
%adb% shell pm clear com.att.dh
%adb% shell pm %PmAction% com.att.dtv.shaderemote
%adb% shell am force-stop com.att.dtv.shaderemote
%adb% shell pm clear com.att.dtv.shaderemote
%adb% shell pm %PmAction% com.att.iqi
%adb% shell am force-stop com.att.iqi
%adb% shell pm clear com.att.iqi
%adb% shell pm %PmAction% com.att.mobiletransfer
%adb% shell am force-stop com.att.mobiletransfer
%adb% shell pm clear com.att.mobiletransfer
%adb% shell pm %PmAction% com.att.myWireless
%adb% shell am force-stop com.att.myWireless
%adb% shell pm clear com.att.myWireless
%adb% shell pm %PmAction% com.att.mobilesecurity
%adb% shell am force-stop com.att.mobilesecurity
%adb% shell pm clear com.att.mobilesecurity
%adb% shell pm %PmAction% com.att.mobile.android.vvm
%adb% shell am force-stop com.att.mobile.android.vvm
%adb% shell pm clear com.att.mobile.android.vvm
%adb% shell pm %PmAction% com.att.personalcloud
%adb% shell am force-stop com.att.personalcloud
%adb% shell pm clear com.att.personalcloud
%adb% shell pm %PmAction% com.att.tv
%adb% shell am force-stop com.att.tv
%adb% shell pm clear com.att.tv
%adb% shell pm %PmAction% com.att.tv.watchtv
%adb% shell am force-stop com.att.tv.watchtv
%adb% shell pm clear com.att.tv.watchtv
%adb% shell pm %PmAction% com.dti.att
%adb% shell am force-stop com.dti.att
%adb% shell pm clear com.dti.att
%adb% shell pm %PmAction% com.locationlabs.cni.att
%adb% shell am force-stop com.locationlabs.cni.att
%adb% shell pm clear com.locationlabs.cni.att
%adb% shell pm %PmAction% com.matchboxmobile.wisp
%adb% shell am force-stop com.matchboxmobile.wisp
%adb% shell pm clear com.matchboxmobile.wisp
%adb% shell pm %PmAction% com.motorola.att.phone.extensions
%adb% shell am force-stop com.motorola.att.phone.extensions
%adb% shell pm clear com.motorola.att.phone.extensions
%adb% shell pm %PmAction% com.motorola.attvowifi
%adb% shell am force-stop com.motorola.attvowifi
%adb% shell pm clear com.motorola.attvowifi
%adb% shell pm %PmAction% com.wavemarket.waplauncher
%adb% shell am force-stop com.wavemarket.waplauncher
%adb% shell pm clear com.wavemarket.waplauncher
%adb% shell pm %PmAction% com.samsung.attvvm
%adb% shell am force-stop com.samsung.attvvm
%adb% shell pm clear com.samsung.attvvm
%adb% shell pm %PmAction% com.sec.android.app.ewidgetatt
%adb% shell am force-stop com.sec.android.app.ewidgetatt
%adb% shell pm clear com.sec.android.app.ewidgetatt
%adb% shell pm %PmAction% com.synchronoss.dcs.att.r2g
%adb% shell am force-stop com.synchronoss.dcs.att.r2g
%adb% shell pm clear com.synchronoss.dcs.att.r2g
rem French carriers
%adb% shell pm %PmAction% fr.bouyguestelecom.ecm.android
%adb% shell am force-stop fr.bouyguestelecom.ecm.android
%adb% shell pm clear fr.bouyguestelecom.ecm.android
%adb% shell pm %PmAction% fr.bouyguestelecom.tv.android
%adb% shell am force-stop fr.bouyguestelecom.tv.android
%adb% shell pm clear fr.bouyguestelecom.tv.android
%adb% shell pm %PmAction% fr.bouyguestelecom.vvmandroid
%adb% shell am force-stop fr.bouyguestelecom.vvmandroid
%adb% shell pm clear fr.bouyguestelecom.vvmandroid
%adb% shell pm %PmAction% com.orange.aura.oobe
%adb% shell am force-stop com.orange.aura.oobe
%adb% shell pm clear com.orange.aura.oobe
%adb% shell pm %PmAction% com.orange.mail.fr
%adb% shell am force-stop com.orange.mail.fr
%adb% shell pm clear com.orange.mail.fr
%adb% shell pm %PmAction% com.orange.miorange
%adb% shell am force-stop com.orange.miorange
%adb% shell pm clear com.orange.miorange
%adb% shell pm %PmAction% com.orange.mylivebox.fr
%adb% shell am force-stop com.orange.mylivebox.fr
%adb% shell pm clear com.orange.mylivebox.fr
%adb% shell pm %PmAction% com.orange.mysosh
%adb% shell am force-stop com.orange.mysosh
%adb% shell pm clear com.orange.mysosh
%adb% shell pm %PmAction% com.orange.orangeetmoi
%adb% shell am force-stop com.orange.orangeetmoi
%adb% shell pm clear com.orange.orangeetmoi
%adb% shell pm %PmAction% com.orange.owtv
%adb% shell am force-stop com.orange.owtv
%adb% shell pm clear com.orange.owtv
%adb% shell pm %PmAction% com.orange.tdd
%adb% shell am force-stop com.orange.tdd
%adb% shell pm clear com.orange.tdd
%adb% shell pm %PmAction% com.orange.update
%adb% shell am force-stop com.orange.update
%adb% shell pm clear com.orange.update
%adb% shell pm %PmAction% com.orange.update.OrangeUpdateApplication
%adb% shell am force-stop com.orange.update.OrangeUpdateApplication
%adb% shell pm clear com.orange.update.OrangeUpdateApplication
%adb% shell pm %PmAction% com.orange.vvm
%adb% shell am force-stop com.orange.vvm
%adb% shell pm clear com.orange.vvm
%adb% shell pm %PmAction% com.orange.wifiorange
%adb% shell am force-stop com.orange.wifiorange
%adb% shell pm clear com.orange.wifiorange
%adb% shell pm %PmAction% fr.orange.cineday
%adb% shell am force-stop fr.orange.cineday
%adb% shell pm clear fr.orange.cineday
%adb% shell pm %PmAction% com.sfr.android.moncompte
%adb% shell am force-stop com.sfr.android.moncompte
%adb% shell pm clear com.sfr.android.moncompte
%adb% shell pm %PmAction% com.sfr.android.sfrcloud
%adb% shell am force-stop com.sfr.android.sfrcloud
%adb% shell pm clear com.sfr.android.sfrcloud
%adb% shell pm %PmAction% com.sfr.android.sfrmail
%adb% shell am force-stop com.sfr.android.sfrmail
%adb% shell pm clear com.sfr.android.sfrmail
%adb% shell pm %PmAction% com.sfr.android.sfrplay
%adb% shell am force-stop com.sfr.android.sfrplay
%adb% shell pm clear com.sfr.android.sfrplay
%adb% shell pm %PmAction% com.sfr.android.vvm
%adb% shell am force-stop com.sfr.android.vvm
%adb% shell pm clear com.sfr.android.vvm
rem German carriers
%adb% shell pm %PmAction% de.telekom.tsc
%adb% shell am force-stop de.telekom.tsc
%adb% shell pm clear de.telekom.tsc
rem Portuguese carriers
%adb% shell pm %PmAction% pt.vodafone.bilheteira
%adb% shell am force-stop pt.vodafone.bilheteira
%adb% shell pm clear pt.vodafone.bilheteira
%adb% shell pm %PmAction% com.vodafone.mCare
%adb% shell am force-stop com.vodafone.mCare
%adb% shell pm clear com.vodafone.mCare
%adb% shell pm %PmAction% wit.matm
%adb% shell am force-stop wit.matm
%adb% shell pm clear wit.matm
%adb% shell pm %PmAction% pt.vodafone.tvnetvoz
%adb% shell am force-stop pt.vodafone.tvnetvoz
%adb% shell pm clear pt.vodafone.tvnetvoz
%adb% shell pm %PmAction% com.innovagency.vodafonekiosk
%adb% shell am force-stop com.innovagency.vodafonekiosk
%adb% shell pm clear com.innovagency.vodafonekiosk
%adb% shell pm %PmAction% pt.vodafone.android.app.rbt
%adb% shell am force-stop pt.vodafone.android.app.rbt
%adb% shell pm clear pt.vodafone.android.app.rbt
%adb% shell pm %PmAction% pt.vodafone.liveontv
%adb% shell am force-stop pt.vodafone.liveontv
%adb% shell pm clear pt.vodafone.liveontv
%adb% shell pm %PmAction% com.vodafone.AT
%adb% shell am force-stop com.vodafone.AT
%adb% shell pm clear com.vodafone.AT
%adb% shell pm %PmAction% pt.vodafone.onm
%adb% shell am force-stop pt.vodafone.onm
%adb% shell pm clear pt.vodafone.onm
%adb% shell pm %PmAction% pt.vodafone.rockinrio
%adb% shell am force-stop pt.vodafone.rockinrio
%adb% shell pm clear pt.vodafone.rockinrio
%adb% shell pm %PmAction% pt.vodafone.android.onenet.collaboration.phone
%adb% shell am force-stop pt.vodafone.android.onenet.collaboration.phone
%adb% shell pm clear pt.vodafone.android.onenet.collaboration.phone
%adb% shell pm %PmAction% pt.vodafone.ephoneonenet
%adb% shell am force-stop pt.vodafone.ephoneonenet
%adb% shell pm clear pt.vodafone.ephoneonenet
%adb% shell pm %PmAction% pt.vodafone.bizcard
%adb% shell am force-stop pt.vodafone.bizcard
%adb% shell pm clear pt.vodafone.bizcard
%adb% shell pm %PmAction% pt.vodafone.rockout
%adb% shell am force-stop pt.vodafone.rockout
%adb% shell pm clear pt.vodafone.rockout
%adb% shell pm %PmAction% pt.vodafone.rpt
%adb% shell am force-stop pt.vodafone.rpt
%adb% shell pm clear pt.vodafone.rpt
%adb% shell pm %PmAction% pt.vodafone.ciberduvidas
%adb% shell am force-stop pt.vodafone.ciberduvidas
%adb% shell pm clear pt.vodafone.ciberduvidas
%adb% shell pm %PmAction% com.vodafone.allposts
%adb% shell am force-stop com.vodafone.allposts
%adb% shell pm clear com.vodafone.allposts
%adb% shell pm %PmAction% pt.vodafone.dador
%adb% shell am force-stop pt.vodafone.dador
%adb% shell pm clear pt.vodafone.dador
%adb% shell pm %PmAction% pt.vodafone.yornmensagemx
%adb% shell am force-stop pt.vodafone.yornmensagemx
%adb% shell pm clear pt.vodafone.yornmensagemx
%adb% shell pm %PmAction% com.vodafone.radar
%adb% shell am force-stop com.vodafone.radar
%adb% shell pm clear com.vodafone.radar
%adb% shell pm %PmAction% com.vodafone.ringdings
%adb% shell am force-stop com.vodafone.ringdings
%adb% shell pm clear com.vodafone.ringdings
%adb% shell pm %PmAction% pt.vodafone.myphotos
%adb% shell am force-stop pt.vodafone.myphotos
%adb% shell pm clear pt.vodafone.myphotos
%adb% shell pm %PmAction% com.thinkdigital.vodafonehealth
%adb% shell am force-stop com.thinkdigital.vodafonehealth
%adb% shell pm clear com.thinkdigital.vodafonehealth
%adb% shell pm %PmAction% pt.vodafone.netreport
%adb% shell am force-stop pt.vodafone.netreport
%adb% shell pm clear pt.vodafone.netreport
%adb% shell pm %PmAction% pt.vodafone.mexefest
%adb% shell am force-stop pt.vodafone.mexefest
%adb% shell pm clear pt.vodafone.mexefest
%adb% shell pm %PmAction% pt.vodafone.familyconnect
%adb% shell am force-stop pt.vodafone.familyconnect
%adb% shell pm clear pt.vodafone.familyconnect
%adb% shell pm %PmAction% pt.vodafone.paredesdecoura
%adb% shell am force-stop pt.vodafone.paredesdecoura
%adb% shell pm clear pt.vodafone.paredesdecoura
%adb% shell pm %PmAction% pt.vodafone.vodafoneFM
%adb% shell am force-stop pt.vodafone.vodafoneFM
%adb% shell pm clear pt.vodafone.vodafoneFM
%adb% shell pm %PmAction% com.vodafone.mobiletv
%adb% shell am force-stop com.vodafone.mobiletv
%adb% shell pm clear com.vodafone.mobiletv
%adb% shell pm %PmAction% com.vodafone.sosMobile
%adb% shell am force-stop com.vodafone.sosMobile
%adb% shell pm clear com.vodafone.sosMobile
%adb% shell pm %PmAction% wit.s2tandroid
%adb% shell am force-stop wit.s2tandroid
%adb% shell pm clear wit.s2tandroid
if "!OpMode!"=="Android 4.3-" (
	%adb% kill-server
) else (
	echo Root (X)
)

echo.
echo ============================================================
echo.

if "!Language!"=="br" (
	echo CONCLUÍDO! Voltando para o menu anterior em 5 segundos.
) else if "!Language!"=="en" (
	echo FINISHED! Returning to the previous menu in 5 seconds.
)

timeout 5 > NUL
goto do-end

:do-others
cls
if "!OpMode!"=="Android 4.3-" (
	%adb% root
) else (
	echo Root (X)
)
%adb% shell pm %PmAction% com.android.calculator2
%adb% shell am force-stop com.android.calculator2
%adb% shell pm clear com.android.calculator2
%adb% shell pm %PmAction% com.mediatek.camera
%adb% shell am force-stop com.mediatek.camera
%adb% shell pm clear com.mediatek.camera
%adb% shell pm %PmAction% com.neostra.batterymanufacturers
%adb% shell am force-stop com.neostra.batterymanufacturers
%adb% shell pm clear com.neostra.batterymanufacturers
%adb% shell pm %PmAction% com.neostra.hardwareinformation
%adb% shell am force-stop com.neostra.hardwareinformation
%adb% shell pm clear com.neostra.hardwareinformation
%adb% shell pm %PmAction% cci.usage
%adb% shell am force-stop cci.usage
%adb% shell pm clear cci.usage
%adb% shell pm %PmAction% com.aaa.android.discounts
%adb% shell am force-stop com.aaa.android.discounts
%adb% shell pm clear com.aaa.android.discounts
%adb% shell pm %PmAction% com.aaa.android.discounts.vpl
%adb% shell am force-stop com.aaa.android.discounts.vpl
%adb% shell pm clear com.aaa.android.discounts.vpl
%adb% shell pm %PmAction% com.aspiro.tidal.vpl
%adb% shell am force-stop com.aspiro.tidal.vpl
%adb% shell pm clear com.aspiro.tidal.vpl
%adb% shell pm %PmAction% com.aspiro.tidal
%adb% shell am force-stop com.aspiro.tidal
%adb% shell pm clear com.aspiro.tidal
%adb% shell pm %PmAction% com.audible.application
%adb% shell am force-stop com.audible.application
%adb% shell pm clear com.audible.application
%adb% shell pm %PmAction% com.bleacherreport.android.teamstream
%adb% shell am force-stop com.bleacherreport.android.teamstream
%adb% shell pm clear com.bleacherreport.android.teamstream
%adb% shell pm %PmAction% com.blurb.checkout
%adb% shell am force-stop com.blurb.checkout
%adb% shell pm clear com.blurb.checkout
%adb% shell pm %PmAction% com.booking
%adb% shell am force-stop com.booking
%adb% shell pm clear com.booking
%adb% shell pm %PmAction% com.cequint.ecid
%adb% shell am force-stop com.cequint.ecid
%adb% shell pm clear com.cequint.ecid
%adb% shell pm %PmAction% com.cnn.mobile.android.phone
%adb% shell am force-stop com.cnn.mobile.android.phone
%adb% shell pm clear com.cnn.mobile.android.phone
%adb% shell pm %PmAction% com.contextlogic.wish
%adb% shell am force-stop com.contextlogic.wish
%adb% shell pm clear com.contextlogic.wish
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.arabic
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.arabic
%adb% shell pm clear com.cootek.smartinputv5.language.oem.arabic
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.armenian
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.armenian
%adb% shell pm clear com.cootek.smartinputv5.language.oem.armenian
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.bulgarian
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.bulgarian
%adb% shell pm clear com.cootek.smartinputv5.language.oem.bulgarian
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.cangjie
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.cangjie
%adb% shell pm clear com.cootek.smartinputv5.language.oem.cangjie
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.catalan
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.catalan
%adb% shell pm clear com.cootek.smartinputv5.language.oem.catalan
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.chs
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.chs
%adb% shell pm clear com.cootek.smartinputv5.language.oem.chs
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.chs.handwrite
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.chs.handwrite
%adb% shell pm clear com.cootek.smartinputv5.language.oem.chs.handwrite
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.cht
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.cht
%adb% shell pm clear com.cootek.smartinputv5.language.oem.cht
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.croatian
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.croatian
%adb% shell pm clear com.cootek.smartinputv5.language.oem.croatian
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.czech
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.czech
%adb% shell pm clear com.cootek.smartinputv5.language.oem.czech
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.danish
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.danish
%adb% shell pm clear com.cootek.smartinputv5.language.oem.danish
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.dutch
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.dutch
%adb% shell pm clear com.cootek.smartinputv5.language.oem.dutch
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.englishgb
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.englishgb
%adb% shell pm clear com.cootek.smartinputv5.language.oem.englishgb
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.estonian
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.estonian
%adb% shell pm clear com.cootek.smartinputv5.language.oem.estonian
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.finnish
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.finnish
%adb% shell pm clear com.cootek.smartinputv5.language.oem.finnish
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.french
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.french
%adb% shell pm clear com.cootek.smartinputv5.language.oem.french
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.german
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.german
%adb% shell pm clear com.cootek.smartinputv5.language.oem.german
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.greek
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.greek
%adb% shell pm clear com.cootek.smartinputv5.language.oem.greek
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.hebrew
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.hebrew
%adb% shell pm clear com.cootek.smartinputv5.language.oem.hebrew
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.hungarian
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.hungarian
%adb% shell pm clear com.cootek.smartinputv5.language.oem.hungarian
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.indonesian
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.indonesian
%adb% shell pm clear com.cootek.smartinputv5.language.oem.indonesian
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.italian
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.italian
%adb% shell pm clear com.cootek.smartinputv5.language.oem.italian
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.kazakh
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.kazakh
%adb% shell pm clear com.cootek.smartinputv5.language.oem.kazakh
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.latvian
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.latvian
%adb% shell pm clear com.cootek.smartinputv5.language.oem.latvian
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.lithuanian
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.lithuanian
%adb% shell pm clear com.cootek.smartinputv5.language.oem.lithuanian
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.malayan
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.malayan
%adb% shell pm clear com.cootek.smartinputv5.language.oem.malayan
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.norwegian
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.norwegian
%adb% shell pm clear com.cootek.smartinputv5.language.oem.norwegian
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.persian
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.persian
%adb% shell pm clear com.cootek.smartinputv5.language.oem.persian
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.polish
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.polish
%adb% shell pm clear com.cootek.smartinputv5.language.oem.polish
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.portuguesept
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.portuguesept
%adb% shell pm clear com.cootek.smartinputv5.language.oem.portuguesept
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.romanian
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.romanian
%adb% shell pm clear com.cootek.smartinputv5.language.oem.romanian
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.russian
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.russian
%adb% shell pm clear com.cootek.smartinputv5.language.oem.russian
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.serbianlatin
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.serbianlatin
%adb% shell pm clear com.cootek.smartinputv5.language.oem.serbianlatin
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.simplecangjie
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.simplecangjie
%adb% shell pm clear com.cootek.smartinputv5.language.oem.simplecangjie
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.slovak
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.slovak
%adb% shell pm clear com.cootek.smartinputv5.language.oem.slovak
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.slovenian
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.slovenian
%adb% shell pm clear com.cootek.smartinputv5.language.oem.slovenian
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.spanish
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.spanish
%adb% shell pm clear com.cootek.smartinputv5.language.oem.spanish
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.spanishus
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.spanishus
%adb% shell pm clear com.cootek.smartinputv5.language.oem.spanishus
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.swedish
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.swedish
%adb% shell pm clear com.cootek.smartinputv5.language.oem.swedish
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.turkish
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.turkish
%adb% shell pm clear com.cootek.smartinputv5.language.oem.turkish
%adb% shell pm %PmAction% com.cootek.smartinputv5.language.oem.ukrainian
%adb% shell am force-stop com.cootek.smartinputv5.language.oem.ukrainian
%adb% shell pm clear com.cootek.smartinputv5.language.oem.ukrainian
%adb% shell pm %PmAction% com.cootek.smartinputv5.skin.defaultwhite
%adb% shell am force-stop com.cootek.smartinputv5.skin.defaultwhite
%adb% shell pm clear com.cootek.smartinputv5.skin.defaultwhite
%adb% shell pm %PmAction% com.emoji.keyboard.touchpal.oem
%adb% shell am force-stop com.emoji.keyboard.touchpal.oem
%adb% shell pm clear com.emoji.keyboard.touchpal.oem
%adb% shell pm %PmAction% com.crowdcare.agent.k
%adb% shell am force-stop com.crowdcare.agent.k
%adb% shell pm clear com.crowdcare.agent.k
%adb% shell pm %PmAction% com.devhd.feedly
%adb% shell am force-stop com.devhd.feedly
%adb% shell pm clear com.devhd.feedly
%adb% shell pm %PmAction% com.diotek.sec.lookup.dictionary
%adb% shell am force-stop com.diotek.sec.lookup.dictionary
%adb% shell pm clear com.diotek.sec.lookup.dictionary
%adb% shell pm %PmAction% com.directv.dvrscheduler
%adb% shell am force-stop com.directv.dvrscheduler
%adb% shell pm clear com.directv.dvrscheduler
%adb% shell pm %PmAction% com.discoveryscreen
%adb% shell am force-stop com.discoveryscreen
%adb% shell pm clear com.discoveryscreen
%adb% shell pm %PmAction% com.dna.solitaireapp
%adb% shell am force-stop com.dna.solitaireapp
%adb% shell pm clear com.dna.solitaireapp
%adb% shell pm %PmAction% com.draftkings.dknativermgGP.vpl
%adb% shell am force-stop com.draftkings.dknativermgGP.vpl
%adb% shell pm clear com.draftkings.dknativermgGP.vpl
%adb% shell pm %PmAction% com.drivemode
%adb% shell am force-stop com.drivemode
%adb% shell pm clear com.drivemode
%adb% shell pm %PmAction% com.ebay.mobile
%adb% shell am force-stop com.ebay.mobile
%adb% shell pm clear com.ebay.mobile
%adb% shell pm %PmAction% com.ebay.carrier
%adb% shell am force-stop com.ebay.carrier
%adb% shell pm clear com.ebay.carrier
%adb% shell pm %PmAction% com.ehernandez.radiolainolvidable
%adb% shell am force-stop com.ehernandez.radiolainolvidable
%adb% shell pm clear com.ehernandez.radiolainolvidable
%adb% shell pm %PmAction% com.emoji.keyboard.touchpal
%adb% shell am force-stop com.emoji.keyboard.touchpal
%adb% shell pm clear com.emoji.keyboard.touchpal
%adb% shell pm %PmAction% com.eterno
%adb% shell am force-stop com.eterno
%adb% shell pm clear com.eterno
%adb% shell pm %PmAction% com.evernote
%adb% shell am force-stop com.evernote
%adb% shell pm clear com.evernote
%adb% shell pm %PmAction% com.galaxyfirsatlari
%adb% shell am force-stop com.galaxyfirsatlari
%adb% shell pm clear com.galaxyfirsatlari
%adb% shell pm %PmAction% com.generalmobi.go2pay
%adb% shell am force-stop com.generalmobi.go2pay
%adb% shell pm clear com.generalmobi.go2pay
%adb% shell pm %PmAction% com.gotv.nflgamecenter.us.lite
%adb% shell am force-stop com.gotv.nflgamecenter.us.lite
%adb% shell pm clear com.gotv.nflgamecenter.us.lite
%adb% shell pm %PmAction% com.groupon
%adb% shell am force-stop com.groupon
%adb% shell pm clear com.groupon
%adb% shell pm %PmAction% com.hancom.office.editor.hidden
%adb% shell am force-stop com.hancom.office.editor.hidden
%adb% shell pm clear com.hancom.office.editor.hidden
%adb% shell pm %PmAction% com.handmark.expressweather
%adb% shell am force-stop com.handmark.expressweather
%adb% shell pm clear com.handmark.expressweather
%adb% shell pm %PmAction% com.handmark.expressweather.vpl
%adb% shell am force-stop com.handmark.expressweather.vpl
%adb% shell pm clear com.handmark.expressweather.vpl
%adb% shell pm %PmAction% com.hulu.plus
%adb% shell am force-stop com.hulu.plus
%adb% shell pm clear com.hulu.plus
%adb% shell pm %PmAction% com.ideashower.readitlater.pro
%adb% shell am force-stop com.ideashower.readitlater.pro
%adb% shell pm clear com.ideashower.readitlater.pro
%adb% shell pm %PmAction% com.imdb.mobile
%adb% shell am force-stop com.imdb.mobile
%adb% shell pm clear com.imdb.mobile
%adb% shell pm %PmAction% com.infraware.polarisoffice5
%adb% shell am force-stop com.infraware.polarisoffice5
%adb% shell pm clear com.infraware.polarisoffice5
%adb% shell pm %PmAction% com.ironsource.appcloud.oobe
%adb% shell am force-stop com.ironsource.appcloud.oobe
%adb% shell pm clear com.ironsource.appcloud.oobe
%adb% shell pm %PmAction% com.ironsource.appcloud.oobe.huawei
%adb% shell am force-stop com.ironsource.appcloud.oobe.huawei
%adb% shell pm clear com.ironsource.appcloud.oobe.huawei
%adb% shell pm %PmAction% com.king.candycrush4
%adb% shell am force-stop com.king.candycrush4
%adb% shell pm clear com.king.candycrush4
%adb% shell pm %PmAction% com.king.candycrushsodasaga
%adb% shell am force-stop com.king.candycrushsodasaga
%adb% shell pm clear com.king.candycrushsaga
%adb% shell pm %PmAction% com.king.candycrushsaga
%adb% shell am force-stop com.king.candycrushsaga
%adb% shell pm clear com.king.candycrushsaga
%adb% shell pm %PmAction% com.linkedin.android
%adb% shell am force-stop com.linkedin.android
%adb% shell pm clear com.linkedin.android
%adb% shell pm %PmAction% com.lookout
%adb% shell am force-stop com.lookout
%adb% shell pm clear com.lookout
%adb% shell pm %PmAction% com.micredit.in
%adb% shell am force-stop com.micredit.in
%adb% shell pm clear com.micredit.in
%adb% shell pm %PmAction% com.netflix.mediaclient
%adb% shell am force-stop com.netflix.mediaclient
%adb% shell pm clear com.netflix.mediaclient
%adb% shell pm %PmAction% com.netflix.partner.activation
%adb% shell am force-stop com.netflix.partner.activation
%adb% shell pm clear com.netflix.partner.activation
%adb% shell pm %PmAction% com.niksoftware.snapseed
%adb% shell am force-stop com.niksoftware.snapseed
%adb% shell pm clear com.niksoftware.snapseed
%adb% shell pm %PmAction% com.nuance.swype.input
%adb% shell am force-stop com.nuance.swype.input
%adb% shell pm clear com.nuance.swype.input
%adb% shell pm %PmAction% com.opera.branding
%adb% shell am force-stop com.opera.branding
%adb% shell pm clear com.opera.branding
%adb% shell pm %PmAction% com.opera.branding.news
%adb% shell am force-stop com.opera.branding.news
%adb% shell pm clear com.opera.branding.news
%adb% shell pm %PmAction% com.opera.mini.native
%adb% shell am force-stop com.opera.mini.native
%adb% shell pm clear com.opera.mini.native
%adb% shell pm %PmAction% com.opera.preinstall
%adb% shell am force-stop com.opera.preinstall
%adb% shell pm clear com.opera.preinstall
%adb% shell pm %PmAction% com.opera.max.oem
%adb% shell am force-stop com.opera.max.oem
%adb% shell pm clear com.opera.max.oem
%adb% shell pm %PmAction% com.opera.max.preinstall
%adb% shell am force-stop com.opera.max.preinstall
%adb% shell pm clear com.opera.max.preinstall
%adb% shell pm %PmAction% com.particlenews.newsbreak
%adb% shell am force-stop com.particlenews.newsbreak
%adb% shell pm clear com.particlenews.newsbreak
%adb% shell pm %PmAction% com.phonepe.app
%adb% shell am force-stop com.phonepe.app
%adb% shell pm clear com.phonepe.app
%adb% shell pm %PmAction% com.pinsight.v1
%adb% shell am force-stop com.pinsight.v1
%adb% shell pm clear com.pinsight.v1
%adb% shell pm %PmAction% com.playphone.gamestore
%adb% shell am force-stop com.playphone.gamestore
%adb% shell pm clear com.playphone.gamestore
%adb% shell pm %PmAction% com.playphone.gamestore.loot
%adb% shell am force-stop com.playphone.gamestore.loot
%adb% shell pm clear com.playphone.gamestore.loot
%adb% shell pm %PmAction% com.pure.indosat.care
%adb% shell am force-stop com.pure.indosat.care
%adb% shell pm clear com.pure.indosat.care
%adb% shell pm %PmAction% com.huaqin.FM
%adb% shell am force-stop com.huaqin.FM
%adb% shell pm clear com.huaqin.FM
%adb% shell pm %PmAction% com.nextradioapp.nextradio
%adb% shell am force-stop com.nextradioapp.nextradio
%adb% shell pm clear com.nextradioapp.nextradio
%adb% shell pm %PmAction% com.pinsight.dw
%adb% shell am force-stop com.pinsight.dw
%adb% shell pm clear com.pinsight.dw
%adb% shell pm %PmAction% com.realvnc.android.remote
%adb% shell am force-stop com.realvnc.android.remote
%adb% shell pm clear com.realvnc.android.remote
%adb% shell pm %PmAction% com.remotefairy4
%adb% shell am force-stop com.remotefairy4
%adb% shell pm clear com.remotefairy4
%adb% shell pm %PmAction% com.republicwireless.tel
%adb% shell am force-stop com.republicwireless.tel
%adb% shell pm clear com.republicwireless.tel
%adb% shell pm %PmAction% com.rhapsody
%adb% shell am force-stop com.rhapsody
%adb% shell pm clear com.rhapsody
%adb% shell pm %PmAction% com.rhapsody.vpl
%adb% shell am force-stop com.rhapsody.vpl
%adb% shell pm clear com.rhapsody.vpl
%adb% shell pm %PmAction% com.roaming.android.gsimbase
%adb% shell am force-stop com.roaming.android.gsimbase
%adb% shell pm clear com.roaming.android.gsimbase
%adb% shell pm %PmAction% com.roaming.android.gsimcontentprovider
%adb% shell am force-stop com.roaming.android.gsimcontentprovider
%adb% shell pm clear com.roaming.android.gsimcontentprovider
%adb% shell pm %PmAction% com.sem.factoryapp
%adb% shell am force-stop com.sem.factoryapp
%adb% shell pm clear com.sem.factoryapp
%adb% shell pm %PmAction% com.servicemagic.consumer
%adb% shell am force-stop com.servicemagic.consumer
%adb% shell pm clear com.servicemagic.consumer
%adb% shell pm %PmAction% com.setk.widget
%adb% shell am force-stop com.setk.widget
%adb% shell pm clear com.setk.widget
%adb% shell pm %PmAction% com.sharecare.askmd
%adb% shell am force-stop com.sharecare.askmd
%adb% shell pm clear com.sharecare.askmd
%adb% shell pm %PmAction% com.slacker.radio
%adb% shell am force-stop com.slacker.radio
%adb% shell pm clear com.slacker.radio
%adb% shell pm %PmAction% com.shopee.id
%adb% shell am force-stop com.shopee.id
%adb% shell pm clear com.shopee.id
%adb% shell pm %PmAction% com.smithmicro.netwise.director.comcast.oem
%adb% shell am force-stop com.smithmicro.netwise.director.comcast.oem
%adb% shell pm clear com.smithmicro.netwise.director.comcast.oem
%adb% shell pm %PmAction% com.spotify.music
%adb% shell am force-stop com.spotify.music
%adb% shell pm clear com.spotify.music
%adb% shell pm %PmAction% com.swiftkey.swiftkeyconfigurator
%adb% shell am force-stop com.swiftkey.swiftkeyconfigurator
%adb% shell pm clear com.swiftkey.swiftkeyconfigurator
%adb% shell pm %PmAction% com.synchronoss.dcs.att.r2g
%adb% shell am force-stop com.synchronoss.dcs.att.r2g
%adb% shell pm clear com.synchronoss.dcs.att.r2g
%adb% shell pm %PmAction% com.s.antivirus
%adb% shell am force-stop com.s.antivirus
%adb% shell pm clear com.s.antivirus
%adb% shell pm %PmAction% com.telenav.app.android.cingular
%adb% shell am force-stop com.telenav.app.android.cingular
%adb% shell pm clear com.telenav.app.android.cingular
%adb% shell pm %PmAction% com.telenav.app.android.scout_us
%adb% shell am force-stop com.telenav.app.android.scout_us
%adb% shell pm clear com.telenav.app.android.scout_us
%adb% shell pm %PmAction% com.til.timesnews
%adb% shell am force-stop com.til.timesnews
%adb% shell pm clear com.til.timesnews
%adb% shell pm %PmAction% com.tracker.t
%adb% shell am force-stop com.tracker.t
%adb% shell pm clear com.tracker.t
%adb% shell pm %PmAction% com.turner.cnvideoapp
%adb% shell am force-stop com.turner.cnvideoapp
%adb% shell pm clear com.turner.cnvideoapp
%adb% shell pm %PmAction% com.tripadvisor.tripadvisor
%adb% shell am force-stop com.tripadvisor.tripadvisor
%adb% shell pm clear com.tripadvisor.tripadvisor
%adb% shell pm %PmAction% com.ubercab
%adb% shell am force-stop com.ubercab
%adb% shell pm clear com.ubercab
%adb% shell pm %PmAction% com.ubercab.driver
%adb% shell am force-stop com.ubercab.driver
%adb% shell pm clear com.ubercab.driver
%adb% shell pm %PmAction% com.ubercab.eats
%adb% shell am force-stop com.ubercab.eats
%adb% shell pm clear com.ubercab.eats
%adb% shell pm %PmAction% com.UCMobile.intl
%adb% shell am force-stop com.UCMobile.intl
%adb% shell pm clear com.UCMobile.intl
%adb% shell pm %PmAction% com.ume.browser.northamerica
%adb% shell am force-stop com.ume.browser.northamerica
%adb% shell pm clear com.ume.browser.northamerica
%adb% shell pm %PmAction% com.vlingo.midas
%adb% shell am force-stop com.vlingo.midas
%adb% shell pm clear com.vlingo.midas
%adb% shell pm %PmAction% com.wb.goog.got.conquest
%adb% shell am force-stop com.wb.goog.got.conquest
%adb% shell pm clear com.wb.goog.got.conquest
%adb% shell pm %PmAction% com.yahoo.mobile.client.android.liveweather
%adb% shell am force-stop com.yahoo.mobile.client.android.liveweather
%adb% shell pm clear com.yahoo.mobile.client.android.liveweather
%adb% shell pm %PmAction% com.yellowpages.android.ypmobile
%adb% shell am force-stop com.yellowpages.android.ypmobile
%adb% shell pm clear com.yellowpages.android.ypmobile
%adb% shell pm %PmAction% com.yelp.android
%adb% shell am force-stop com.yelp.android
%adb% shell pm clear com.yelp.android
%adb% shell pm %PmAction% com.zhiliaoapp.musically
%adb% shell am force-stop com.zhiliaoapp.musically
%adb% shell pm clear com.zhiliaoapp.musically
%adb% shell pm %PmAction% de.axelspringer.yana.zeropage
%adb% shell am force-stop de.axelspringer.yana.zeropage
%adb% shell pm clear de.axelspringer.yana.zeropage
%adb% shell pm %PmAction% flipboard.app
%adb% shell am force-stop flipboard.app
%adb% shell pm clear flipboard.app
%adb% shell pm %PmAction% flipboard.boxer.app
%adb% shell am force-stop flipboard.boxer.app
%adb% shell pm clear flipboard.boxer.app
%adb% shell pm %PmAction% id.co.babe
%adb% shell am force-stop id.co.babe
%adb% shell pm clear id.co.babe
%adb% shell pm %PmAction% in.mohalla.sharechat
%adb% shell am force-stop in.mohalla.sharechat
%adb% shell pm clear in.mohalla.sharechat
%adb% shell pm %PmAction% in.playsimple.wordtrip
%adb% shell am force-stop in.playsimple.wordtrip
%adb% shell pm clear in.playsimple.wordtrip
%adb% shell pm %PmAction% jp.co.omronsoft.openwnn
%adb% shell am force-stop jp.co.omronsoft.openwnn
%adb% shell pm clear jp.co.omronsoft.openwnn
%adb% shell pm %PmAction% jp.gocro.smartnews.android
%adb% shell am force-stop jp.gocro.smartnews.android
%adb% shell pm clear jp.gocro.smartnews.android
%adb% shell pm %PmAction% msgplus.jibe.sca.vpl
%adb% shell am force-stop msgplus.jibe.sca.vpl
%adb% shell pm clear msgplus.jibe.sca.vpl
%adb% shell pm %PmAction% net.sharewire.parkmobilev2
%adb% shell am force-stop net.sharewire.parkmobilev2
%adb% shell pm clear net.sharewire.parkmobilev2
%adb% shell pm %PmAction% pl.zdunex25.updater
%adb% shell am force-stop pl.zdunex25.updater
%adb% shell pm clear pl.zdunex25.updater
%adb% shell pm %PmAction% tv.fubo.mobile.vpl
%adb% shell am force-stop tv.fubo.mobile.vpl
%adb% shell pm clear tv.fubo.mobile.vpl
%adb% shell pm %PmAction% tv.peel.app
%adb% shell am force-stop tv.peel.app
%adb% shell pm clear tv.peel.app
%adb% shell pm %PmAction% zpub.res
%adb% shell am force-stop zpub.res
%adb% shell pm clear zpub.res
%adb% shell pm %PmAction% com.monotype.android.font.chococooky
%adb% shell am force-stop com.monotype.android.font.chococooky
%adb% shell pm clear com.monotype.android.font.chococooky
%adb% shell pm %PmAction% com.monotype.android.font.cooljazz
%adb% shell am force-stop com.monotype.android.font.cooljazz
%adb% shell pm clear com.monotype.android.font.cooljazz
%adb% shell pm %PmAction% com.monotype.android.font.foundation
%adb% shell am force-stop com.monotype.android.font.foundation
%adb% shell pm clear com.monotype.android.font.foundation
%adb% shell pm %PmAction% com.monotype.android.font.rosemary
%adb% shell am force-stop com.monotype.android.font.rosemary
%adb% shell pm clear com.monotype.android.font.rosemary
%adb% shell pm %PmAction% com.dsi.ant.plugins.antplus
%adb% shell am force-stop com.dsi.ant.plugins.antplus
%adb% shell pm clear com.dsi.ant.plugins.antplus
%adb% shell pm %PmAction% com.dsi.ant.sample.acquirechannels
%adb% shell am force-stop com.dsi.ant.sample.acquirechannels
%adb% shell pm clear com.dsi.ant.sample.acquirechannels
%adb% shell pm %PmAction% com.dsi.ant.server
%adb% shell am force-stop com.dsi.ant.server
%adb% shell pm clear com.dsi.ant.server
%adb% shell pm %PmAction% com.dsi.ant.service.socket
%adb% shell am force-stop com.dsi.ant.service.socket
%adb% shell pm clear com.dsi.ant.service.socket
%adb% shell pm %PmAction% co.sitic.pp
%adb% shell am force-stop co.sitic.pp
%adb% shell pm clear co.sitic.pp
%adb% shell pm %PmAction% com.twitter.android
%adb% shell am force-stop com.twitter.android
%adb% shell pm clear com.twitter.android
%adb% shell pm %PmAction% com.wsandroid.suite
%adb% shell am force-stop com.wsandroid.suite
%adb% shell pm clear com.wsandroid.suite
%adb% shell pm %PmAction% com.mcafee.android.scanservice
%adb% shell am force-stop com.mcafee.android.scanservice
%adb% shell pm clear com.mcafee.android.scanservice
%adb% shell pm %PmAction% com.mobisystems.fileman
%adb% shell am force-stop com.mobisystems.fileman
%adb% shell pm clear com.mobisystems.fileman
%adb% shell pm %PmAction% com.mobisystems.office
%adb% shell am force-stop com.mobisystems.office
%adb% shell pm clear com.mobisystems.office
%adb% shell pm %PmAction% com.dolby.ds1appUI
%adb% shell am force-stop com.dolby.ds1appUI
%adb% shell pm clear com.dolby.ds1appUI
%adb% shell pm %PmAction% com.real.RealPlayerCloud
%adb% shell am force-stop com.real.RealPlayerCloud
%adb% shell pm clear com.real.RealPlayerCloud
%adb% shell pm %PmAction% com.redbend.app
%adb% shell am force-stop com.redbend.app
%adb% shell pm clear com.redbend.app
%adb% shell pm %PmAction% com.redbend.dmClient
%adb% shell am force-stop com.redbend.dmClient
%adb% shell pm clear com.redbend.dmClient
%adb% shell pm %PmAction% com.ss.android.ugc.trill
%adb% shell am force-stop com.ss.android.ugc.trill
%adb% shell pm clear com.ss.android.ugc.trill
%adb% shell pm %PmAction% com.ifytek.inputmethod.custom
%adb% shell am force-stop com.ifytek.inputmethod.custom
%adb% shell pm clear com.ifytek.inputmethod.custom
%adb% shell pm %PmAction% com.iflytek.inputmethod.custom
%adb% shell am force-stop com.iflytek.inputmethod.custom
%adb% shell pm clear com.iflytek.inputmethod.custom
if "!OpMode!"=="Android 4.3-" (
	%adb% kill-server
) else (
	echo Root (X)
)

echo.
echo ============================================================
echo.

if "!Language!"=="br" (
	echo CONCLUÍDO! Voltando para o menu anterior em 5 segundos.
) else if "!Language!"=="en" (
	echo FINISHED! Returning to the previous menu in 5 seconds.
)

timeout 5 > NUL
goto do-end

:do-cpus
cls
if "!OpMode!"=="Android 4.3-" (
	%adb% root
) else (
	echo Root (X)
)
rem Mediatek
%adb% shell pm %PmAction% com.mediatek.atmwifimeta
%adb% shell am force-stop com.mediatek.atmwifimeta
%adb% shell pm clear com.mediatek.atmwifimeta
%adb% shell pm %PmAction% com.mediatek.engineermode
%adb% shell am force-stop com.mediatek.engineermode
%adb% shell pm clear com.mediatek.engineermode
%adb% shell pm %PmAction% com.mediatek.mdmconfig
%adb% shell am force-stop com.mediatek.mdmconfig
%adb% shell pm clear com.mediatek.mdmconfig
%adb% shell pm %PmAction% com.mediatek.mtklogger
%adb% shell am force-stop com.mediatek.mtklogger
%adb% shell pm clear com.mediatek.mtklogger
%adb% shell pm %PmAction% com.mediatek.providers.drm
%adb% shell am force-stop com.mediatek.providers.drm
%adb% shell pm clear com.mediatek.providers.drm
%adb% shell pm %PmAction% com.mediatek.dataprotection
%adb% shell am force-stop com.mediatek.dataprotection
%adb% shell pm clear com.mediatek.dataprotection
%adb% shell pm %PmAction% com.mediatek.wfo.impl
%adb% shell am force-stop com.mediatek.wfo.impl
%adb% shell pm clear com.mediatek.wfo.impl
%adb% shell pm %PmAction% com.mediatek.fwk.plugin
%adb% shell am force-stop com.mediatek.fwk.plugin
%adb% shell pm clear com.mediatek.fwk.plugin
%adb% shell pm %PmAction% com.mediatek.thermalmanager
%adb% shell am force-stop com.mediatek.thermalmanager
%adb% shell pm clear com.mediatek.thermalmanager
rem Qualcomm
%adb% shell pm %PmAction% com.caf.fmradio
%adb% shell am force-stop com.caf.fmradio
%adb% shell pm clear com.caf.fmradio
%adb% shell pm %PmAction% org.codeaurora.gps.gpslogsave
%adb% shell am force-stop org.codeaurora.gps.gpslogsave
%adb% shell pm clear org.codeaurora.gps.gpslogsave
%adb% shell pm %PmAction% com.qti.qualcomm.datastatusnotification
%adb% shell am force-stop com.qti.qualcomm.datastatusnotification
%adb% shell pm clear com.qti.qualcomm.datastatusnotification
%adb% shell pm %PmAction% com.qti.service.colorservice
%adb% shell am force-stop com.qti.service.colorservice
%adb% shell pm clear com.qti.service.colorservice
%adb% shell pm %PmAction% com.qti.confuridialer
%adb% shell am force-stop com.qti.confuridialer
%adb% shell pm clear com.qti.confuridialer
%adb% shell pm %PmAction% com.qti.snapdragon.qdcm_ff
%adb% shell am force-stop com.qti.snapdragon.qdcm_ff
%adb% shell pm clear com.qti.snapdragon.qdcm_ff
%adb% shell pm %PmAction% com.qualcomm.atfwd
%adb% shell am force-stop com.qualcomm.atfwd
%adb% shell pm clear com.qualcomm.atfwd
%adb% shell pm %PmAction% com.qualcomm.embms
%adb% shell am force-stop com.qualcomm.embms
%adb% shell pm clear com.qualcomm.embms
%adb% shell pm %PmAction% com.qualcomm.location
%adb% shell am force-stop com.qualcomm.location
%adb% shell pm clear com.qualcomm.location
%adb% shell pm %PmAction% com.qualcomm.simcontacts
%adb% shell am force-stop com.qualcomm.simcontacts
%adb% shell pm clear com.qualcomm.simcontacts
%adb% shell pm %PmAction% com.qualcomm.qti.auth.fidocryptoservice
%adb% shell am force-stop com.qualcomm.qti.auth.fidocryptoservice
%adb% shell pm clear com.qualcomm.qti.auth.fidocryptoservice
%adb% shell pm %PmAction% com.qualcomm.qti.autoregistration
%adb% shell am force-stop com.qualcomm.qti.autoregistration
%adb% shell pm clear com.qualcomm.qti.autoregistration
%adb% shell pm %PmAction% com.qualcomm.qti.callfeaturessetting
%adb% shell am force-stop com.qualcomm.qti.callfeaturessetting
%adb% shell pm clear com.qualcomm.qti.callfeaturessetting
%adb% shell pm %PmAction% com.qualcomm.qti.confdialer
%adb% shell am force-stop com.qualcomm.qti.confdialer
%adb% shell pm clear com.qualcomm.qti.confdialer
%adb% shell pm %PmAction% com.qti.dpmserviceapp
%adb% shell am force-stop com.qti.dpmserviceapp
%adb% shell pm clear com.qti.dpmserviceapp
%adb% shell pm %PmAction% com.qualcomm.qti.networksetting
%adb% shell am force-stop com.qualcomm.qti.networksetting
%adb% shell pm clear com.qualcomm.qti.networksetting
%adb% shell pm %PmAction% com.qualcomm.qti.optinoverlay
%adb% shell am force-stop com.qualcomm.qti.optinoverlay
%adb% shell pm clear com.qualcomm.qti.optinoverlay
%adb% shell pm %PmAction% com.qualcomm.qti.perfdump
%adb% shell am force-stop com.qualcomm.qti.perfdump
%adb% shell pm clear com.qualcomm.qti.perfdump
%adb% shell pm %PmAction% com.qualcomm.qti.qms.service.connectionsecurity
%adb% shell am force-stop com.qualcomm.qti.qms.service.connectionsecurity
%adb% shell pm clear com.qualcomm.qti.qms.service.connectionsecurity
%adb% shell pm %PmAction% com.qualcomm.qti.qms.service.telemetry
%adb% shell am force-stop com.qualcomm.qti.qms.service.telemetry
%adb% shell pm clear com.qualcomm.qti.qms.service.telemetry
%adb% shell pm %PmAction% com.qualcomm.qti.qtisystemservice
%adb% shell am force-stop com.qualcomm.qti.qtisystemservice
%adb% shell pm clear com.qualcomm.qti.qtisystemservice
%adb% shell pm %PmAction% com.qualcomm.qti.roamingsettings
%adb% shell am force-stop com.qualcomm.qti.roamingsettings
%adb% shell pm clear com.qualcomm.qti.roamingsettings
%adb% shell pm %PmAction% com.qualcomm.qti.rcsbootstraputil
%adb% shell am force-stop com.qualcomm.qti.rcsbootstraputil
%adb% shell pm clear com.qualcomm.qti.rcsbootstraputil
%adb% shell pm %PmAction% com.qualcomm.qti.rcsimsbootstraputil
%adb% shell am force-stop com.qualcomm.qti.rcsimsbootstraputil
%adb% shell pm clear com.qualcomm.qti.rcsimsbootstraputil
%adb% shell pm %PmAction% com.qualcomm.qti.uceshimservice
%adb% shell am force-stop com.qualcomm.qti.uceshimservice
%adb% shell pm clear com.qualcomm.qti.uceshimservice
%adb% shell pm %PmAction% com.qti.xdivert
%adb% shell am force-stop com.qti.xdivert
%adb% shell pm clear com.qti.xdivert
%adb% shell pm %PmAction% com.quicinc.cne.CNEService
%adb% shell am force-stop com.quicinc.cne.CNEService
%adb% shell pm clear com.quicinc.cne.CNEService
%adb% shell pm %PmAction% com.quicinc.fmradio
%adb% shell am force-stop com.quicinc.fmradio
%adb% shell pm clear com.quicinc.fmradio
%adb% shell pm %PmAction% com.qualcomm.qti.qmmi
%adb% shell am force-stop com.qualcomm.qti.qmmi
%adb% shell pm clear com.qualcomm.qti.qmmi
%adb% shell pm %PmAction% com.qti.confuridialer
%adb% shell am force-stop com.qti.confuridialer
%adb% shell pm clear com.qti.confuridialer
%adb% shell pm %PmAction% com.qualcomm.qti.loadcarrier
%adb% shell am force-stop com.qualcomm.qti.loadcarrier
%adb% shell pm clear com.qualcomm.qti.loadcarrier
if "!OpMode!"=="Android 4.3-" (
	%adb% kill-server
) else (
	echo Root (X)
)

echo.
echo ============================================================
echo.

if "!Language!"=="br" (
	echo CONCLUÍDO! Voltando para o menu anterior em 5 segundos.
) else if "!Language!"=="en" (
	echo FINISHED! Returning to the previous menu in 5 seconds.
)

timeout 5 > NUL
goto do-end

:do-gms
cls
if "!OpMode!"=="Android 4.3-" (
	%adb% root
) else (
	echo Root (X)
)
%adb% shell pm %PmAction% com.google.android.gms
%adb% shell am force-stop com.google.android.gms
%adb% shell pm clear com.google.android.gms
%adb% shell pm %PmAction% com.android.vending
%adb% shell am force-stop com.android.vending
%adb% shell pm clear com.android.vending
%adb% shell pm %PmAction% com.google.android.gsf
%adb% shell am force-stop com.google.android.gsf
%adb% shell pm clear com.google.android.gsf
%adb% shell pm %PmAction% com.google.android.apps.carrier.carrierwifi
%adb% shell am force-stop com.google.android.apps.carrier.carrierwifi
%adb% shell pm clear com.google.android.apps.carrier.carrierwifi
%adb% shell pm %PmAction% com.google.android.webview
%adb% shell am force-stop com.google.android.webview
%adb% shell pm clear com.google.android.webview
%adb% shell pm %PmAction% com.google.android.inputmethod.latin
%adb% shell am force-stop com.google.android.inputmethod.latin
%adb% shell pm clear com.google.android.inputmethod.latin
%adb% shell pm %PmAction% com.google.android.inputmethod.japanese
%adb% shell am force-stop com.google.android.inputmethod.japanese
%adb% shell pm clear com.google.android.inputmethod.japanese
%adb% shell pm %PmAction% com.google.android.inputmethod.hindi
%adb% shell am force-stop com.google.android.inputmethod.hindi
%adb% shell pm clear com.google.android.inputmethod.hindi
if "!OpMode!"=="Android 4.3-" (
	%adb% kill-server
) else (
	echo Root (X)
)

echo.
echo ============================================================
echo.

if "!Language!"=="br" (
	echo CONCLUÍDO! Voltando para o menu anterior em 5 segundos.
) else if "!Language!"=="en" (
	echo FINISHED! Returning to the previous menu in 5 seconds.
)

timeout 5 > NUL
goto do-end

:do-ue
cls

for /f "tokens=2 delims=:" %%a in ('%adb% shell pm list packages') do @echo %%a>>packages.txt
for /f %%b in (packages.txt) do (
	%adb% uninstall %%b
)
del packages.txt

echo.
echo ============================================================
echo.

if "!Language!"=="br" (
	echo CONCLUÍDO! Voltando para o menu anterior em 5 segundos.
) else if "!Language!"=="en" (
	echo FINISHED! Returning to the previous menu in 5 seconds.
)

timeout 5 > NUL
goto do-end

:do-eds
cls
%adb% shell pm %PmAction% %PackageName%
%adb% shell am force-stop %PackageName%
%adb% shell pm clear %PackageName%

echo.
echo ============================================================
echo.

if "!Language!"=="br" (
	echo CONCLUÍDO! Voltando para o menu anterior em 5 segundos.
) else if "!Language!"=="en" (
	echo FINISHED! Returning to the previous menu in 5 seconds.
)

timeout 5 > NUL
goto do-eds-end

:fd-exit
%adb% kill-server
exit

:language
title FrogDebloat v1.0
cls
echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Select your language:
echo.
echo [a] English
echo [b] Português (Brasil)
echo.
echo [1] About this tool
echo [0] Exit
echo.
echo ============================================================
echo.

set /p choice=Choose an option: 

if "%choice%"=="a" (
	set Language=en
    goto adb-check
)
if "%choice%"=="b" (
	set Language=br
    goto adb-check
)
if "%choice%"=="1" (
	goto about
)
if "%choice%"=="0" (
    exit
)

echo.
echo Invalid option. Type the desired key and press Enter.
pause
goto language

rem English

:adb-nf-en
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo ADB NOT FOUND
echo.
echo Unable to locate Android Debug Bridge in system variables.
echo Without it, the script doesn't work.
echo.
echo If you still didn't installed it, download and configure it
echo in the system variables. After that, select the "Verify
echo again" option.
echo.
echo If you're using ADB in portable mode, type the full path to
echo the Android Debug Bridge executable, following the example
echo below:
echo.
echo.
echo C:\adb-folder\adb.exe
echo or
echo "C:\adb folder with spaces\adb.exe"
echo.
echo [1] Verify again
echo [0] Exit
echo.
echo ============================================================
echo.

set /p choice=Choose an option: 

if "%choice%"=="1" (
    goto adb-check
) else if "%choice%"=="0" (
    exit
) else (
	%choice% --version > NUL 2>&1
	if errorlevel 1 (
		echo.
		echo Invalid path! Check the directory and try again.
		pause
		goto adb-nf-en
	) else (
		set "adb=%choice%"
		goto op-mode-en
	)
)

:op-mode-en
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Choose the operation mode:
echo.
echo [1] Android 5.0+
echo [2] Android 4.4
echo [3] Android 4.3- (requires root)
echo.
echo [0] Exit
echo.
echo ============================================================
echo.

set /p choice=Choose an option: 

if "%choice%"=="1" (
	set "OpMode=Android 5.0+"
    goto main-menu-en
)
if "%choice%"=="2" (
	set "OpMode=Android 4.4"
    goto main-menu-en
)
if "%choice%"=="3" (
	set "OpMode=Android 4.3-"
    goto main-menu-en
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Invalid option. Insert the desired selection and press Enter.
pause
goto op-mode-en

:main-menu-en
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo OPERATION MODE: %OpMode%
echo.
echo ------------------------------
echo.
echo FrogDebloat cleans app data and disable bloatware for the
echo user only. If operation mode is set to use root, it disables
echo apps globally.
echo.
echo It's recommended to uninstall all the apps that allow the
echo user to uninstall them before starting the debloat process.
echo This way, there will be more storage space available for
echo your apps and files.
echo.
echo Use the [y] option to uninstall all the uninstallable apps.
echo Caution, because this will uninstall apps that you installed
echo manually.
echo.
echo Choose the bloatware group to change:
echo.
echo [a] AOSP
echo [b] Google
echo [c] Mobile carriers
echo [d] Other bloatware
echo [e] Processors
echo [f] Manufacturers
echo [g] Third party companies
echo [h] Google integration and others (ADVANCED)
echo.
echo [y] Uninstall all the uninstallable apps
echo [z] Change specific app...
echo.
echo ------------------------------
echo.
echo [1] Change operation mode
echo [0] Exit
echo.
echo ============================================================
echo.

set /p choice=Choose an option: 

if "%choice%"=="a" (
    goto aosp-en
)
if "%choice%"=="b" (
    goto google-en
)
if "%choice%"=="c" (
    goto carriers-en
)
if "%choice%"=="d" (
    goto others-en
)
if "%choice%"=="e" (
    goto cpus-en
)
if "%choice%"=="f" (
    goto manufacturers-en
)
if "%choice%"=="g" (
    goto companies-en
)
if "%choice%"=="h" (
    goto gms-en
)
if "%choice%"=="y" (
    goto ue-en
)
if "%choice%"=="z" (
    goto eds-en
)
if "%choice%"=="1" (
    goto op-mode-en
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Invalid option. Insert the desired selection and press Enter.
pause
goto main-menu-en

:aosp-en
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo AOSP
echo.
echo Bloatware that is part of Android Open Source Project.
echo.
echo [1] Disable all
echo [2] Enable all
echo.
echo [3] Return to the previous menu
echo [0] Exit
echo.
echo ============================================================
echo.

set /p choice=Choose an option: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto do-aosp
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto do-aosp
)
if "%choice%"=="3" (
    goto main-menu-en
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Invalid option. Insert the desired selection and press Enter.
pause
goto aosp-en

:companies-en
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Third party companies
echo.
echo Bloatware made by companies like Amazon, Meta and Microsoft.
echo.
echo [1] Disable all
echo [2] Enable all
echo.
echo [3] Return to the previous menu
echo [0] Exit
echo.
echo ============================================================
echo.

set /p choice=Choose an option: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto do-companies
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto do-companies
)
if "%choice%"=="3" (
    goto main-menu-en
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Invalid option. Insert the desired selection and press Enter.
pause
goto companies-en

:manufacturers-en
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Manufacturers
echo.
echo Bloatware made by manufacturers like Motorola, Samsung and
echo Xiaomi.
echo.
echo [1] Disable all
echo [2] Enable all
echo.
echo [3] Return to the previous menu
echo [0] Exit
echo.
echo ============================================================
echo.

set /p choice=Choose an option: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto do-manufacturers
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto do-manufacturers
)
if "%choice%"=="3" (
    goto main-menu-en
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Invalid option. Insert the desired selection and press Enter.
pause
goto manufacturers-en

:google-en
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Google
echo.
echo Bloatware made by Google. This doesn't include services
echo required for Google account login.
echo.
echo [1] Disable all
echo [2] Enable all
echo.
echo [3] Return to the previous menu
echo [0] Exit
echo.
echo ============================================================
echo.

set /p choice=Choose an option: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto do-google
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto do-google
)
if "%choice%"=="3" (
    goto main-menu-en
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Invalid option. Insert the desired selection and press Enter.
pause
goto google-en

:carriers-en
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Mobile carriers
echo.
echo Bloatware made by mobile carriers.
echo.
echo [1] Disable all
echo [2] Enable all
echo.
echo [3] Return to the previous menu
echo [0] Exit
echo.
echo ============================================================
echo.

set /p choice=Choose an option: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto do-carriers
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto do-carriers
)
if "%choice%"=="3" (
    goto main-menu-en
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Invalid option. Insert the desired selection and press Enter.
pause
goto carriers-en

:others-en
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Other bloatware
echo.
echo Bloatware from miscellaneous sources. May include apps that
echo are considered useful.
echo.
echo [1] Disable all
echo [2] Enable all
echo.
echo [3] Return to the previous menu
echo [0] Exit
echo.
echo ============================================================
echo.

set /p choice=Choose an option: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto do-others
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto do-others
)
if "%choice%"=="3" (
    goto main-menu-en
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Invalid option. Insert the desired selection and press Enter.
pause
goto others-en

:cpus-en
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Processors
echo.
echo Bloatware made by processor, chipset and SoCs manufacturers.
echo.
echo [1] Disable all
echo [2] Enable all
echo.
echo [3] Return to the previous menu
echo [0] Exit
echo.
echo ============================================================
echo.

set /p choice=Choose an option: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto do-cpus
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto do-cpus
)
if "%choice%"=="3" (
    goto main-menu-en
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Invalid option. Insert the desired selection and press Enter.
pause
goto cpus-br

:gms-en
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Google integration and others (ADVANCED)
echo.
echo Apps responsible for allowing Google account login to work,
echo alongside Google Play Services, Google Play Store and
echo Gboard.
echo.
echo [1] Disable all
echo [2] Enable all
echo.
echo [3] Return to the previous menu
echo [0] Exit
echo.
echo ============================================================
echo.

set /p choice=Choose an option: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto do-gms
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto do-gms
)
if "%choice%"=="3" (
    goto main-menu-en
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Invalid option. Insert the desired selection and press Enter.
pause
goto en

:ue-en
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Uninstall all the uninstallable apps
echo.
echo Try to remove all the existing apps on the device, with the
echo intention of fail them all, except in the ones that are
echo removable by the user itself. This will remove common
echo bloatware like Facebook and Spotify, freeing up storage
echo space.
echo.
echo [1] Uninstall all
echo.
echo [2] Return to the previous menu
echo [0] Exit
echo.
echo ============================================================
echo.

set /p choice=Choose an option: 

if "%choice%"=="1" (
    goto do-ue
)
if "%choice%"=="2" (
    goto main-menu-en
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Invalid option. Insert the desired selection and press Enter.
pause
goto ue-en

:eds-en
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Change specific app
echo.
echo Enable or disable specific apps based on the package name
echo provided. Select the operation mode below.
echo.
echo [1] Disable app
echo [2] Enable app
echo.
echo [3] Return to the previous menu
echo [0] Exit
echo.
echo ============================================================
echo.

set /p choice=Choose an option: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto eds-s-en
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto eds-s-en
)
if "%choice%"=="3" (
    goto main-menu-en
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Invalid option. Insert the desired selection and press Enter.
pause
goto eds-en

:eds-s-en
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Change specific app
echo.
echo Insert the package name from the app you want to change and
echo press Enter. It's only possible to change one app per time,
echo and not multiple simultaneously.
echo.
echo Example: com.android.vending
echo.
echo [1] Return to the previous menu
echo [0] Exit
echo.
echo ============================================================
echo.

set /p choice=Choose an option: 

if "%choice%"=="1" (
    goto eds-en
)
if "%choice%"=="0" (
    goto fd-exit
) else (
	set "PackageName=%choice%"
	goto do-eds
)

echo.
echo Invalid option. Insert the desired selection and press Enter.
pause
goto eds-s-en

rem Portugues (Brasil)

:adb-nf-br
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo ADB NÃO ENCONTRADO
echo.
echo Não foi possível localizar o Android Debug Bridge nas
echo variáveis de sistema. Sem ele, o script não funciona.
echo.
echo Se você ainda não o instalou, baixe e configure-o nas
echo variáveis de sistema. Após isso, escolha a opção "Verificar
echo novamente".
echo.
echo Se você está usando o ADB no modo portátil, digite o caminho
echo completo para o executável do Android Debug Bridge, seguindo
echo o exemplo abaixo:
echo.
echo C:\pasta-do-adb\adb.exe
echo ou
echo "C:\pasta do adb com espacos\adb.exe"
echo.
echo [1] Verificar novamente
echo [0] Sair
echo.
echo ============================================================
echo.

set /p choice=Escolha uma opção: 

if "%choice%"=="1" (
    goto adb-check
) else if "%choice%"=="0" (
    exit
) else (
	%choice% --version > NUL 2>&1
	if errorlevel 1 (
		echo.
		echo Caminho inválido! Verifique o diretório e tente novamente.
		pause
		goto adb-nf-br
	) else (
		set "adb=%choice%"
		goto op-mode-br
	)
)

:op-mode-br
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Escolha o modo de operação:
echo.
echo [1] Android 5.0+
echo [2] Android 4.4
echo [3] Android 4.3- (requer root)
echo.
echo [0] Sair
echo.
echo ============================================================
echo.

set /p choice=Escolha uma opção: 

if "%choice%"=="1" (
	set "OpMode=Android 5.0+"
    goto main-menu-br
)
if "%choice%"=="2" (
	set "OpMode=Android 4.4"
    goto main-menu-br
)
if "%choice%"=="3" (
	set "OpMode=Android 4.3-"
    goto main-menu-br
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Opção inválida. Digite a opção desejada e pressione Enter.
pause
goto op-mode-br

:main-menu-br
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo MODO DE OPERAÇÃO: %OpMode%
echo.
echo ------------------------------
echo.
echo O FrogDebloat limpa os dados dos aplicativos e desativa
echo bloatware para o usuário somente. Se o modo de operação for
echo configurado para root, o bloatware é desativado globalmente.
echo.
echo É recomendado desinstalar todos os aplicativos que permitem
echo ser desinstalados antes de iniciar o processo de debloat.
echo Dessa forma haverá mais espaço de armazenamento disponível
echo para seus aplicativos e arquivos.
echo.
echo Utilize a opção [y] para desinstalar todos os aplicativos
echo desinstaláveis. Cuidado, pois isso irá desinstalar
echo aplicativos que você instalou manualmente.
echo.
echo Escolha o grupo de bloatware para alterar:
echo.
echo [a] AOSP
echo [b] Empresas terceiras
echo [c] Fabricantes
echo [d] Google
echo [e] Operadoras móveis
echo [f] Outros bloatwares
echo [g] Processadores
echo [h] Integração Google e outros (AVANÇADO)
echo.
echo [y] Desinstalar todos os aplicativos desinstaláveis
echo [z] Alterar aplicativo específico...
echo.
echo ------------------------------
echo.
echo [1] Alterar modo de operação
echo [0] Sair
echo.
echo ============================================================
echo.

set /p choice=Escolha uma opção: 

if "%choice%"=="a" (
    goto aosp-br
)
if "%choice%"=="b" (
    goto companies-br
)
if "%choice%"=="c" (
    goto manufacturers-br
)
if "%choice%"=="d" (
    goto google-br
)
if "%choice%"=="e" (
    goto carriers-br
)
if "%choice%"=="f" (
    goto others-br
)
if "%choice%"=="g" (
    goto cpus-br
)
if "%choice%"=="h" (
    goto gms-br
)
if "%choice%"=="y" (
    goto ue-br
)
if "%choice%"=="z" (
    goto eds-br
)
if "%choice%"=="1" (
    goto op-mode-br
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Opção inválida. Digite a opção desejada e pressione Enter.
pause
goto main-menu-br

:aosp-br
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo AOSP
echo.
echo Bloatware que faz parte do Android Open Source Project.
echo.
echo [1] Desativar tudo
echo [2] Ativar tudo
echo.
echo [3] Retornar ao menu anterior
echo [0] Sair
echo.
echo ============================================================
echo.

set /p choice=Escolha uma opção: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto do-aosp
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto do-aosp
)
if "%choice%"=="3" (
    goto main-menu-br
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Opção inválida. Digite a opção desejada e pressione Enter.
pause
goto aosp-br

:companies-br
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Empresas terceiras
echo.
echo Bloatware de empresas como Amazon, Meta e Microsoft.
echo.
echo [1] Desativar tudo
echo [2] Ativar tudo
echo.
echo [3] Retornar ao menu anterior
echo [0] Sair
echo.
echo ============================================================
echo.

set /p choice=Escolha uma opção: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto do-companies
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto do-companies
)
if "%choice%"=="3" (
    goto main-menu-br
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Opção inválida. Digite a opção desejada e pressione Enter.
pause
goto companies-br

:manufacturers-br
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Fabricantes
echo.
echo Bloatware de fabricantes como Motorola, Samsung e Xiaomi.
echo.
echo [1] Desativar tudo
echo [2] Ativar tudo
echo.
echo [3] Retornar ao menu anterior
echo [0] Sair
echo.
echo ============================================================
echo.

set /p choice=Escolha uma opção: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto do-manufacturers
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto do-manufacturers
)
if "%choice%"=="3" (
    goto main-menu-br
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Opção inválida. Digite a opção desejada e pressione Enter.
pause
goto manufacturers-br

:google-br
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Google
echo.
echo Bloatware do Google. Não inclui serviços necessários para
echo login de contas Google.
echo.
echo [1] Desativar tudo
echo [2] Ativar tudo
echo.
echo [3] Retornar ao menu anterior
echo [0] Sair
echo.
echo ============================================================
echo.

set /p choice=Escolha uma opção: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto do-google
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto do-google
)
if "%choice%"=="3" (
    goto main-menu-br
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Opção inválida. Digite a opção desejada e pressione Enter.
pause
goto google-br

:carriers-br
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Operadoras móveis
echo.
echo Bloatware de operadoras de telefonia móvel.
echo.
echo [1] Desativar tudo
echo [2] Ativar tudo
echo.
echo [3] Retornar ao menu anterior
echo [0] Sair
echo.
echo ============================================================
echo.

set /p choice=Escolha uma opção: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto do-carriers
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto do-carriers
)
if "%choice%"=="3" (
    goto main-menu-br
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Opção inválida. Digite a opção desejada e pressione Enter.
pause
goto carriers-br

:others-br
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Outros bloatwares
echo.
echo Bloatware de fontes diversas. Pode conter aplicativos
echo considerados úteis.
echo.
echo [1] Desativar tudo
echo [2] Ativar tudo
echo.
echo [3] Retornar ao menu anterior
echo [0] Sair
echo.
echo ============================================================
echo.

set /p choice=Escolha uma opção: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto do-others
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto do-others
)
if "%choice%"=="3" (
    goto main-menu-br
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Opção inválida. Digite a opção desejada e pressione Enter.
pause
goto others-br

:cpus-br
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Processadores
echo.
echo Bloatware de fabricantes de processadores, chipsets e SoCs.
echo.
echo [1] Desativar tudo
echo [2] Ativar tudo
echo.
echo [3] Retornar ao menu anterior
echo [0] Sair
echo.
echo ============================================================
echo.

set /p choice=Escolha uma opção: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto do-cpus
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto do-cpus
)
if "%choice%"=="3" (
    goto main-menu-br
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Opção inválida. Digite a opção desejada e pressione Enter.
pause
goto cpus-br

:gms-br
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Integração Google e outros (AVANÇADO)
echo.
echo Aplicativos responsáveis por fazer o login de conta Google
echo funcionar, além do Google Play Services, Google Play Store e
echo Gboard.
echo.
echo [1] Desativar tudo
echo [2] Ativar tudo
echo.
echo [3] Retornar ao menu anterior
echo [0] Sair
echo.
echo ============================================================
echo.

set /p choice=Escolha uma opção: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto do-gms
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto do-gms
)
if "%choice%"=="3" (
    goto main-menu-br
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Opção inválida. Digite a opção desejada e pressione Enter.
pause
goto gms-br

:ue-br
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Desinstalar todos os aplicativos desinstaláveis
echo.
echo Tenta remover todos os aplicativos existentes no aparelho,
echo com o intuito de falhar em todos, exceto nos que são
echo removíveis para o próprio usuário. Isso remove bloatwares
echo comuns como Facebook e Spotify, liberando espaço de
echo armazenamento.
echo.
echo [1] Desinstalar tudo
echo.
echo [2] Retornar ao menu anterior
echo [0] Sair
echo.
echo ============================================================
echo.

set /p choice=Escolha uma opção: 

if "%choice%"=="1" (
    goto do-ue
)
if "%choice%"=="2" (
    goto main-menu-br
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Opção inválida. Digite a opção desejada e pressione Enter.
pause
goto ue-br

:eds-br
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Alterar aplicativo específico
echo.
echo Ativa ou desativa aplicativos específicos baseado no nome
echo do pacote fornecido. Selecione o modo de operação abaixo.
echo.
echo [1] Desativar aplicativo
echo [2] Ativar aplicativo
echo.
echo [3] Retornar ao menu anterior
echo [0] Sair
echo.
echo ============================================================
echo.

set /p choice=Escolha uma opção: 

if "%choice%"=="1" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=disable-user --user 0"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=clear"
	) else (
		set "PmAction=disable"
	)
    goto eds-s-br
)
if "%choice%"=="2" (
	if "!OpMode!"=="Android 5.0+" (
		set "PmAction=install-existing"
	) else if "!OpMode!"=="Android 4.4" (
		set "PmAction=unblock"
	) else (
		set "PmAction=enable"
	)
    goto eds-s-br
)
if "%choice%"=="3" (
    goto main-menu-br
)
if "%choice%"=="0" (
    goto fd-exit
)

echo.
echo Opção inválida. Digite a opção desejada e pressione Enter.
pause
goto eds-br

:eds-s-br
cls

echo ============================================================
echo.
echo ..:: FROGDEBLOAT v1.0 ::..
echo.
echo Alterar aplicativo específico
echo.
echo Digite o nome do pacote do aplicativo que você deseja
echo alterar e dê Enter. Só é possível alterar um aplicativo por
echo vez, e não vários simultaneamente.
echo.
echo Exemplo: com.android.vending
echo.
echo [1] Retornar ao menu anterior
echo [0] Sair
echo.
echo ============================================================
echo.

set /p choice=Escolha uma opção: 

if "%choice%"=="1" (
    goto eds-br
)
if "%choice%"=="0" (
    goto fd-exit
) else (
	set "PackageName=%choice%"
	goto do-eds
)

echo.
echo Opção inválida. Digite a opção desejada e pressione Enter.
pause
goto eds-s-br