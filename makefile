# This file was automagically generated by mbed.org. For more information, 
# see http://mbed.org/handbook/Exporting-to-GCC-ARM-Embedded


# Boiler-plate
###############################################################################
# Project settings
PROJECT := EXPERIENCE
COMPILER_INSTALL_PATH := /opt/gcc-arm-none-eabi-8-2018-q4-major/bin
MBED_OS_PATH := ext/mbed-os
MBED_COMMON_ROB_PATH := ext/mbed-common-rob
CPPROBLIB_PATH := ext/CppRobLib
OBJDIR := BUILD

###############################################################################
# Objects and Paths specific for project
INCLUDE_PATHS += -I../.
INCLUDE_PATHS += -I../Includes

OBJECTS += Sources/main.o
OBJECTS += Sources/MessengerXbeeNetwork2019.o
OBJECTS += Sources/xbeedriver.o
OBJECTS += Sources/RessoucesHardware.o
OBJECTS += Sources/GlobalExperience.o
OBJECTS += Sources/led.o
OBJECTS += Sources/CServoMoteurAX.o

###############################################################################
# Objects and Paths for mbed-common
INCLUDE_PATHS += -I../$(MBED_COMMON_ROB_PATH)
INCLUDE_PATHS += -I../$(MBED_COMMON_ROB_PATH)/Includes

OBJECTS += $(MBED_COMMON_ROB_PATH)/Sources/CEEPROM.o
#OBJECTS += $(MBED_COMMON_ROB_PATH)/Sources/CLaBotBox.o
#OBJECTS += $(MBED_COMMON_ROB_PATH)/Sources/CMoteurs.o
OBJECTS += $(MBED_COMMON_ROB_PATH)/Sources/ConfigFile.o
#OBJECTS += $(MBED_COMMON_ROB_PATH)/Sources/CRoues.o
#OBJECTS += $(MBED_COMMON_ROB_PATH)/Sources/CTrameCAN.o
#OBJECTS += $(MBED_COMMON_ROB_PATH)/Sources/CTrameLaBotBox.o
#OBJECTS += $(MBED_COMMON_ROB_PATH)/Sources/MessagerieLaBotBox.o
OBJECTS += $(MBED_COMMON_ROB_PATH)/Sources/CLed.o

###############################################################################
# Objects and Paths for CppRobLib
INCLUDE_PATHS += -I../$(CPPROBLIB_PATH)
INCLUDE_PATHS += -I../$(CPPROBLIB_PATH)/Communication
INCLUDE_PATHS += -I../$(CPPROBLIB_PATH)/Communication/Messenger
INCLUDE_PATHS += -I../$(CPPROBLIB_PATH)/Communication/Messenger/DatabaseXbeeNetwork2019
INCLUDE_PATHS += -I../$(CPPROBLIB_PATH)/Communication/Messenger/MessagesGeneric
INCLUDE_PATHS += -I../$(CPPROBLIB_PATH)/Communication/XBEE
INCLUDE_PATHS += -I../$(CPPROBLIB_PATH)/ServosAX
INCLUDE_PATHS += -I../$(CPPROBLIB_PATH)/common-rob

OBJECTS += $(CPPROBLIB_PATH)/Communication/Messenger/databasebase.o
OBJECTS += $(CPPROBLIB_PATH)/Communication/Messenger/messagebase.o
OBJECTS += $(CPPROBLIB_PATH)/Communication/Messenger/nodebase.o
OBJECTS += $(CPPROBLIB_PATH)/Communication/Messenger/messengerinterfacebase.o
OBJECTS += $(CPPROBLIB_PATH)/Communication/Messenger/transporterbase.o
OBJECTS += $(CPPROBLIB_PATH)/Communication/Messenger/transportergeneric.o
OBJECTS += $(CPPROBLIB_PATH)/Communication/Messenger/DatabaseXbeeNetwork2019/databasexbeenetwork2019.o
OBJECTS += $(CPPROBLIB_PATH)/Communication/Messenger/DatabaseXbeeNetwork2019/message_experience_status.o
OBJECTS += $(CPPROBLIB_PATH)/Communication/Messenger/DatabaseXbeeNetwork2019/message_robot_lego_2019.o
OBJECTS += $(CPPROBLIB_PATH)/Communication/Messenger/MessagesGeneric/message_timestamp_match.o
OBJECTS += $(CPPROBLIB_PATH)/Communication/Messenger/MessagesGeneric/message_robotlego_status.o
OBJECTS += $(CPPROBLIB_PATH)/Communication/Messenger/MessagesGeneric/message_balise_positions.o
OBJECTS += $(CPPROBLIB_PATH)/Communication/Messenger/MessagesGeneric/message_grosbot_position.o
OBJECTS += $(CPPROBLIB_PATH)/Communication/Messenger/MessagesGeneric/message_free_string.o
OBJECTS += $(CPPROBLIB_PATH)/Communication/XBEE/xbeedriverbase.o
OBJECTS += $(CPPROBLIB_PATH)/common-rob/CLedBase.o
OBJECTS += $(CPPROBLIB_PATH)/common-rob/CLeds.o
OBJECTS += $(CPPROBLIB_PATH)/ServosAX/servoaxbase.o
OBJECTS += $(CPPROBLIB_PATH)/ServosAX/servoax_utils.o

###############################################################################
#  DO NOT MODIFY FROM HERE
###############################################################################

###############################################################################
# Boiler-plate

# cross-platform directory manipulation
ifeq ($(shell echo $$OS),$$OS)
    MAKEDIR = if not exist "$(1)" mkdir "$(1)"
    RM = rmdir /S /Q "$(1)"
else
    MAKEDIR = '$(SHELL)' -c "mkdir -p \"$(1)\""
    RM = '$(SHELL)' -c "rm -rf \"$(1)\""
endif

# Move to the build directory
ifeq (,$(filter $(OBJDIR),$(notdir $(CURDIR))))
.SUFFIXES:
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKETARGET = '$(MAKE)' --no-print-directory -C $(OBJDIR) -f '$(mkfile_path)' \
		'SRCDIR=$(CURDIR)' $(MAKECMDGOALS)
.PHONY: $(OBJDIR) clean
all:
	+@$(call MAKEDIR,$(OBJDIR))
	+@$(MAKETARGET)
$(OBJDIR): all
Makefile : ;
% :: $(OBJDIR) ; :
clean :
	$(call RM,$(OBJDIR))

else

# trick rules into thinking we are in the root, when we are in the bulid dir
VPATH = ..


# Project settings
###############################################################################
# Objects and Paths


 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/CRP.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/analogin_api.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/analogout_api.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/can_api.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/ethernet_api.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/flash_api.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/gpio_api.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/gpio_irq_api.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/i2c_api.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/mbed_board.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/mbed_retarget.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/mbed_sdk_boot.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/mbed_tz_context.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/pinmap.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/port_api.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/pwmout_api.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/rtc_api.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/serial_api.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/sleep.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/spi_api.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/startup_LPC17xx.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/system_LPC17xx.o
 SYS_OBJECTS += $(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/us_ticker.o

INCLUDE_PATHS += -I../.
INCLUDE_PATHS += -I../$(MBED_OS_PATH)
INCLUDE_PATHS += -I../$(MBED_OS_PATH)/mbed
INCLUDE_PATHS += -I../$(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM
INCLUDE_PATHS += -I../$(MBED_OS_PATH)/mbed/drivers
INCLUDE_PATHS += -I../$(MBED_OS_PATH)/mbed/hal
INCLUDE_PATHS += -I../$(MBED_OS_PATH)/mbed/platform

LIBRARY_PATHS := -L../$(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM 
LIBRARIES := -lmbed 
LINKER_SCRIPT ?= ../$(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/LPC1768.ld

# Objects and Paths
###############################################################################
# Tools and Flags
AS      = $(COMPILER_INSTALL_PATH)/arm-none-eabi-gcc
CC      = $(COMPILER_INSTALL_PATH)/arm-none-eabi-gcc
CPP     = $(COMPILER_INSTALL_PATH)/arm-none-eabi-g++
LD      = $(COMPILER_INSTALL_PATH)/arm-none-eabi-gcc
ELF2BIN = $(COMPILER_INSTALL_PATH)/arm-none-eabi-objcopy
OBJDUMP = $(COMPILER_INSTALL_PATH)/arm-none-eabi-objdump
ELFSIZE = $(COMPILER_INSTALL_PATH)/arm-none-eabi-size
PREPROC = $(COMPILER_INSTALL_PATH)/arm-none-eabi-cpp -E -P -Wl,--gc-sections -Wl,--wrap,main -Wl,--wrap,_malloc_r -Wl,--wrap,_free_r -Wl,--wrap,_realloc_r -Wl,--wrap,_memalign_r -Wl,--wrap,_calloc_r -Wl,--wrap,exit -Wl,--wrap,atexit -Wl,-n -mcpu=cortex-m3 -mthumb


C_FLAGS += -std=gnu99
C_FLAGS += -include
C_FLAGS += mbed_config.h
C_FLAGS += -DDEVICE_EMAC=1
C_FLAGS += -D__MBED__=1
C_FLAGS += -DDEVICE_I2CSLAVE=1
C_FLAGS += -DMBED_BUILD_TIMESTAMP=1546710710.74
C_FLAGS += -DTARGET_NXP
C_FLAGS += -DTARGET_LPC176X
C_FLAGS += -D__MBED_CMSIS_RTOS_CM
C_FLAGS += -DDEVICE_RTC=1
C_FLAGS += -DDEVICE_LOCALFILESYSTEM=1
C_FLAGS += -D__CMSIS_RTOS
C_FLAGS += -DTOOLCHAIN_GCC
C_FLAGS += -DDEVICE_CAN=1
C_FLAGS += -DTARGET_LIKE_CORTEX_M3
C_FLAGS += -DTARGET_CORTEX_M
C_FLAGS += -DARM_MATH_CM3
C_FLAGS += -DDEVICE_ANALOGOUT=1
C_FLAGS += -DTARGET_NXP_EMAC
C_FLAGS += -DTARGET_M3
C_FLAGS += -DDEVICE_PWMOUT=1
C_FLAGS += -DDEVICE_INTERRUPTIN=1
C_FLAGS += -DTARGET_LPCTarget
C_FLAGS += -DTARGET_CORTEX
C_FLAGS += -DDEVICE_I2C=1
C_FLAGS += -DDEVICE_PORTOUT=1
C_FLAGS += -D__CORTEX_M3
C_FLAGS += -DDEVICE_STDIO_MESSAGES=1
C_FLAGS += -DTARGET_LIKE_MBED
C_FLAGS += -DTARGET_LPC1768
C_FLAGS += -DTARGET_RELEASE
C_FLAGS += -DDEVICE_PORTINOUT=1
C_FLAGS += -DDEVICE_SERIAL_FC=1
C_FLAGS += -DDEVICE_USTICKER=1
C_FLAGS += -DTARGET_MBED_LPC1768
C_FLAGS += -DDEVICE_PORTIN=1
C_FLAGS += -DDEVICE_SLEEP=1
C_FLAGS += -DTOOLCHAIN_GCC_ARM
C_FLAGS += -DDEVICE_SPI=1
C_FLAGS += -DDEVICE_ETHERNET=1
C_FLAGS += -DDEVICE_SPISLAVE=1
C_FLAGS += -DDEVICE_ANALOGIN=1
C_FLAGS += -DDEVICE_SERIAL=1
C_FLAGS += -DDEVICE_FLASH=1
C_FLAGS += -DDEVICE_SEMIHOST=1
C_FLAGS += -DDEVICE_DEBUG_AWARENESS=1
C_FLAGS += -include
C_FLAGS += mbed_config.h
C_FLAGS += -std=gnu99
C_FLAGS += -c
C_FLAGS += -Wall
C_FLAGS += -Wextra
C_FLAGS += -Wno-unused-parameter
C_FLAGS += -Wno-missing-field-initializers
C_FLAGS += -fmessage-length=0
C_FLAGS += -fno-exceptions
C_FLAGS += -fno-builtin
C_FLAGS += -ffunction-sections
C_FLAGS += -fdata-sections
C_FLAGS += -funsigned-char
C_FLAGS += -MMD
C_FLAGS += -fno-delete-null-pointer-checks
C_FLAGS += -fomit-frame-pointer
C_FLAGS += -Os
C_FLAGS += -g1
C_FLAGS += -mcpu=cortex-m3
C_FLAGS += -mthumb
C_FLAGS += -DMBED_ROM_START=0x0
C_FLAGS += -DMBED_ROM_SIZE=0x80000

CXX_FLAGS += -std=gnu++11 #NSACXX_FLAGS += -std=gnu++98
CXX_FLAGS += -fno-rtti
CXX_FLAGS += -Wvla
CXX_FLAGS += -include
CXX_FLAGS += mbed_config.h
CXX_FLAGS += -DDEVICE_EMAC=1
CXX_FLAGS += -D__MBED__=1
CXX_FLAGS += -DDEVICE_I2CSLAVE=1
CXX_FLAGS += -DMBED_BUILD_TIMESTAMP=1546710710.74
CXX_FLAGS += -DTARGET_NXP
CXX_FLAGS += -DTARGET_LPC176X
CXX_FLAGS += -D__MBED_CMSIS_RTOS_CM
CXX_FLAGS += -DDEVICE_RTC=1
CXX_FLAGS += -DDEVICE_LOCALFILESYSTEM=1
CXX_FLAGS += -D__CMSIS_RTOS
CXX_FLAGS += -DTOOLCHAIN_GCC
CXX_FLAGS += -DDEVICE_CAN=1
CXX_FLAGS += -DTARGET_LIKE_CORTEX_M3
CXX_FLAGS += -DTARGET_CORTEX_M
CXX_FLAGS += -DARM_MATH_CM3
CXX_FLAGS += -DDEVICE_ANALOGOUT=1
CXX_FLAGS += -DTARGET_NXP_EMAC
CXX_FLAGS += -DTARGET_M3
CXX_FLAGS += -DDEVICE_PWMOUT=1
CXX_FLAGS += -DDEVICE_INTERRUPTIN=1
CXX_FLAGS += -DTARGET_LPCTarget
CXX_FLAGS += -DTARGET_CORTEX
CXX_FLAGS += -DDEVICE_I2C=1
CXX_FLAGS += -DDEVICE_PORTOUT=1
CXX_FLAGS += -D__CORTEX_M3
CXX_FLAGS += -DDEVICE_STDIO_MESSAGES=1
CXX_FLAGS += -DTARGET_LIKE_MBED
CXX_FLAGS += -DTARGET_LPC1768
CXX_FLAGS += -DTARGET_RELEASE
CXX_FLAGS += -DDEVICE_PORTINOUT=1
CXX_FLAGS += -DDEVICE_SERIAL_FC=1
CXX_FLAGS += -DDEVICE_USTICKER=1
CXX_FLAGS += -DTARGET_MBED_LPC1768
CXX_FLAGS += -DDEVICE_PORTIN=1
CXX_FLAGS += -DDEVICE_SLEEP=1
CXX_FLAGS += -DTOOLCHAIN_GCC_ARM
CXX_FLAGS += -DDEVICE_SPI=1
CXX_FLAGS += -DDEVICE_ETHERNET=1
CXX_FLAGS += -DDEVICE_SPISLAVE=1
CXX_FLAGS += -DDEVICE_ANALOGIN=1
CXX_FLAGS += -DDEVICE_SERIAL=1
CXX_FLAGS += -DDEVICE_FLASH=1
CXX_FLAGS += -DDEVICE_SEMIHOST=1
CXX_FLAGS += -DDEVICE_DEBUG_AWARENESS=1
CXX_FLAGS += -include
CXX_FLAGS += mbed_config.h
CXX_FLAGS += -fno-rtti
CXX_FLAGS += -Wvla
CXX_FLAGS += -c
CXX_FLAGS += -Wall
CXX_FLAGS += -Wextra
CXX_FLAGS += -Wno-unused-parameter
CXX_FLAGS += -Wno-missing-field-initializers
CXX_FLAGS += -Wignored-qualifiers
CXX_FLAGS += -fmessage-length=0
CXX_FLAGS += -fno-exceptions
CXX_FLAGS += -fno-builtin
CXX_FLAGS += -ffunction-sections
CXX_FLAGS += -fdata-sections
CXX_FLAGS += -funsigned-char
CXX_FLAGS += -MMD
CXX_FLAGS += -fno-delete-null-pointer-checks
CXX_FLAGS += -fomit-frame-pointer
CXX_FLAGS += -Os
CXX_FLAGS += -g1
CXX_FLAGS += -mcpu=cortex-m3
CXX_FLAGS += -mthumb
CXX_FLAGS += -DMBED_ROM_START=0x0
CXX_FLAGS += -DMBED_ROM_SIZE=0x80000

ASM_FLAGS += -x
ASM_FLAGS += assembler-with-cpp
ASM_FLAGS += -D__CMSIS_RTOS
ASM_FLAGS += -D__MBED_CMSIS_RTOS_CM
ASM_FLAGS += -D__CORTEX_M3
ASM_FLAGS += -DARM_MATH_CM3
ASM_FLAGS += -I../.
ASM_FLAGS += -I../$(MBED_OS_PATH)/mbed
ASM_FLAGS += -I../$(MBED_OS_PATH)/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM
ASM_FLAGS += -I../$(MBED_OS_PATH)/mbed/drivers
ASM_FLAGS += -I../$(MBED_OS_PATH)/mbed/hal
ASM_FLAGS += -I../$(MBED_OS_PATH)/mbed/platform
ASM_FLAGS += -include
ASM_FLAGS += /filer/workspace_data/exports/b/b1dca619a4598d18746d1933d2d8320c/$(PROJECT)/mbed_config.h
ASM_FLAGS += -x
ASM_FLAGS += assembler-with-cpp
ASM_FLAGS += -c
ASM_FLAGS += -Wall
ASM_FLAGS += -Wextra
ASM_FLAGS += -Wno-unused-parameter
ASM_FLAGS += -Wno-missing-field-initializers
ASM_FLAGS += -fmessage-length=0
ASM_FLAGS += -fno-exceptions
ASM_FLAGS += -fno-builtin
ASM_FLAGS += -ffunction-sections
ASM_FLAGS += -fdata-sections
ASM_FLAGS += -funsigned-char
ASM_FLAGS += -MMD
ASM_FLAGS += -fno-delete-null-pointer-checks
ASM_FLAGS += -fomit-frame-pointer
ASM_FLAGS += -Os
ASM_FLAGS += -g1
ASM_FLAGS += -mcpu=cortex-m3
ASM_FLAGS += -mthumb


LD_FLAGS :=-Wl,--gc-sections -Wl,--wrap,main -Wl,--wrap,_malloc_r -Wl,--wrap,_free_r -Wl,--wrap,_realloc_r -Wl,--wrap,_memalign_r -Wl,--wrap,_calloc_r -Wl,--wrap,exit -Wl,--wrap,atexit -Wl,-n -mcpu=cortex-m3 -mthumb 
LD_SYS_LIBS :=-Wl,--start-group -lstdc++ -lsupc++ -lm -lc -lgcc -lnosys -lmbed -Wl,--end-group

# Tools and Flags
###############################################################################
# Rules

.PHONY: all lst size


all: $(PROJECT).bin $(PROJECT).hex $(PROJECT).disasm size


.s.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
  
	@$(AS) -c $(ASM_FLAGS) -o $@ $<
  


.S.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
  
	@$(AS) -c $(ASM_FLAGS) -o $@ $<
  

.c.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CC) $(C_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.cpp.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	+@echo "@$(CPP) $(CXX_FLAGS) $(INCLUDE_PATHS) -o $@ $<"
	@$(CPP) $(CXX_FLAGS) $(INCLUDE_PATHS) -o $@ $<


$(PROJECT).link_script.ld: $(LINKER_SCRIPT)
	@$(PREPROC) $< -o $@



$(PROJECT).elf: $(OBJECTS) $(SYS_OBJECTS) $(PROJECT).link_script.ld 
	+@echo "link: $(notdir $@)"
	+@echo "@$(LD) $(LD_FLAGS) -T $(filter-out %.o, $^) $(LIBRARY_PATHS) --output $@ $(filter %.o, $^) $(LIBRARIES) $(LD_SYS_LIBS)"
	@$(LD) $(LD_FLAGS) -T $(filter-out %.o, $^) $(LIBRARY_PATHS) --output $@ $(filter %.o, $^) $(LIBRARIES) $(LD_SYS_LIBS)


$(PROJECT).bin: $(PROJECT).elf
	$(ELF2BIN) -O binary $< $@
	+@echo "===== bin file ready to flash: $(OBJDIR)/$@ =====" 

$(PROJECT).hex: $(PROJECT).elf
	$(ELF2BIN) -O ihex $< $@

$(PROJECT).disasm: $(PROJECT).elf
	@$(OBJDUMP) -d -f -M reg-names-std --demangle $< >$@

size: $(PROJECT).elf
	@$(ELFSIZE) $<

# Rules
###############################################################################
# Dependencies

DEPS = $(OBJECTS:.o=.d) $(SYS_OBJECTS:.o=.d)
-include $(DEPS)
endif

# Dependencies
###############################################################################
