# (C) 2001-2018 Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions and other 
# software and tools, and its AMPP partner logic functions, and any output 
# files from any of the foregoing (including device programming or simulation 
# files), and any associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License Subscription 
# Agreement, Intel FPGA IP License Agreement, or other applicable 
# license agreement, including, without limitation, that your use is for the 
# sole purpose of programming logic devices manufactured by Intel and sold by 
# Intel or its authorized distributors.  Please refer to the applicable 
# agreement for further details.



#______________________________________________________________________________
# write : 32-bit data 
#______________________________________________________________________________
 proc reg_write {base offset wdata} {
    global port_id
    set port_id [lsearch -inline [get_service_paths master] *phy_0*/master];
    open_service master $port_id;
	
    set address [format "%#x" [expr $base + $offset]]; 
    master_write_32 $port_id $address $wdata;
    close_service master $port_id;
    }

#______________________________________________________________________________
# read : 32-bit data 
#______________________________________________________________________________
 proc reg_read {base offset} {
    global port_id
    set port_id [lsearch -inline [get_service_paths master] *phy_0*/master];
    open_service master $port_id;

    set address [format "%#x" [expr $base + $offset]]; 
    set rdata [master_read_32 $port_id $address 1] 
    close_service master $port_id;
    return $rdata
    }
#______________________________________________________________________________
# read : 64-bit data 
#______________________________________________________________________________
 proc reg_read64 {base offset} {
    global port_id
    set port_id [lsearch -inline [get_service_paths master] *phy_0*/master];
    open_service master $port_id;

    set address [format "%#x" [expr $base + $offset]]; 
    set rdata1 [master_read_32 $port_id $address 1] 
    set rdata2 [master_read_32 $port_id [expr $address + 0x04] 1]
    close_service master $port_id;
    regsub {0x} $rdata1 {} rdata1
    return $rdata2$rdata1
    }    
