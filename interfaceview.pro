isComponentType('interfaceview::FV::Manager','PUBLIC','PI_internalLoop','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::Manager','PUBLIC','PI_internalLoop','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','Manager','PI_internalLoop','PROVIDES','SUBPROGRAM','interfaceview::FV::Manager::PI_internalLoop.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::Manager','PI_internalLoop','NIL','NIL','Taste::Associated_Queue_Size','1','').
isProperty('NIL','=>','interfaceview::IV','Manager','NIL','PI_internalLoop','Taste::coordinates','"39816 35955"','').
isProperty('NIL','=>','interfaceview::IV','Manager','NIL','PI_internalLoop','Taste::RCMoperationKind','cyclic','').
isProperty('NIL','=>','interfaceview::IV','Manager','NIL','PI_internalLoop','Taste::RCMperiod','1000 ms','').
isProperty('NIL','=>','interfaceview::IV','Manager','NIL','PI_internalLoop','Taste::Deadline','50 ms','').
isProperty('NIL','=>','interfaceview::IV','Manager','NIL','PI_internalLoop','Taste::InterfaceName','"internalLoop"','').
isProperty('NIL','=>','interfaceview::FV::Manager','PI_internalLoop','others','NIL','Compute_Execution_Time','0 ms .. 0 ms','').
isSubcomponent('interfaceview::IV','Manager','others','internalLoop_impl','SUBPROGRAM','interfaceview::FV::Manager::PI_internalLoop.others','NIL','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','Manager','others','OpToPICnx_internalLoop_impl','internalLoop_impl','->','PI_internalLoop','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','interfaceview','others','GPS_Driver_PI_gpsGetStatus_Manager_RI_gpsGetStatus','GPS_Driver.PI_gpsGetStatus','->','Manager.RI_gpsGetStatus','NIL','').
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','GPS_Driver_PI_gpsGetStatus_Manager_RI_gpsGetStatus','Taste::coordinates','"63920 52771 74642 52771 74642 41483 85365 41483"','').
isComponentType('interfaceview::FV::Manager','PUBLIC','RI_gpsGetStatus','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::Manager','PUBLIC','RI_gpsGetStatus','others','SUBPROGRAM','NIL','others','').
isImportDeclaration('interfaceview::IV','PUBLIC','interfaceview::FV::GPS_Driver','').
isFeature('ACCESS','interfaceview::IV','Manager','RI_gpsGetStatus','REQUIRES','SUBPROGRAM','interfaceview::FV::GPS_Driver::PI_gpsGetStatus.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','Manager','NIL','RI_gpsGetStatus','Taste::coordinates','"63920 52771"','').
isProperty('NIL','=>','interfaceview::IV','Manager','NIL','RI_gpsGetStatus','Taste::RCMoperationKind','any','').
isProperty('NIL','=>','interfaceview::IV','Manager','NIL','RI_gpsGetStatus','Taste::InterfaceName','"gpsGetStatus"','').
isProperty('NIL','=>','interfaceview::IV','Manager','NIL','RI_gpsGetStatus','Taste::labelInheritance','"true"','').
isFeature('PARAMETER','interfaceview::FV::Manager','RI_gpsGetStatus','status','OUT','NIL','DataView::GPS_Status','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::Manager','RI_gpsGetStatus','NIL','status','Taste::encoding','NATIVE','').
isPackage('interfaceview::FV::Manager','PUBLIC','').
isComponentType('interfaceview::IV','PUBLIC','Manager','SYSTEM','NIL','').
isComponentImplementation('interfaceview::IV','PUBLIC','Manager','others','SYSTEM','NIL','others','').
isProperty('NIL','=>','interfaceview::IV','Manager','NIL','NIL','Source_Language','(C)','').
isProperty('NIL','=>','interfaceview::IV','Manager','NIL','NIL','Taste::Active_Interfaces','any','').
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','Manager','Taste::coordinates','"12516 35955 63920 57609"','').
isSubcomponent('interfaceview::IV','interfaceview','others','Manager','SYSTEM','interfaceview::IV::Manager.others','NIL','NIL','').
isImportDeclaration('interfaceview::IV','PUBLIC','interfaceview::FV::Manager','').
isImportDeclaration('interfaceview::IV','PUBLIC','Taste','').
isImportDeclaration('interfaceview::FV::Manager','PUBLIC','Taste','').
isImportDeclaration('interfaceview::IV','PUBLIC','DataView','').
isImportDeclaration('interfaceview::FV::Manager','PUBLIC','DataView','').
isImportDeclaration('interfaceview::FV::Manager','PUBLIC','TASTE_IV_Properties','').
isImportDeclaration('interfaceview::IV','PUBLIC','TASTE_IV_Properties','').
isComponentType('interfaceview::FV::GPS_Driver','PUBLIC','PI_gpsGetStatus','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::GPS_Driver','PUBLIC','PI_gpsGetStatus','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','GPS_Driver','PI_gpsGetStatus','PROVIDES','SUBPROGRAM','interfaceview::FV::GPS_Driver::PI_gpsGetStatus.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','PI_gpsGetStatus','NIL','NIL','Taste::Associated_Queue_Size','1','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_gpsGetStatus','Taste::coordinates','"85365 41483"','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_gpsGetStatus','Taste::RCMoperationKind','unprotected','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_gpsGetStatus','Taste::RCMperiod','0 ms','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_gpsGetStatus','Taste::Deadline','0 ms','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_gpsGetStatus','Taste::InterfaceName','"gpsGetStatus"','').
isFeature('PARAMETER','interfaceview::FV::GPS_Driver','PI_gpsGetStatus','status','OUT','NIL','DataView::GPS_Status','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','PI_gpsGetStatus','NIL','status','Taste::encoding','NATIVE','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','PI_gpsGetStatus','others','NIL','Compute_Execution_Time','0 ms .. 0 ms','').
isSubcomponent('interfaceview::IV','GPS_Driver','others','gpsGetStatus_impl','SUBPROGRAM','interfaceview::FV::GPS_Driver::PI_gpsGetStatus.others','NIL','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','GPS_Driver','others','OpToPICnx_gpsGetStatus_impl','gpsGetStatus_impl','->','PI_gpsGetStatus','NIL','').
isComponentType('interfaceview::FV::GPS_Driver','PUBLIC','PI_internalLoop','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::GPS_Driver','PUBLIC','PI_internalLoop','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','GPS_Driver','PI_internalLoop','PROVIDES','SUBPROGRAM','interfaceview::FV::GPS_Driver::PI_internalLoop.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','PI_internalLoop','NIL','NIL','Taste::Associated_Queue_Size','1','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_internalLoop','Taste::coordinates','"118997 28792"','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_internalLoop','Taste::RCMoperationKind','cyclic','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_internalLoop','Taste::RCMperiod','500 ms','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_internalLoop','Taste::Deadline','0 ms','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_internalLoop','Taste::InterfaceName','"internalLoop"','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','PI_internalLoop','others','NIL','Compute_Execution_Time','0 ms .. 0 ms','').
isSubcomponent('interfaceview::IV','GPS_Driver','others','internalLoop_impl','SUBPROGRAM','interfaceview::FV::GPS_Driver::PI_internalLoop.others','NIL','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','GPS_Driver','others','OpToPICnx_internalLoop_impl','internalLoop_impl','->','PI_internalLoop','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','interfaceview','others','LEON_UART_PI_txBytes_GPS_Driver_RI_txBytes','LEON_UART.PI_txBytes','->','GPS_Driver.RI_txBytes','NIL','').
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','LEON_UART_PI_txBytes_GPS_Driver_RI_txBytes','Taste::coordinates','"161890 60375 193047 60375 193047 60049 196496 60049"','').
isComponentType('interfaceview::FV::GPS_Driver','PUBLIC','RI_txBytes','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::GPS_Driver','PUBLIC','RI_txBytes','others','SUBPROGRAM','NIL','others','').
isImportDeclaration('interfaceview::IV','PUBLIC','interfaceview::FV::LEON_UART','').
isFeature('ACCESS','interfaceview::IV','GPS_Driver','RI_txBytes','REQUIRES','SUBPROGRAM','interfaceview::FV::LEON_UART::PI_txBytes.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','RI_txBytes','Taste::coordinates','"161890 60375"','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','RI_txBytes','Taste::RCMoperationKind','any','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','RI_txBytes','Taste::InterfaceName','"txBytes"','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','RI_txBytes','Taste::labelInheritance','"true"','').
isFeature('PARAMETER','interfaceview::FV::GPS_Driver','RI_txBytes','buf','IN','NIL','DataView::UART_String','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','RI_txBytes','NIL','buf','Taste::encoding','NATIVE','').
isFeature('PARAMETER','interfaceview::FV::GPS_Driver','RI_txBytes','len','IN','NIL','DataView::T_UInt32','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','RI_txBytes','NIL','len','Taste::encoding','NATIVE','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','interfaceview','others','LEON_UART_PI_rxBytes_GPS_Driver_RI_rxBytes','LEON_UART.PI_rxBytes','->','GPS_Driver.RI_rxBytes','NIL','').
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','LEON_UART_PI_rxBytes_GPS_Driver_RI_rxBytes','Taste::coordinates','"161890 39590 193047 39590 193047 40146 196496 40146"','').
isComponentType('interfaceview::FV::GPS_Driver','PUBLIC','RI_rxBytes','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::GPS_Driver','PUBLIC','RI_rxBytes','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','GPS_Driver','RI_rxBytes','REQUIRES','SUBPROGRAM','interfaceview::FV::LEON_UART::PI_rxBytes.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','RI_rxBytes','Taste::coordinates','"161890 39590"','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','RI_rxBytes','Taste::RCMoperationKind','any','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','RI_rxBytes','Taste::InterfaceName','"rxBytes"','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','RI_rxBytes','Taste::labelInheritance','"true"','').
isFeature('PARAMETER','interfaceview::FV::GPS_Driver','RI_rxBytes','buf','OUT','NIL','DataView::UART_String','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','RI_rxBytes','NIL','buf','Taste::encoding','NATIVE','').
isFeature('PARAMETER','interfaceview::FV::GPS_Driver','RI_rxBytes','len','IN','NIL','DataView::T_UInt32','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','RI_rxBytes','NIL','len','Taste::encoding','NATIVE','').
isPackage('interfaceview::FV::GPS_Driver','PUBLIC','').
isComponentType('interfaceview::IV','PUBLIC','GPS_Driver','SYSTEM','NIL','').
isComponentImplementation('interfaceview::IV','PUBLIC','GPS_Driver','others','SYSTEM','NIL','others','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','NIL','Source_Language','(C)','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','NIL','Taste::Active_Interfaces','any','').
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','GPS_Driver','Taste::coordinates','"85365 28792 161890 68737"','').
isSubcomponent('interfaceview::IV','interfaceview','others','GPS_Driver','SYSTEM','interfaceview::IV::GPS_Driver.others','NIL','NIL','').
isImportDeclaration('interfaceview::FV::GPS_Driver','PUBLIC','Taste','').
isImportDeclaration('interfaceview::FV::GPS_Driver','PUBLIC','DataView','').
isImportDeclaration('interfaceview::FV::GPS_Driver','PUBLIC','TASTE_IV_Properties','').
isSubcomponent('interfaceview::IV','LEON_UART','others','driver_configuration','DATA','DataView::LEON_UART_Configuration','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','others','driver_configuration','Taste::FS_Default_Value','"{console-id 1, baud 19200}"','').
isComponentType('interfaceview::FV::LEON_UART','PUBLIC','PI_txBytes','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::LEON_UART','PUBLIC','PI_txBytes','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','LEON_UART','PI_txBytes','PROVIDES','SUBPROGRAM','interfaceview::FV::LEON_UART::PI_txBytes.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::LEON_UART','PI_txBytes','NIL','NIL','Taste::Associated_Queue_Size','1','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_txBytes','Taste::coordinates','"196496 60049"','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_txBytes','Taste::RCMoperationKind','unprotected','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_txBytes','Taste::RCMperiod','0 ms','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_txBytes','Taste::Deadline','0 ms','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_txBytes','Taste::InterfaceName','"txBytes"','').
isFeature('PARAMETER','interfaceview::FV::LEON_UART','PI_txBytes','buf','IN','NIL','DataView::UART_String','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::LEON_UART','PI_txBytes','NIL','buf','Taste::encoding','NATIVE','').
isFeature('PARAMETER','interfaceview::FV::LEON_UART','PI_txBytes','len','IN','NIL','DataView::T_UInt32','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::LEON_UART','PI_txBytes','NIL','len','Taste::encoding','NATIVE','').
isProperty('NIL','=>','interfaceview::FV::LEON_UART','PI_txBytes','others','NIL','Compute_Execution_Time','0 ms .. 0 ms','').
isSubcomponent('interfaceview::IV','LEON_UART','others','txBytes_impl','SUBPROGRAM','interfaceview::FV::LEON_UART::PI_txBytes.others','NIL','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','LEON_UART','others','OpToPICnx_txBytes_impl','txBytes_impl','->','PI_txBytes','NIL','').
isComponentType('interfaceview::FV::LEON_UART','PUBLIC','PI_rxBytes','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::LEON_UART','PUBLIC','PI_rxBytes','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','LEON_UART','PI_rxBytes','PROVIDES','SUBPROGRAM','interfaceview::FV::LEON_UART::PI_rxBytes.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::LEON_UART','PI_rxBytes','NIL','NIL','Taste::Associated_Queue_Size','1','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_rxBytes','Taste::coordinates','"196496 40146"','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_rxBytes','Taste::RCMoperationKind','unprotected','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_rxBytes','Taste::RCMperiod','0 ms','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_rxBytes','Taste::Deadline','0 ms','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_rxBytes','Taste::InterfaceName','"rxBytes"','').
isFeature('PARAMETER','interfaceview::FV::LEON_UART','PI_rxBytes','buf','OUT','NIL','DataView::UART_String','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::LEON_UART','PI_rxBytes','NIL','buf','Taste::encoding','NATIVE','').
isFeature('PARAMETER','interfaceview::FV::LEON_UART','PI_rxBytes','len','IN','NIL','DataView::T_UInt32','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::LEON_UART','PI_rxBytes','NIL','len','Taste::encoding','NATIVE','').
isProperty('NIL','=>','interfaceview::FV::LEON_UART','PI_rxBytes','others','NIL','Compute_Execution_Time','0 ms .. 0 ms','').
isSubcomponent('interfaceview::IV','LEON_UART','others','rxBytes_impl','SUBPROGRAM','interfaceview::FV::LEON_UART::PI_rxBytes.others','NIL','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','LEON_UART','others','OpToPICnx_rxBytes_impl','rxBytes_impl','->','PI_rxBytes','NIL','').
isPackage('interfaceview::FV::LEON_UART','PUBLIC','').
isComponentType('interfaceview::IV','PUBLIC','LEON_UART','SYSTEM','NIL','').
isComponentImplementation('interfaceview::IV','PUBLIC','LEON_UART','others','SYSTEM','NIL','others','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','NIL','Source_Language','(Blackbox_device)','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','NIL','Taste::Active_Interfaces','any','').
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','LEON_UART','Taste::coordinates','"196496 35386 268690 70419"','').
isSubcomponent('interfaceview::IV','interfaceview','others','LEON_UART','SYSTEM','interfaceview::IV::LEON_UART.others','NIL','NIL','').
isImportDeclaration('interfaceview::FV::LEON_UART','PUBLIC','Taste','').
isImportDeclaration('interfaceview::FV::LEON_UART','PUBLIC','DataView','').
isImportDeclaration('interfaceview::FV::LEON_UART','PUBLIC','TASTE_IV_Properties','').
isSubcomponent('interfaceview::IV','SystemInit','others','console_configuration','DATA','DataView::LEON_UART_Configuration','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','SystemInit','others','console_configuration','Taste::FS_Default_Value','"{console-id 0, baud 115200}"','').
isComponentType('interfaceview::FV::SystemInit','PUBLIC','PI_dummy','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::SystemInit','PUBLIC','PI_dummy','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','SystemInit','PI_dummy','PROVIDES','SUBPROGRAM','interfaceview::FV::SystemInit::PI_dummy.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::SystemInit','PI_dummy','NIL','NIL','Taste::Associated_Queue_Size','1','').
isProperty('NIL','=>','interfaceview::IV','SystemInit','NIL','PI_dummy','Taste::coordinates','"238062 20756"','').
isProperty('NIL','=>','interfaceview::IV','SystemInit','NIL','PI_dummy','Taste::RCMoperationKind','unprotected','').
isProperty('NIL','=>','interfaceview::IV','SystemInit','NIL','PI_dummy','Taste::RCMperiod','0 ms','').
isProperty('NIL','=>','interfaceview::IV','SystemInit','NIL','PI_dummy','Taste::Deadline','0 ms','').
isProperty('NIL','=>','interfaceview::IV','SystemInit','NIL','PI_dummy','Taste::InterfaceName','"dummy"','').
isProperty('NIL','=>','interfaceview::FV::SystemInit','PI_dummy','others','NIL','Compute_Execution_Time','0 ms .. 0 ms','').
isSubcomponent('interfaceview::IV','SystemInit','others','dummy_impl','SUBPROGRAM','interfaceview::FV::SystemInit::PI_dummy.others','NIL','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','SystemInit','others','OpToPICnx_dummy_impl','dummy_impl','->','PI_dummy','NIL','').
isPackage('interfaceview::FV::SystemInit','PUBLIC','').
isComponentType('interfaceview::IV','PUBLIC','SystemInit','SYSTEM','NIL','').
isComponentImplementation('interfaceview::IV','PUBLIC','SystemInit','others','SYSTEM','NIL','others','').
isProperty('NIL','=>','interfaceview::IV','SystemInit','NIL','NIL','Source_Language','(C)','').
isProperty('NIL','=>','interfaceview::IV','SystemInit','NIL','NIL','Taste::Active_Interfaces','any','').
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','SystemInit','Taste::coordinates','"215458 5538 250147 20756"','').
isSubcomponent('interfaceview::IV','interfaceview','others','SystemInit','SYSTEM','interfaceview::IV::SystemInit.others','NIL','NIL','').
isImportDeclaration('interfaceview::IV','PUBLIC','interfaceview::FV::SystemInit','').
isImportDeclaration('interfaceview::FV::SystemInit','PUBLIC','Taste','').
isImportDeclaration('interfaceview::FV::SystemInit','PUBLIC','DataView','').
isImportDeclaration('interfaceview::FV::SystemInit','PUBLIC','TASTE_IV_Properties','').
isProperty('_','_','_','_','_','_','LMP::Unparser_ID_Case','AsIs','').
isProperty('_','_','_','_','_','_','LMP::Unparser_Insert_Header','Yes','').
isPackage('interfaceview::IV','PUBLIC','').
isProperty('NIL','=>','interfaceview::IV','NIL','NIL','NIL','Taste::dataView','("DataView")','').
isProperty('NIL','=>','interfaceview::IV','NIL','NIL','NIL','Taste::dataViewPath','("DataView.aadl")','').
isVersion('AADL2.1','TASTE type interfaceview','','generated code: do not edit').
isProperty('NIL','=>','interfaceview::IV','NIL','NIL','NIL','Taste::coordinates','"0 0 297000 210000"','').
isProperty('NIL','=>','interfaceview::IV','NIL','NIL','NIL','Taste::version','"1.3"','').
isComponentType('interfaceview::IV','PUBLIC','interfaceview','SYSTEM','NIL','').
isComponentImplementation('interfaceview::IV','PUBLIC','interfaceview','others','SYSTEM','NIL','others','').

