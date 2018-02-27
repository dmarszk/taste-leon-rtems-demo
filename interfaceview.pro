isSubcomponent('interfaceview::IV','Manager','others','extraCompileFlags','DATA','DataView::TASTE_Directive','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','Manager','others','extraCompileFlags','Taste::FS_Default_Value','"compiler-option:""-I $PRJ_DIR/libs/install/include/"""','').
isComponentType('interfaceview::FV::Manager','PUBLIC','PI_tick','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::Manager','PUBLIC','PI_tick','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','Manager','PI_tick','PROVIDES','SUBPROGRAM','interfaceview::FV::Manager::PI_tick.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::Manager','PI_tick','NIL','NIL','Taste::Associated_Queue_Size','1','').
isProperty('NIL','=>','interfaceview::IV','Manager','NIL','PI_tick','Taste::coordinates','"46306 56545"','').
isProperty('NIL','=>','interfaceview::IV','Manager','NIL','PI_tick','Taste::RCMoperationKind','cyclic','').
isProperty('NIL','=>','interfaceview::IV','Manager','NIL','PI_tick','Taste::RCMperiod','1000 ms','').
isProperty('NIL','=>','interfaceview::IV','Manager','NIL','PI_tick','Taste::Deadline','0 ms','').
isProperty('NIL','=>','interfaceview::IV','Manager','NIL','PI_tick','Taste::InterfaceName','"tick"','').
isProperty('NIL','=>','interfaceview::FV::Manager','PI_tick','others','NIL','Compute_Execution_Time','0 ms .. 0 ms','').
isSubcomponent('interfaceview::IV','Manager','others','tick_impl','SUBPROGRAM','interfaceview::FV::Manager::PI_tick.others','NIL','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','Manager','others','OpToPICnx_tick_impl','tick_impl','->','PI_tick','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','interfaceview','others','GPS_Driver_PI_gpsGetStatus_Manager_RI_gpsGetStatus','GPS_Driver.PI_gpsGetStatus','->','Manager.RI_gpsGetStatus','NIL','').
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','GPS_Driver_PI_gpsGetStatus_Manager_RI_gpsGetStatus','Taste::coordinates','"70410 73361 74642 73361 74642 64758 98624 64758"','').
isComponentType('interfaceview::FV::Manager','PUBLIC','RI_gpsGetStatus','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::Manager','PUBLIC','RI_gpsGetStatus','others','SUBPROGRAM','NIL','others','').
isImportDeclaration('interfaceview::IV','PUBLIC','interfaceview::FV::GPS_Driver','').
isFeature('ACCESS','interfaceview::IV','Manager','RI_gpsGetStatus','REQUIRES','SUBPROGRAM','interfaceview::FV::GPS_Driver::PI_gpsGetStatus.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','Manager','NIL','RI_gpsGetStatus','Taste::coordinates','"70410 73361"','').
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
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','Manager','Taste::coordinates','"31707 56545 70410 78199"','').
isSubcomponent('interfaceview::IV','interfaceview','others','Manager','SYSTEM','interfaceview::IV::Manager.others','NIL','NIL','').
isImportDeclaration('interfaceview::IV','PUBLIC','interfaceview::FV::Manager','').
isImportDeclaration('interfaceview::IV','PUBLIC','Taste','').
isImportDeclaration('interfaceview::FV::Manager','PUBLIC','Taste','').
isImportDeclaration('interfaceview::IV','PUBLIC','DataView','').
isImportDeclaration('interfaceview::FV::Manager','PUBLIC','DataView','').
isImportDeclaration('interfaceview::FV::Manager','PUBLIC','TASTE_IV_Properties','').
isImportDeclaration('interfaceview::IV','PUBLIC','TASTE_IV_Properties','').
isSubcomponent('interfaceview::IV','GPS_Driver','others','extraCompileFlags','DATA','DataView::TASTE_Directive','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','others','extraCompileFlags','Taste::FS_Default_Value','"compiler-option:""-I $PRJ_DIR/libs/install/include/"""','').
isComponentType('interfaceview::FV::GPS_Driver','PUBLIC','PI_gpsGetStatus','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::GPS_Driver','PUBLIC','PI_gpsGetStatus','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','GPS_Driver','PI_gpsGetStatus','PROVIDES','SUBPROGRAM','interfaceview::FV::GPS_Driver::PI_gpsGetStatus.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','PI_gpsGetStatus','NIL','NIL','Taste::Associated_Queue_Size','1','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_gpsGetStatus','Taste::coordinates','"98624 64758"','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_gpsGetStatus','Taste::RCMoperationKind','unprotected','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_gpsGetStatus','Taste::RCMperiod','0 ms','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_gpsGetStatus','Taste::Deadline','0 ms','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_gpsGetStatus','Taste::InterfaceName','"gpsGetStatus"','').
isFeature('PARAMETER','interfaceview::FV::GPS_Driver','PI_gpsGetStatus','status','OUT','NIL','DataView::GPS_Status','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','PI_gpsGetStatus','NIL','status','Taste::encoding','NATIVE','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','PI_gpsGetStatus','others','NIL','Compute_Execution_Time','0 ms .. 0 ms','').
isSubcomponent('interfaceview::IV','GPS_Driver','others','gpsGetStatus_impl','SUBPROGRAM','interfaceview::FV::GPS_Driver::PI_gpsGetStatus.others','NIL','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','GPS_Driver','others','OpToPICnx_gpsGetStatus_impl','gpsGetStatus_impl','->','PI_gpsGetStatus','NIL','').
isComponentType('interfaceview::FV::GPS_Driver','PUBLIC','PI_tick','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::GPS_Driver','PUBLIC','PI_tick','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','GPS_Driver','PI_tick','PROVIDES','SUBPROGRAM','interfaceview::FV::GPS_Driver::PI_tick.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','PI_tick','NIL','NIL','Taste::Associated_Queue_Size','1','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_tick','Taste::coordinates','"122802 52067"','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_tick','Taste::RCMoperationKind','cyclic','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_tick','Taste::RCMperiod','500 ms','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_tick','Taste::Deadline','0 ms','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_tick','Taste::InterfaceName','"tick"','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','PI_tick','others','NIL','Compute_Execution_Time','0 ms .. 0 ms','').
isSubcomponent('interfaceview::IV','GPS_Driver','others','tick_impl','SUBPROGRAM','interfaceview::FV::GPS_Driver::PI_tick.others','NIL','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','GPS_Driver','others','OpToPICnx_tick_impl','tick_impl','->','PI_tick','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','interfaceview','others','GPS_Driver_PI_rxUartBytes_LEON_UART_RI_rxUartBytes','GPS_Driver.PI_rxUartBytes','->','LEON_UART.RI_rxUartBytes','NIL','').
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','GPS_Driver_PI_rxUartBytes_LEON_UART_RI_rxUartBytes','Taste::coordinates','"200076 65599 182885 65599 182885 67733 165695 67733"','').
isComponentType('interfaceview::FV::GPS_Driver','PUBLIC','PI_rxUartBytes','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::GPS_Driver','PUBLIC','PI_rxUartBytes','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','GPS_Driver','PI_rxUartBytes','PROVIDES','SUBPROGRAM','interfaceview::FV::GPS_Driver::PI_rxUartBytes.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','PI_rxUartBytes','NIL','NIL','Taste::Associated_Queue_Size','1','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_rxUartBytes','Taste::coordinates','"165695 67733"','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_rxUartBytes','Taste::RCMoperationKind','unprotected','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_rxUartBytes','Taste::RCMperiod','0 ms','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_rxUartBytes','Taste::Deadline','0 ms','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','PI_rxUartBytes','Taste::InterfaceName','"rxUartBytes"','').
isFeature('PARAMETER','interfaceview::FV::GPS_Driver','PI_rxUartBytes','buf','IN','NIL','DataView::UART_String','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','PI_rxUartBytes','NIL','buf','Taste::encoding','NATIVE','').
isFeature('PARAMETER','interfaceview::FV::GPS_Driver','PI_rxUartBytes','len','IN','NIL','DataView::T_UInt32','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','PI_rxUartBytes','NIL','len','Taste::encoding','NATIVE','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','PI_rxUartBytes','others','NIL','Compute_Execution_Time','0 ms .. 0 ms','').
isSubcomponent('interfaceview::IV','GPS_Driver','others','rxUartBytes_impl','SUBPROGRAM','interfaceview::FV::GPS_Driver::PI_rxUartBytes.others','NIL','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','GPS_Driver','others','OpToPICnx_rxUartBytes_impl','rxUartBytes_impl','->','PI_rxUartBytes','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','interfaceview','others','LEON_UART_PI_txUartBytes_GPS_Driver_RI_txUartBytes','LEON_UART.PI_txUartBytes','->','GPS_Driver.RI_txUartBytes','NIL','').
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','LEON_UART_PI_txUartBytes_GPS_Driver_RI_txUartBytes','Taste::coordinates','"165695 83650 193047 83650 193047 81310 200076 81310"','').
isComponentType('interfaceview::FV::GPS_Driver','PUBLIC','RI_txUartBytes','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::GPS_Driver','PUBLIC','RI_txUartBytes','others','SUBPROGRAM','NIL','others','').
isImportDeclaration('interfaceview::IV','PUBLIC','interfaceview::FV::LEON_UART','').
isFeature('ACCESS','interfaceview::IV','GPS_Driver','RI_txUartBytes','REQUIRES','SUBPROGRAM','interfaceview::FV::LEON_UART::PI_txUartBytes.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','RI_txUartBytes','Taste::coordinates','"165695 83650"','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','RI_txUartBytes','Taste::RCMoperationKind','any','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','RI_txUartBytes','Taste::InterfaceName','"txUartBytes"','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','RI_txUartBytes','Taste::labelInheritance','"true"','').
isFeature('PARAMETER','interfaceview::FV::GPS_Driver','RI_txUartBytes','buf','IN','NIL','DataView::UART_String','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','RI_txUartBytes','NIL','buf','Taste::encoding','NATIVE','').
isFeature('PARAMETER','interfaceview::FV::GPS_Driver','RI_txUartBytes','len','IN','NIL','DataView::T_UInt32','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::GPS_Driver','RI_txUartBytes','NIL','len','Taste::encoding','NATIVE','').
isPackage('interfaceview::FV::GPS_Driver','PUBLIC','').
isComponentType('interfaceview::IV','PUBLIC','GPS_Driver','SYSTEM','NIL','').
isComponentImplementation('interfaceview::IV','PUBLIC','GPS_Driver','others','SYSTEM','NIL','others','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','NIL','Source_Language','(C)','').
isProperty('NIL','=>','interfaceview::IV','GPS_Driver','NIL','NIL','Taste::Active_Interfaces','any','').
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','GPS_Driver','Taste::coordinates','"98624 52067 165695 88690"','').
isSubcomponent('interfaceview::IV','interfaceview','others','GPS_Driver','SYSTEM','interfaceview::IV::GPS_Driver.others','NIL','NIL','').
isImportDeclaration('interfaceview::FV::GPS_Driver','PUBLIC','Taste','').
isImportDeclaration('interfaceview::FV::GPS_Driver','PUBLIC','DataView','').
isImportDeclaration('interfaceview::FV::GPS_Driver','PUBLIC','TASTE_IV_Properties','').
isSubcomponent('interfaceview::IV','LEON_UART','others','driver_configuration','DATA','DataView::LEON_UART_Configuration','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','others','driver_configuration','Taste::FS_Default_Value','"{console-id 1, baud 9600}"','').
isSubcomponent('interfaceview::IV','LEON_UART','others','extraCompileFlags','DATA','DataView::TASTE_Directive','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','others','extraCompileFlags','Taste::FS_Default_Value','"compiler-option:""-I $PRJ_DIR/libs/install/include/"""','').
isComponentType('interfaceview::FV::LEON_UART','PUBLIC','PI_txUartBytes','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::LEON_UART','PUBLIC','PI_txUartBytes','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','LEON_UART','PI_txUartBytes','PROVIDES','SUBPROGRAM','interfaceview::FV::LEON_UART::PI_txUartBytes.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::LEON_UART','PI_txUartBytes','NIL','NIL','Taste::Associated_Queue_Size','1','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_txUartBytes','Taste::coordinates','"200076 81310"','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_txUartBytes','Taste::RCMoperationKind','unprotected','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_txUartBytes','Taste::RCMperiod','0 ms','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_txUartBytes','Taste::Deadline','0 ms','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_txUartBytes','Taste::InterfaceName','"txUartBytes"','').
isFeature('PARAMETER','interfaceview::FV::LEON_UART','PI_txUartBytes','buf','IN','NIL','DataView::UART_String','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::LEON_UART','PI_txUartBytes','NIL','buf','Taste::encoding','NATIVE','').
isFeature('PARAMETER','interfaceview::FV::LEON_UART','PI_txUartBytes','len','IN','NIL','DataView::T_UInt32','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::LEON_UART','PI_txUartBytes','NIL','len','Taste::encoding','NATIVE','').
isProperty('NIL','=>','interfaceview::FV::LEON_UART','PI_txUartBytes','others','NIL','Compute_Execution_Time','0 ms .. 0 ms','').
isSubcomponent('interfaceview::IV','LEON_UART','others','txUartBytes_impl','SUBPROGRAM','interfaceview::FV::LEON_UART::PI_txUartBytes.others','NIL','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','LEON_UART','others','OpToPICnx_txUartBytes_impl','txUartBytes_impl','->','PI_txUartBytes','NIL','').
isComponentType('interfaceview::FV::LEON_UART','PUBLIC','PI_tick','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::LEON_UART','PUBLIC','PI_tick','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','LEON_UART','PI_tick','PROVIDES','SUBPROGRAM','interfaceview::FV::LEON_UART::PI_tick.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::LEON_UART','PI_tick','NIL','NIL','Taste::Associated_Queue_Size','1','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_tick','Taste::coordinates','"231408 56647"','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_tick','Taste::RCMoperationKind','cyclic','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_tick','Taste::RCMperiod','20 ms','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_tick','Taste::Deadline','0 ms','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','PI_tick','Taste::InterfaceName','"tick"','').
isProperty('NIL','=>','interfaceview::FV::LEON_UART','PI_tick','others','NIL','Compute_Execution_Time','0 ms .. 0 ms','').
isSubcomponent('interfaceview::IV','LEON_UART','others','tick_impl','SUBPROGRAM','interfaceview::FV::LEON_UART::PI_tick.others','NIL','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','LEON_UART','others','OpToPICnx_tick_impl','tick_impl','->','PI_tick','NIL','').
isComponentType('interfaceview::FV::LEON_UART','PUBLIC','RI_rxUartBytes','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::LEON_UART','PUBLIC','RI_rxUartBytes','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','LEON_UART','RI_rxUartBytes','REQUIRES','SUBPROGRAM','interfaceview::FV::GPS_Driver::PI_rxUartBytes.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','RI_rxUartBytes','Taste::coordinates','"200076 65599"','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','RI_rxUartBytes','Taste::RCMoperationKind','any','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','RI_rxUartBytes','Taste::InterfaceName','"rxUartBytes"','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','RI_rxUartBytes','Taste::labelInheritance','"true"','').
isFeature('PARAMETER','interfaceview::FV::LEON_UART','RI_rxUartBytes','buf','IN','NIL','DataView::UART_String','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::LEON_UART','RI_rxUartBytes','NIL','buf','Taste::encoding','NATIVE','').
isFeature('PARAMETER','interfaceview::FV::LEON_UART','RI_rxUartBytes','len','IN','NIL','DataView::T_UInt32','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::LEON_UART','RI_rxUartBytes','NIL','len','Taste::encoding','NATIVE','').
isPackage('interfaceview::FV::LEON_UART','PUBLIC','').
isComponentType('interfaceview::IV','PUBLIC','LEON_UART','SYSTEM','NIL','').
isComponentImplementation('interfaceview::IV','PUBLIC','LEON_UART','others','SYSTEM','NIL','others','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','NIL','Source_Language','(Blackbox_device)','').
isProperty('NIL','=>','interfaceview::IV','LEON_UART','NIL','NIL','Taste::Active_Interfaces','any','').
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','LEON_UART','Taste::coordinates','"200076 56647 257075 88243"','').
isSubcomponent('interfaceview::IV','interfaceview','others','LEON_UART','SYSTEM','interfaceview::IV::LEON_UART.others','NIL','NIL','').
isImportDeclaration('interfaceview::FV::LEON_UART','PUBLIC','Taste','').
isImportDeclaration('interfaceview::FV::LEON_UART','PUBLIC','DataView','').
isImportDeclaration('interfaceview::FV::LEON_UART','PUBLIC','TASTE_IV_Properties','').
isSubcomponent('interfaceview::IV','SystemInit','others','console_configuration','DATA','DataView::LEON_UART_Configuration','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','SystemInit','others','console_configuration','Taste::FS_Default_Value','"{console-id 0, baud 115200}"','').
isSubcomponent('interfaceview::IV','SystemInit','others','extraCompileFlags','DATA','DataView::TASTE_Directive','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','SystemInit','others','extraCompileFlags','Taste::FS_Default_Value','"compiler-option:""-I $PRJ_DIR/libs/install/include/"""','').
isSubcomponent('interfaceview::IV','SystemInit','others','extraLinkFlags','DATA','DataView::TASTE_Directive','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','SystemInit','others','extraLinkFlags','Taste::FS_Default_Value','"linker-option:""-L $PRJ_DIR/libs/install/lib/ -lutil"""','').
isComponentType('interfaceview::FV::SystemInit','PUBLIC','PI_dummy','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::SystemInit','PUBLIC','PI_dummy','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','SystemInit','PI_dummy','PROVIDES','SUBPROGRAM','interfaceview::FV::SystemInit::PI_dummy.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::SystemInit','PI_dummy','NIL','NIL','Taste::Associated_Queue_Size','1','').
isProperty('NIL','=>','interfaceview::IV','SystemInit','NIL','PI_dummy','Taste::coordinates','"238062 20532"','').
isProperty('NIL','=>','interfaceview::IV','SystemInit','NIL','PI_dummy','Taste::RCMoperationKind','cyclic','').
isProperty('NIL','=>','interfaceview::IV','SystemInit','NIL','PI_dummy','Taste::RCMperiod','100000 ms','').
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
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','SystemInit','Taste::coordinates','"215458 5314 250147 20532"','').
isSubcomponent('interfaceview::IV','interfaceview','others','SystemInit','SYSTEM','interfaceview::IV::SystemInit.others','NIL','NIL','').
isImportDeclaration('interfaceview::IV','PUBLIC','interfaceview::FV::SystemInit','').
isImportDeclaration('interfaceview::FV::SystemInit','PUBLIC','Taste','').
isImportDeclaration('interfaceview::FV::SystemInit','PUBLIC','DataView','').
isImportDeclaration('interfaceview::FV::SystemInit','PUBLIC','TASTE_IV_Properties','').
isSubcomponent('interfaceview::IV','LEON_OC_CAN','others','extraCompileFlags','DATA','DataView::TASTE_Directive','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','LEON_OC_CAN','others','extraCompileFlags','Taste::FS_Default_Value','"compiler-option:""-I $PRJ_DIR/libs/install/include/"""','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','interfaceview','others','LEON_OC_CAN_PI_txCanFrame_CAN_Protocol_Impl_RI_txCanFrame','LEON_OC_CAN.PI_txCanFrame','->','CAN_Protocol_Impl.RI_txCanFrame','NIL','').
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','LEON_OC_CAN_PI_txCanFrame_CAN_Protocol_Impl_RI_txCanFrame','Taste::coordinates','"163832 131294 180469 131294 180469 132750 199878 132750"','').
isComponentType('interfaceview::FV::LEON_OC_CAN','PUBLIC','PI_txCanFrame','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::LEON_OC_CAN','PUBLIC','PI_txCanFrame','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','LEON_OC_CAN','PI_txCanFrame','PROVIDES','SUBPROGRAM','interfaceview::FV::LEON_OC_CAN::PI_txCanFrame.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::LEON_OC_CAN','PI_txCanFrame','NIL','NIL','Taste::Associated_Queue_Size','1','').
isProperty('NIL','=>','interfaceview::IV','LEON_OC_CAN','NIL','PI_txCanFrame','Taste::coordinates','"199878 132750"','').
isProperty('NIL','=>','interfaceview::IV','LEON_OC_CAN','NIL','PI_txCanFrame','Taste::RCMoperationKind','unprotected','').
isProperty('NIL','=>','interfaceview::IV','LEON_OC_CAN','NIL','PI_txCanFrame','Taste::RCMperiod','0 ms','').
isProperty('NIL','=>','interfaceview::IV','LEON_OC_CAN','NIL','PI_txCanFrame','Taste::Deadline','0 ms','').
isProperty('NIL','=>','interfaceview::IV','LEON_OC_CAN','NIL','PI_txCanFrame','Taste::InterfaceName','"txCanFrame"','').
isFeature('PARAMETER','interfaceview::FV::LEON_OC_CAN','PI_txCanFrame','frame','IN','NIL','DataView::CAN_Frame','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::LEON_OC_CAN','PI_txCanFrame','NIL','frame','Taste::encoding','NATIVE','').
isProperty('NIL','=>','interfaceview::FV::LEON_OC_CAN','PI_txCanFrame','others','NIL','Compute_Execution_Time','0 ms .. 0 ms','').
isSubcomponent('interfaceview::IV','LEON_OC_CAN','others','txCanFrame_impl','SUBPROGRAM','interfaceview::FV::LEON_OC_CAN::PI_txCanFrame.others','NIL','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','LEON_OC_CAN','others','OpToPICnx_txCanFrame_impl','txCanFrame_impl','->','PI_txCanFrame','NIL','').
isComponentType('interfaceview::FV::LEON_OC_CAN','PUBLIC','PI_tick','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::LEON_OC_CAN','PUBLIC','PI_tick','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','LEON_OC_CAN','PI_tick','PROVIDES','SUBPROGRAM','interfaceview::FV::LEON_OC_CAN::PI_tick.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::LEON_OC_CAN','PI_tick','NIL','NIL','Taste::Associated_Queue_Size','1','').
isProperty('NIL','=>','interfaceview::IV','LEON_OC_CAN','NIL','PI_tick','Taste::coordinates','"230900 107368"','').
isProperty('NIL','=>','interfaceview::IV','LEON_OC_CAN','NIL','PI_tick','Taste::RCMoperationKind','cyclic','').
isProperty('NIL','=>','interfaceview::IV','LEON_OC_CAN','NIL','PI_tick','Taste::RCMperiod','4 ms','').
isProperty('NIL','=>','interfaceview::IV','LEON_OC_CAN','NIL','PI_tick','Taste::Deadline','0 ms','').
isProperty('NIL','=>','interfaceview::IV','LEON_OC_CAN','NIL','PI_tick','Taste::InterfaceName','"tick"','').
isProperty('NIL','=>','interfaceview::FV::LEON_OC_CAN','PI_tick','others','NIL','Compute_Execution_Time','0 ms .. 0 ms','').
isSubcomponent('interfaceview::IV','LEON_OC_CAN','others','tick_impl','SUBPROGRAM','interfaceview::FV::LEON_OC_CAN::PI_tick.others','NIL','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','LEON_OC_CAN','others','OpToPICnx_tick_impl','tick_impl','->','PI_tick','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','interfaceview','others','CAN_Protocol_Impl_PI_rxCanFrame_LEON_OC_CAN_RI_rxCanFrame','CAN_Protocol_Impl.PI_rxCanFrame','->','LEON_OC_CAN.RI_rxCanFrame','NIL','').
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','CAN_Protocol_Impl_PI_rxCanFrame_LEON_OC_CAN_RI_rxCanFrame','Taste::coordinates','"199878 118558 180469 118558 180469 118761 163832 118761"','').
isComponentType('interfaceview::FV::LEON_OC_CAN','PUBLIC','RI_rxCanFrame','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::LEON_OC_CAN','PUBLIC','RI_rxCanFrame','others','SUBPROGRAM','NIL','others','').
isImportDeclaration('interfaceview::IV','PUBLIC','interfaceview::FV::CAN_Protocol_Impl','').
isFeature('ACCESS','interfaceview::IV','LEON_OC_CAN','RI_rxCanFrame','REQUIRES','SUBPROGRAM','interfaceview::FV::CAN_Protocol_Impl::PI_rxCanFrame.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','LEON_OC_CAN','NIL','RI_rxCanFrame','Taste::coordinates','"199878 118558"','').
isProperty('NIL','=>','interfaceview::IV','LEON_OC_CAN','NIL','RI_rxCanFrame','Taste::RCMoperationKind','any','').
isProperty('NIL','=>','interfaceview::IV','LEON_OC_CAN','NIL','RI_rxCanFrame','Taste::InterfaceName','"rxCanFrame"','').
isProperty('NIL','=>','interfaceview::IV','LEON_OC_CAN','NIL','RI_rxCanFrame','Taste::labelInheritance','"true"','').
isFeature('PARAMETER','interfaceview::FV::LEON_OC_CAN','RI_rxCanFrame','frame','IN','NIL','DataView::CAN_Frame','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::LEON_OC_CAN','RI_rxCanFrame','NIL','frame','Taste::encoding','NATIVE','').
isPackage('interfaceview::FV::LEON_OC_CAN','PUBLIC','').
isComponentType('interfaceview::IV','PUBLIC','LEON_OC_CAN','SYSTEM','NIL','').
isComponentImplementation('interfaceview::IV','PUBLIC','LEON_OC_CAN','others','SYSTEM','NIL','others','').
isProperty('NIL','=>','interfaceview::IV','LEON_OC_CAN','NIL','NIL','Source_Language','(Blackbox_device)','').
isProperty('NIL','=>','interfaceview::IV','LEON_OC_CAN','NIL','NIL','Taste::Active_Interfaces','any','').
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','LEON_OC_CAN','Taste::coordinates','"199878 107368 257757 141833"','').
isSubcomponent('interfaceview::IV','interfaceview','others','LEON_OC_CAN','SYSTEM','interfaceview::IV::LEON_OC_CAN.others','NIL','NIL','').
isImportDeclaration('interfaceview::IV','PUBLIC','interfaceview::FV::LEON_OC_CAN','').
isImportDeclaration('interfaceview::FV::LEON_OC_CAN','PUBLIC','Taste','').
isImportDeclaration('interfaceview::FV::LEON_OC_CAN','PUBLIC','DataView','').
isImportDeclaration('interfaceview::FV::LEON_OC_CAN','PUBLIC','TASTE_IV_Properties','').
isSubcomponent('interfaceview::IV','CAN_Protocol_Impl','others','extraCompileFlags','DATA','DataView::TASTE_Directive','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','CAN_Protocol_Impl','others','extraCompileFlags','Taste::FS_Default_Value','"compiler-option:""-I $PRJ_DIR/libs/install/include/"""','').
isComponentType('interfaceview::FV::CAN_Protocol_Impl','PUBLIC','PI_rxCanFrame','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::CAN_Protocol_Impl','PUBLIC','PI_rxCanFrame','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','CAN_Protocol_Impl','PI_rxCanFrame','PROVIDES','SUBPROGRAM','interfaceview::FV::CAN_Protocol_Impl::PI_rxCanFrame.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::CAN_Protocol_Impl','PI_rxCanFrame','NIL','NIL','Taste::Associated_Queue_Size','1','').
isProperty('NIL','=>','interfaceview::IV','CAN_Protocol_Impl','NIL','PI_rxCanFrame','Taste::coordinates','"163832 118761"','').
isProperty('NIL','=>','interfaceview::IV','CAN_Protocol_Impl','NIL','PI_rxCanFrame','Taste::RCMoperationKind','unprotected','').
isProperty('NIL','=>','interfaceview::IV','CAN_Protocol_Impl','NIL','PI_rxCanFrame','Taste::RCMperiod','0 ms','').
isProperty('NIL','=>','interfaceview::IV','CAN_Protocol_Impl','NIL','PI_rxCanFrame','Taste::Deadline','0 ms','').
isProperty('NIL','=>','interfaceview::IV','CAN_Protocol_Impl','NIL','PI_rxCanFrame','Taste::InterfaceName','"rxCanFrame"','').
isFeature('PARAMETER','interfaceview::FV::CAN_Protocol_Impl','PI_rxCanFrame','frame','IN','NIL','DataView::CAN_Frame','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::CAN_Protocol_Impl','PI_rxCanFrame','NIL','frame','Taste::encoding','NATIVE','').
isProperty('NIL','=>','interfaceview::FV::CAN_Protocol_Impl','PI_rxCanFrame','others','NIL','Compute_Execution_Time','0 ms .. 0 ms','').
isSubcomponent('interfaceview::IV','CAN_Protocol_Impl','others','rxCanFrame_impl','SUBPROGRAM','interfaceview::FV::CAN_Protocol_Impl::PI_rxCanFrame.others','NIL','NIL','').
isConnection('SUBPROGRAM ACCESS','interfaceview::IV','CAN_Protocol_Impl','others','OpToPICnx_rxCanFrame_impl','rxCanFrame_impl','->','PI_rxCanFrame','NIL','').
isComponentType('interfaceview::FV::CAN_Protocol_Impl','PUBLIC','RI_txCanFrame','SUBPROGRAM','NIL','').
isComponentImplementation('interfaceview::FV::CAN_Protocol_Impl','PUBLIC','RI_txCanFrame','others','SUBPROGRAM','NIL','others','').
isFeature('ACCESS','interfaceview::IV','CAN_Protocol_Impl','RI_txCanFrame','REQUIRES','SUBPROGRAM','interfaceview::FV::LEON_OC_CAN::PI_txCanFrame.others','NIL','NIL','').
isProperty('NIL','=>','interfaceview::IV','CAN_Protocol_Impl','NIL','RI_txCanFrame','Taste::coordinates','"163832 131294"','').
isProperty('NIL','=>','interfaceview::IV','CAN_Protocol_Impl','NIL','RI_txCanFrame','Taste::RCMoperationKind','any','').
isProperty('NIL','=>','interfaceview::IV','CAN_Protocol_Impl','NIL','RI_txCanFrame','Taste::InterfaceName','"txCanFrame"','').
isProperty('NIL','=>','interfaceview::IV','CAN_Protocol_Impl','NIL','RI_txCanFrame','Taste::labelInheritance','"true"','').
isFeature('PARAMETER','interfaceview::FV::CAN_Protocol_Impl','RI_txCanFrame','frame','IN','NIL','DataView::CAN_Frame','NIL','NIL','').
isProperty('NIL','=>','interfaceview::FV::CAN_Protocol_Impl','RI_txCanFrame','NIL','frame','Taste::encoding','NATIVE','').
isPackage('interfaceview::FV::CAN_Protocol_Impl','PUBLIC','').
isComponentType('interfaceview::IV','PUBLIC','CAN_Protocol_Impl','SYSTEM','NIL','').
isComponentImplementation('interfaceview::IV','PUBLIC','CAN_Protocol_Impl','others','SYSTEM','NIL','others','').
isProperty('NIL','=>','interfaceview::IV','CAN_Protocol_Impl','NIL','NIL','Source_Language','(C)','').
isProperty('NIL','=>','interfaceview::IV','CAN_Protocol_Impl','NIL','NIL','Taste::Active_Interfaces','any','').
isProperty('NIL','=>','interfaceview::IV','interfaceview','others','CAN_Protocol_Impl','Taste::coordinates','"102287 112047 163832 137560"','').
isSubcomponent('interfaceview::IV','interfaceview','others','CAN_Protocol_Impl','SYSTEM','interfaceview::IV::CAN_Protocol_Impl.others','NIL','NIL','').
isImportDeclaration('interfaceview::FV::CAN_Protocol_Impl','PUBLIC','Taste','').
isImportDeclaration('interfaceview::FV::CAN_Protocol_Impl','PUBLIC','DataView','').
isImportDeclaration('interfaceview::FV::CAN_Protocol_Impl','PUBLIC','TASTE_IV_Properties','').
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

