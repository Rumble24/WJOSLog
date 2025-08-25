//
//  WJOSLog.swift
//  SiwftTemp
//
//  Created by jingwei on 2025/8/25.
//

import UIKit
import os.log

class WJOSLog {
    static let shared = WJOSLog()
    
    // MARK: 打开控制台APP, 在左侧有个设备列表, 找到你要调试的设备, 然后在右上角输入category的参数值, 我这里用的是network_vpn
    // 可以看到我们打印的日志

    private lazy  var log = OSLog(subsystem: "com.yourcompany.networkextension", category: "network_vpn")
    
    // TODO: 只能查看mac 进程 的程序
    
    func oslogTest() {
        os_log("[default]", log: log, type: .default)
        os_log("[info]", log: log, type: .info)
        os_log("[debug]", log: log, type: .debug)
        os_log("[error]", log: log, type: .error)
        os_log("[fault]", log: log, type: .fault)
    }
    
    func log(_ message: StaticString, type: OSLogType = .default) {
        os_log(message, log: log, type: type)
    }
    
    // MARK: 终端输入 log stream --predicate 'subsystem == "com.yourcompany.networkextension"' --level debug
    /*
     Last login: Mon Aug 25 10:40:32 on ttys005
     meta@localhost ~ % log stream --predicate 'subsystem == "com.yourcompany.networkextension"' --level error
     Filtering the log data using "subsystem == "com.yourcompany.networkextension""
     Timestamp                       Thread     Type        Activity             PID    TTL
     2025-08-25 10:54:16.777357+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:17.656552+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:18.280608+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:18.583567+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:18.789861+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:18.966617+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:19.134372+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:19.294562+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:19.470420+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:19.631088+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:19.951572+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:20.134888+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:20.341822+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:20.559297+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:20.766985+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:20.975407+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:21.246992+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:21.462726+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:21.647070+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     2025-08-25 10:54:21.815092+0800 0x16100fd  Error       0x0                  68160  0    WJOSLog: (WJOSLog.debug.dylib) [com.yourcompany.networkextension:network_vpn] touchesBegan
     */
}
