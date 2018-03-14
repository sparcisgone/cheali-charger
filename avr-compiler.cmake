
SET(LTO "")
#enable Link Time Optimization
#SET(LTO "-flto")

SET(CSTANDARD "-std=gnu99")
SET(CDEBUG "-g -gdwarf-2")
SET(CWARN "-Wall")
SET(CTUNING "-funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums -mrelax -fno-move-loop-invariants")
SET(COPT "-Os")
SET(CINCS "")
SET(CMCU "-mmcu=atmega32")
SET(CDEFS "-DF_CPU=16000000")

SET(CXXEXTRA "-ffunction-sections -fdata-sections -fno-exceptions")


SET(CFLAGS "${CMCU} ${CDEBUG} ${CDEFS} ${CINCS} ${COPT} ${CWARN} ${CSTANDARD} ${CTUNING} ${CEXTRA} ${CXXEXTRA} ${LTO}")
SET(CXXFLAGS "${CMCU} ${CDEBUG} ${CDEFS} ${CINCS} ${COPT} ${CXXEXTRA} ${CTUNING} ${LTO}")

SET(CMAKE_C_FLAGS  ${CFLAGS})
SET(CMAKE_CXX_FLAGS ${CXXFLAGS})
SET(CMAKE_EXE_LINKER_FLAGS "-Wl,--gc-sections -lm ${LTO}")

SET(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
SET(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")