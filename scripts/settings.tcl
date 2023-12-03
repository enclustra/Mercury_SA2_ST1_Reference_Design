# ----------------------------------------------------------------------------------------------------
# Copyright (c) 2023 by Enclustra GmbH, Switzerland.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this hardware, software, firmware, and associated documentation files (the
# "Product"), to deal in the Product without restriction, including without
# limitation the rights to use, copy, modify, merge, publish, distribute,
# sublicense, and/or sell copies of the Product, and to permit persons to whom the
# Product is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Product.
#
# THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
# PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
# ----------------------------------------------------------------------------------------------------

# Project settings for Mercury SA2 Reference Design
# Valid module codes
# ME-SA2-D6-7I-D11
# ME-SA2-D6-7I-D11-DFE
#
# Valid boot modes
# sdmmc
# qspi

# ----------------------------------------------------------------------------------------------------
# Modify this variable to select your module
if {![info exists module_name]} {set module_name ME-SA2-D6-7I-D11}
if {![info exists baseboard]}   {set baseboard ST1}
if {![info exists boot_mode]} {set boot_mode sdmmc}
# ----------------------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------------------
# Don't modify anything beyond this line
# ----------------------------------------------------------------------------------------------------

#if any file argument are present, use this value
if {[lindex $argv 0] != ""} { set module_name [lindex $argv 0] }

set module Mercury_SA2
set family cyclone5

switch $module_name {
  ME-SA2-D6-7I-D11 {
    set part 5CSTFD6D5F31I7 
    set temp_min -40 
    set temp_max 100 
    set dual_fast_ethernet No_dual_fast_ethernet
  }
  ME-SA2-D6-7I-D11-DFE {
    set part 5CSTFD6D5F31I7 
    set temp_min -40 
    set temp_max 100 
    set VHD_TOP_FILE Mercury_SA2_ST1_DFE
    set dual_fast_ethernet DFE
  }
  default {
    puts "$module_name not available"
    break
  }
}

#create project name for design
if {![info exists project_name]} {
  set project_name ${module}
  if {[info exists baseboard]} {
    lappend project_name ${baseboard}
  }
  set project_name [string map {" " "_"} "${project_name}"]
}

puts "INFO: settings.tcl file loaded."
