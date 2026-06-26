[Defines]
  PLATFORM_NAME                  = Msm8916Pkg
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ea
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Msm8916Pkg/Devices/j5nlte.fdf

!include Msm8916Pkg/Msm8916Pkg.dsc

[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS =

[PcdsFixedAtBuild.common]
  # Simple FrameBuffer
  gMsm8916PkgTokenSpaceGuid.PcdMipiFrameBufferWidth|480
  gMsm8916PkgTokenSpaceGuid.PcdMipiFrameBufferHeight|854
  gMsm8916PkgTokenSpaceGuid.PcdMipiFrameBufferAddress|0x8e000000
  gMsm8916PkgTokenSpaceGuid.PcdMipiFrameBufferPixelBpp|32
  gMsm8916PkgTokenSpaceGuid.PcdMipiFrameBufferVisibleWidth|480
  gMsm8916PkgTokenSpaceGuid.PcdMipiFrameBufferVisibleHeight|854

  # SmBios Information
  gMsm8916PkgTokenSpaceGuid.PcdDeviceVendor|"vivo"
  gMsm8916PkgTokenSpaceGuid.PcdDeviceProduct|"vivo Y23L"
  gMsm8916PkgTokenSpaceGuid.PcdDeviceCodeName|"pd1419"
