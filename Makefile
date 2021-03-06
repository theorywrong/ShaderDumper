ifndef Ps4Sdk
ifdef ps4sdk
Ps4Sdk := $(ps4sdk)
endif
ifdef PS4SDK
Ps4Sdk := $(PS4SDK)
endif
ifndef Ps4Sdk
$(error Neither PS4SDK, Ps4Sdk nor ps4sdk set)
endif
endif

target ?= ps4_elf
TargetFile=homebrew.elf

include $(Ps4Sdk)/make/ps4sdk.mk
LinkerFlags+=-ldebugnet -lps4link -lorbisFile -lelfloader -lorbisKeyboard -lorbis2d -lpng -lz -lorbisGl -lorbisPad -lorbisAudio -lmod -lSceVideoOut_stub -lSceGnmDriver_stub -lSceNet_stub -lScePigletv2VSH_stub -lSceSystemService_stub -lSceUserService_stub -lScePad_stub -lSceAudioOut_stub -lSceIme_stub -lSceSysmodule_stub
