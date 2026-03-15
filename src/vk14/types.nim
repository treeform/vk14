# Auto-generated from vk.xml — do not edit manually.
# Regenerate with: nim r tools/generate_api.nim


import enums
export enums

type
  VkHandle* = int64
  VkNonDispatchableHandle* = int64

type
  VkSampleMask* = uint32
  VkBool32* = uint32
  VkFlags* = uint32
  VkFlags64* = uint64
  VkDeviceSize* = uint64
  VkDeviceAddress* = uint64
  VkRemoteAddressNV* = pointer

type
  VkImageLayout* = uint32
  VkAttachmentLoadOp* = uint32
  VkAttachmentStoreOp* = uint32
  VkImageType* = uint32
  VkImageTiling* = uint32
  VkImageViewType* = uint32
  VkCommandBufferLevel* = uint32
  VkComponentSwizzle* = uint32
  VkDescriptorType* = uint32
  VkQueryType* = uint32
  VkBorderColor* = uint32
  VkPipelineBindPoint* = uint32
  VkPipelineCacheHeaderVersion* = uint32
  VkPipelineCacheCreateFlagBits* = uint32
  VkPrimitiveTopology* = uint32
  VkSharingMode* = uint32
  VkIndexType* = uint32
  VkFilter* = uint32
  VkSamplerMipmapMode* = uint32
  VkSamplerAddressMode* = uint32
  VkCompareOp* = uint32
  VkPolygonMode* = uint32
  VkFrontFace* = uint32
  VkBlendFactor* = uint32
  VkBlendOp* = uint32
  VkStencilOp* = uint32
  VkLogicOp* = uint32
  VkInternalAllocationType* = uint32
  VkSystemAllocationScope* = uint32
  VkPhysicalDeviceType* = uint32
  VkVertexInputRate* = uint32
  VkFormat* = uint32
  VkStructureType* = uint32
  VkSubpassContents* = uint32
  VkResult* = int32
  VkDynamicState* = uint32
  VkDescriptorUpdateTemplateType* = uint32
  VkObjectType* = uint32
  VkRayTracingInvocationReorderModeEXT* = uint32
  VkRayTracingLssIndexingModeNV* = uint32
  VkRayTracingLssPrimitiveEndCapsModeNV* = uint32
  VkDirectDriverLoadingModeLUNARG* = uint32
  VkAntiLagModeAMD* = uint32
  VkAntiLagStageAMD* = uint32
  VkQueueFlagBits* = uint32
  VkCullModeFlagBits* = uint32
  VkRenderPassCreateFlagBits* = uint32
  VkDeviceQueueCreateFlagBits* = uint32
  VkMemoryPropertyFlagBits* = uint32
  VkMemoryHeapFlagBits* = uint32
  VkAccessFlagBits* = uint32
  VkBufferUsageFlagBits* = uint32
  VkBufferUsageFlagBits2* = uint32
  VkBufferCreateFlagBits* = uint32
  VkShaderStageFlagBits* = uint32
  VkImageUsageFlagBits* = uint32
  VkImageCreateFlagBits* = uint32
  VkImageViewCreateFlagBits* = uint32
  VkSamplerCreateFlagBits* = uint32
  VkPipelineCreateFlagBits* = uint32
  VkPipelineCreateFlagBits2* = uint32
  VkPipelineShaderStageCreateFlagBits* = uint32
  VkColorComponentFlagBits* = uint32
  VkFenceCreateFlagBits* = uint32
  VkSemaphoreCreateFlagBits* = uint32
  VkFormatFeatureFlagBits* = uint32
  VkQueryControlFlagBits* = uint32
  VkQueryResultFlagBits* = uint32
  VkCommandBufferUsageFlagBits* = uint32
  VkQueryPipelineStatisticFlagBits* = uint32
  VkMemoryMapFlagBits* = uint32
  VkImageAspectFlagBits* = uint32
  VkSparseImageFormatFlagBits* = uint32
  VkSparseMemoryBindFlagBits* = uint32
  VkPipelineStageFlagBits* = uint32
  VkCommandPoolCreateFlagBits* = uint32
  VkCommandPoolResetFlagBits* = uint32
  VkCommandBufferResetFlagBits* = uint32
  VkSampleCountFlagBits* = uint32
  VkAttachmentDescriptionFlagBits* = uint32
  VkStencilFaceFlagBits* = uint32
  VkDescriptorPoolCreateFlagBits* = uint32
  VkDependencyFlagBits* = uint32
  VkSemaphoreType* = uint32
  VkSemaphoreWaitFlagBits* = uint32
  VkPresentModeKHR* = uint32
  VkColorSpaceKHR* = uint32
  VkDisplayPlaneAlphaFlagBitsKHR* = uint32
  VkCompositeAlphaFlagBitsKHR* = uint32
  VkSurfaceTransformFlagBitsKHR* = uint32
  VkDisplaySurfaceStereoTypeNV* = uint32
  VkSwapchainImageUsageFlagBitsANDROID* = uint32
  VkTimeDomainKHR* = uint32
  VkDebugReportFlagBitsEXT* = uint32
  VkDebugReportObjectTypeEXT* = uint32
  VkDeviceMemoryReportEventTypeEXT* = uint32
  VkRasterizationOrderAMD* = uint32
  VkExternalMemoryHandleTypeFlagBitsNV* = uint32
  VkExternalMemoryFeatureFlagBitsNV* = uint32
  VkClusterAccelerationStructureIndexFormatFlagBitsNV* = uint32
  VkClusterAccelerationStructureTypeNV* = uint32
  VkClusterAccelerationStructureOpTypeNV* = uint32
  VkClusterAccelerationStructureOpModeNV* = uint32
  VkClusterAccelerationStructureClusterFlagBitsNV* = uint32
  VkClusterAccelerationStructureGeometryFlagBitsNV* = uint32
  VkClusterAccelerationStructureAddressResolutionFlagBitsNV* = uint32
  VkValidationCheckEXT* = uint32
  VkValidationFeatureEnableEXT* = uint32
  VkValidationFeatureDisableEXT* = uint32
  VkLayerSettingTypeEXT* = uint32
  VkSubgroupFeatureFlagBits* = uint32
  VkIndirectCommandsLayoutUsageFlagBitsNV* = uint32
  VkIndirectStateFlagBitsNV* = uint32
  VkIndirectCommandsTokenTypeNV* = uint32
  VkPrivateDataSlotCreateFlagBits* = uint32
  VkDescriptorSetLayoutCreateFlagBits* = uint32
  VkExternalMemoryHandleTypeFlagBits* = uint32
  VkExternalMemoryFeatureFlagBits* = uint32
  VkExternalSemaphoreHandleTypeFlagBits* = uint32
  VkExternalSemaphoreFeatureFlagBits* = uint32
  VkSemaphoreImportFlagBits* = uint32
  VkExternalFenceHandleTypeFlagBits* = uint32
  VkExternalFenceFeatureFlagBits* = uint32
  VkFenceImportFlagBits* = uint32
  VkSurfaceCounterFlagBitsEXT* = uint32
  VkDisplayPowerStateEXT* = uint32
  VkDeviceEventTypeEXT* = uint32
  VkDisplayEventTypeEXT* = uint32
  VkPeerMemoryFeatureFlagBits* = uint32
  VkMemoryAllocateFlagBits* = uint32
  VkDeviceGroupPresentModeFlagBitsKHR* = uint32
  VkSwapchainCreateFlagBitsKHR* = uint32
  VkViewportCoordinateSwizzleNV* = uint32
  VkDiscardRectangleModeEXT* = uint32
  VkSubpassDescriptionFlagBits* = uint32
  VkPointClippingBehavior* = uint32
  VkSamplerReductionMode* = uint32
  VkTessellationDomainOrigin* = uint32
  VkSamplerYcbcrModelConversion* = uint32
  VkSamplerYcbcrRange* = uint32
  VkChromaLocation* = uint32
  VkBlendOverlapEXT* = uint32
  VkCoverageModulationModeNV* = uint32
  VkCoverageReductionModeNV* = uint32
  VkValidationCacheHeaderVersionEXT* = uint32
  VkShaderInfoTypeAMD* = uint32
  VkQueueGlobalPriority* = uint32
  VkDebugUtilsMessageSeverityFlagBitsEXT* = uint32
  VkDebugUtilsMessageTypeFlagBitsEXT* = uint32
  VkConservativeRasterizationModeEXT* = uint32
  VkDescriptorBindingFlagBits* = uint32
  VkVendorId* = uint32
  VkDriverId* = uint32
  VkConditionalRenderingFlagBitsEXT* = uint32
  VkResolveModeFlagBits* = uint32
  VkShadingRatePaletteEntryNV* = uint32
  VkCoarseSampleOrderTypeNV* = uint32
  VkGeometryInstanceFlagBitsKHR* = uint32
  VkGeometryFlagBitsKHR* = uint32
  VkBuildAccelerationStructureFlagBitsKHR* = uint32
  VkAccelerationStructureCreateFlagBitsKHR* = uint32
  VkCopyAccelerationStructureModeKHR* = uint32
  VkBuildAccelerationStructureModeKHR* = uint32
  VkAccelerationStructureTypeKHR* = uint32
  VkGeometryTypeKHR* = uint32
  VkAccelerationStructureMemoryRequirementsTypeNV* = uint32
  VkAccelerationStructureBuildTypeKHR* = uint32
  VkRayTracingShaderGroupTypeKHR* = uint32
  VkAccelerationStructureCompatibilityKHR* = uint32
  VkShaderGroupShaderKHR* = uint32
  VkMemoryOverallocationBehaviorAMD* = uint32
  VkFramebufferCreateFlagBits* = uint32
  VkQueryPoolCreateFlagBits* = uint32
  VkDeviceDiagnosticsConfigFlagBitsNV* = uint32
  VkPipelineCreationFeedbackFlagBits* = uint32
  VkFullScreenExclusiveEXT* = uint32
  VkPerformanceCounterScopeKHR* = uint32
  VkMemoryDecompressionMethodFlagBitsEXT* = uint32
  VkPerformanceCounterUnitKHR* = uint32
  VkPerformanceCounterStorageKHR* = uint32
  VkPerformanceCounterDescriptionFlagBitsKHR* = uint32
  VkAcquireProfilingLockFlagBitsKHR* = uint32
  VkShaderCorePropertiesFlagBitsAMD* = uint32
  VkRefreshObjectFlagBitsKHR* = uint32
  VkPerformanceConfigurationTypeINTEL* = uint32
  VkQueryPoolSamplingModeINTEL* = uint32
  VkPerformanceOverrideTypeINTEL* = uint32
  VkPerformanceParameterTypeINTEL* = uint32
  VkPerformanceValueTypeINTEL* = uint32
  VkShaderFloatControlsIndependence* = uint32
  VkPipelineExecutableStatisticFormatKHR* = uint32
  VkLineRasterizationMode* = uint32
  VkShaderModuleCreateFlagBits* = uint32
  VkPipelineCompilerControlFlagBitsAMD* = uint32
  VkFaultLevel* = uint32
  VkFaultType* = uint32
  VkFaultQueryBehavior* = uint32
  VkToolPurposeFlagBits* = uint32
  VkPipelineMatchControl* = uint32
  VkFragmentShadingRateCombinerOpKHR* = uint32
  VkFragmentShadingRateNV* = uint32
  VkFragmentShadingRateTypeNV* = uint32
  VkSubpassMergeStatusEXT* = uint32
  VkAccessFlagBits2* = uint32
  VkPipelineStageFlagBits2* = uint32
  VkSubmitFlagBits* = uint32
  VkEventCreateFlagBits* = uint32
  VkPipelineLayoutCreateFlagBits* = uint32
  VkSciSyncClientTypeNV* = uint32
  VkSciSyncPrimitiveTypeNV* = uint32
  VkProvokingVertexModeEXT* = uint32
  VkPipelineCacheValidationVersion* = uint32
  VkAccelerationStructureMotionInstanceTypeNV* = uint32
  VkPipelineColorBlendStateCreateFlagBits* = uint32
  VkPipelineDepthStencilStateCreateFlagBits* = uint32
  VkGraphicsPipelineLibraryFlagBitsEXT* = uint32
  VkRenderingAttachmentFlagBitsKHR* = uint32
  VkResolveImageFlagBitsKHR* = uint32
  VkDeviceAddressBindingFlagBitsEXT* = uint32
  VkDeviceAddressBindingTypeEXT* = uint32
  VkFrameBoundaryFlagBitsEXT* = uint32
  VkPresentScalingFlagBitsKHR* = uint32
  VkPresentGravityFlagBitsKHR* = uint32
  VkPhysicalDeviceSchedulingControlsFlagBitsARM* = uint32
  VkPresentStageFlagBitsEXT* = uint32
  VkPastPresentationTimingFlagBitsEXT* = uint32
  VkPresentTimingInfoFlagBitsEXT* = uint32
  VkVideoCodecOperationFlagBitsKHR* = uint32
  VkVideoChromaSubsamplingFlagBitsKHR* = uint32
  VkVideoComponentBitDepthFlagBitsKHR* = uint32
  VkVideoCapabilityFlagBitsKHR* = uint32
  VkVideoSessionCreateFlagBitsKHR* = uint32
  VkVideoSessionParametersCreateFlagBitsKHR* = uint32
  VkVideoDecodeH264PictureLayoutFlagBitsKHR* = uint32
  VkVideoCodingControlFlagBitsKHR* = uint32
  VkQueryResultStatusKHR* = uint32
  VkVideoDecodeUsageFlagBitsKHR* = uint32
  VkVideoDecodeCapabilityFlagBitsKHR* = uint32
  VkVideoEncodeFlagBitsKHR* = uint32
  VkVideoEncodeUsageFlagBitsKHR* = uint32
  VkVideoEncodeContentFlagBitsKHR* = uint32
  VkVideoEncodeTuningModeKHR* = uint32
  VkVideoEncodeCapabilityFlagBitsKHR* = uint32
  VkVideoEncodeFeedbackFlagBitsKHR* = uint32
  VkVideoEncodeRateControlModeFlagBitsKHR* = uint32
  VkVideoEncodeIntraRefreshModeFlagBitsKHR* = uint32
  VkVideoEncodeH264CapabilityFlagBitsKHR* = uint32
  VkVideoEncodeH264StdFlagBitsKHR* = uint32
  VkVideoEncodeH264RateControlFlagBitsKHR* = uint32
  VkHostImageCopyFlagBits* = uint32
  VkPartitionedAccelerationStructureOpTypeNV* = uint32
  VkPartitionedAccelerationStructureInstanceFlagBitsNV* = uint32
  VkImageFormatConstraintsFlagBitsFUCHSIA* = uint32
  VkImageConstraintsInfoFlagBitsFUCHSIA* = uint32
  VkFormatFeatureFlagBits2* = uint32
  VkRenderingFlagBits* = uint32
  VkVideoEncodeH265CapabilityFlagBitsKHR* = uint32
  VkVideoEncodeH265StdFlagBitsKHR* = uint32
  VkVideoEncodeH265RateControlFlagBitsKHR* = uint32
  VkVideoEncodeH265CtbSizeFlagBitsKHR* = uint32
  VkVideoEncodeH265TransformBlockSizeFlagBitsKHR* = uint32
  VkVideoEncodeAV1CapabilityFlagBitsKHR* = uint32
  VkVideoEncodeAV1StdFlagBitsKHR* = uint32
  VkVideoEncodeAV1RateControlFlagBitsKHR* = uint32
  VkVideoEncodeAV1SuperblockSizeFlagBitsKHR* = uint32
  VkVideoEncodeAV1PredictionModeKHR* = uint32
  VkVideoEncodeAV1RateControlGroupKHR* = uint32
  VkExportMetalObjectTypeFlagBitsEXT* = uint32
  VkInstanceCreateFlagBits* = uint32
  VkImageCompressionFlagBitsEXT* = uint32
  VkImageCompressionFixedRateFlagBitsEXT* = uint32
  VkPipelineRobustnessBufferBehavior* = uint32
  VkPipelineRobustnessImageBehavior* = uint32
  VkOpticalFlowGridSizeFlagBitsNV* = uint32
  VkOpticalFlowUsageFlagBitsNV* = uint32
  VkOpticalFlowPerformanceLevelNV* = uint32
  VkOpticalFlowSessionBindingPointNV* = uint32
  VkOpticalFlowSessionCreateFlagBitsNV* = uint32
  VkOpticalFlowExecuteFlagBitsNV* = uint32
  VkMicromapTypeEXT* = uint32
  VkBuildMicromapFlagBitsEXT* = uint32
  VkMicromapCreateFlagBitsEXT* = uint32
  VkCopyMicromapModeEXT* = uint32
  VkBuildMicromapModeEXT* = uint32
  VkOpacityMicromapFormatEXT* = uint32
  VkOpacityMicromapSpecialIndexEXT* = uint32
  VkDepthBiasRepresentationEXT* = uint32
  VkDeviceFaultAddressTypeEXT* = uint32
  VkDeviceFaultVendorBinaryHeaderVersionEXT* = uint32
  VkIndirectCommandsLayoutUsageFlagBitsEXT* = uint32
  VkIndirectExecutionSetInfoTypeEXT* = uint32
  VkIndirectCommandsInputModeFlagBitsEXT* = uint32
  VkIndirectCommandsTokenTypeEXT* = uint32
  VkDisplacementMicromapFormatNV* = uint32
  VkShaderCreateFlagBitsEXT* = uint32
  VkShaderCodeTypeEXT* = uint32
  VkScopeKHR* = uint32
  VkComponentTypeKHR* = uint32
  VkCubicFilterWeightsQCOM* = uint32
  VkBlockMatchWindowCompareModeQCOM* = uint32
  VkPhysicalDeviceLayeredApiKHR* = uint32
  VkLayeredDriverUnderlyingApiMSFT* = uint32
  VkLatencyMarkerNV* = uint32
  VkOutOfBandQueueTypeNV* = uint32
  VkMemoryUnmapFlagBits* = uint32
  VkCompressedTriangleFormatAMDX* = uint32
  VkWaylandSurfaceCreateFlagBitsKHR* = uint32
  VkDepthClampModeEXT* = uint32
  VkAccessFlagBits3KHR* = uint32
  VkTileShadingRenderPassFlagBitsQCOM* = uint32
  VkCooperativeVectorMatrixLayoutNV* = uint32
  VkAddressCopyFlagBitsKHR* = uint32
  VkTensorCreateFlagBitsARM* = uint32
  VkTensorUsageFlagBitsARM* = uint32
  VkTensorTilingARM* = uint32
  VkTensorViewCreateFlagBitsARM* = uint32
  VkDefaultVertexAttributeValueKHR* = uint32
  VkDataGraphPipelineSessionCreateFlagBitsARM* = uint32
  VkDataGraphPipelineSessionBindPointARM* = uint32
  VkDataGraphPipelineSessionBindPointTypeARM* = uint32
  VkDataGraphPipelinePropertyARM* = uint32
  VkDataGraphPipelineDispatchFlagBitsARM* = uint32
  VkPhysicalDeviceDataGraphProcessingEngineTypeARM* = uint32
  VkPhysicalDeviceDataGraphOperationTypeARM* = uint32
  VkDataGraphModelCacheTypeQCOM* = uint32
  VkVideoEncodeRgbModelConversionFlagBitsVALVE* = uint32
  VkVideoEncodeRgbRangeCompressionFlagBitsVALVE* = uint32
  VkVideoEncodeRgbChromaOffsetFlagBitsVALVE* = uint32
  VkSwapchainImageUsageFlagBitsOHOS* = uint32
  VkDescriptorMappingSourceEXT* = uint32
  VkSpirvResourceTypeFlagBitsEXT* = uint32
  VkAddressCommandFlagBitsKHR* = uint32

type
  Display* = pointer
  VisualID* = uint32
  Window* = uint64
  RROutput* = uint64
  wl_display* = pointer
  wl_surface* = pointer
  ubm_device* = pointer
  ubm_surface* = pointer
  HINSTANCE* = pointer
  HWND* = pointer
  HMONITOR* = pointer
  HANDLE* = pointer
  SECURITY_ATTRIBUTES* = pointer
  DWORD* = uint32
  LPCWSTR* = pointer
  xcb_connection_t* = pointer
  xcb_visualid_t* = uint32
  xcb_window_t* = uint32
  IDirectFB* = pointer
  IDirectFBSurface* = pointer
  zx_handle_t* = uint32
  GgpStreamDescriptor* = uint32
  GgpFrameToken* = uint32
  NvSciSyncAttrList* = pointer
  NvSciSyncObj* = pointer
  NvSciSyncFence* = pointer
  NvSciBufAttrList* = pointer
  NvSciBufObj* = pointer
  StdVideoH264ProfileIdc* = pointer
  StdVideoH264LevelIdc* = pointer
  StdVideoDecodeH264PictureInfo* = pointer
  StdVideoDecodeH264ReferenceInfo* = pointer
  StdVideoH264SequenceParameterSet* = pointer
  StdVideoH264PictureParameterSet* = pointer
  StdVideoH265ProfileIdc* = pointer
  StdVideoH265VideoParameterSet* = pointer
  StdVideoH265SequenceParameterSet* = pointer
  StdVideoH265PictureParameterSet* = pointer
  StdVideoH265LevelIdc* = pointer
  StdVideoDecodeH265PictureInfo* = pointer
  StdVideoDecodeH265ReferenceInfo* = pointer
  StdVideoVP9Profile* = pointer
  StdVideoVP9Level* = pointer
  StdVideoDecodeVP9PictureInfo* = pointer
  StdVideoAV1Profile* = pointer
  StdVideoAV1Level* = pointer
  StdVideoAV1SequenceHeader* = pointer
  StdVideoDecodeAV1PictureInfo* = pointer
  StdVideoDecodeAV1ReferenceInfo* = pointer
  StdVideoEncodeH264SliceHeader* = pointer
  StdVideoEncodeH264PictureInfo* = pointer
  StdVideoEncodeH264ReferenceInfo* = pointer
  StdVideoEncodeH265PictureInfo* = pointer
  StdVideoEncodeH265SliceSegmentHeader* = pointer
  StdVideoEncodeH265ReferenceInfo* = pointer
  StdVideoEncodeAV1ExtensionHeader* = pointer
  StdVideoEncodeAV1DecoderModelInfo* = pointer
  StdVideoEncodeAV1OperatingPointInfo* = pointer
  StdVideoEncodeAV1PictureInfo* = pointer
  StdVideoEncodeAV1ReferenceInfo* = pointer

type
  VkInstance* = distinct VkHandle
  VkPhysicalDevice* = distinct VkHandle
  VkDevice* = distinct VkHandle
  VkQueue* = distinct VkHandle
  VkCommandBuffer* = distinct VkHandle
  VkDeviceMemory* = distinct VkNonDispatchableHandle
  VkCommandPool* = distinct VkNonDispatchableHandle
  VkBuffer* = distinct VkNonDispatchableHandle
  VkBufferView* = distinct VkNonDispatchableHandle
  VkImage* = distinct VkNonDispatchableHandle
  VkImageView* = distinct VkNonDispatchableHandle
  VkShaderModule* = distinct VkNonDispatchableHandle
  VkPipeline* = distinct VkNonDispatchableHandle
  VkPipelineLayout* = distinct VkNonDispatchableHandle
  VkSampler* = distinct VkNonDispatchableHandle
  VkDescriptorSet* = distinct VkNonDispatchableHandle
  VkDescriptorSetLayout* = distinct VkNonDispatchableHandle
  VkDescriptorPool* = distinct VkNonDispatchableHandle
  VkFence* = distinct VkNonDispatchableHandle
  VkSemaphore* = distinct VkNonDispatchableHandle
  VkEvent* = distinct VkNonDispatchableHandle
  VkQueryPool* = distinct VkNonDispatchableHandle
  VkFramebuffer* = distinct VkNonDispatchableHandle
  VkRenderPass* = distinct VkNonDispatchableHandle
  VkPipelineCache* = distinct VkNonDispatchableHandle
  VkPipelineBinaryKHR* = distinct VkNonDispatchableHandle
  VkIndirectCommandsLayoutNV* = distinct VkNonDispatchableHandle
  VkIndirectCommandsLayoutEXT* = distinct VkNonDispatchableHandle
  VkIndirectExecutionSetEXT* = distinct VkNonDispatchableHandle
  VkDescriptorUpdateTemplate* = distinct VkNonDispatchableHandle
  VkSamplerYcbcrConversion* = distinct VkNonDispatchableHandle
  VkValidationCacheEXT* = distinct VkNonDispatchableHandle
  VkAccelerationStructureKHR* = distinct VkNonDispatchableHandle
  VkAccelerationStructureNV* = distinct VkNonDispatchableHandle
  VkPerformanceConfigurationINTEL* = distinct VkNonDispatchableHandle
  VkBufferCollectionFUCHSIA* = distinct VkNonDispatchableHandle
  VkDeferredOperationKHR* = distinct VkNonDispatchableHandle
  VkPrivateDataSlot* = distinct VkNonDispatchableHandle
  VkCuModuleNVX* = distinct VkNonDispatchableHandle
  VkCuFunctionNVX* = distinct VkNonDispatchableHandle
  VkOpticalFlowSessionNV* = distinct VkNonDispatchableHandle
  VkMicromapEXT* = distinct VkNonDispatchableHandle
  VkShaderEXT* = distinct VkNonDispatchableHandle
  VkTensorARM* = distinct VkNonDispatchableHandle
  VkTensorViewARM* = distinct VkNonDispatchableHandle
  VkDataGraphPipelineSessionARM* = distinct VkNonDispatchableHandle
  VkShaderInstrumentationARM* = distinct VkNonDispatchableHandle
  VkDisplayKHR* = distinct VkNonDispatchableHandle
  VkDisplayModeKHR* = distinct VkNonDispatchableHandle
  VkSurfaceKHR* = distinct VkNonDispatchableHandle
  VkSwapchainKHR* = distinct VkNonDispatchableHandle
  VkDebugReportCallbackEXT* = distinct VkNonDispatchableHandle
  VkDebugUtilsMessengerEXT* = distinct VkNonDispatchableHandle
  VkVideoSessionKHR* = distinct VkNonDispatchableHandle
  VkVideoSessionParametersKHR* = distinct VkNonDispatchableHandle
  VkSemaphoreSciSyncPoolNV* = distinct VkNonDispatchableHandle
  VkCudaModuleNV* = distinct VkNonDispatchableHandle
  VkCudaFunctionNV* = distinct VkNonDispatchableHandle
  VkExternalComputeQueueNV* = distinct VkHandle
  VkDescriptorUpdateTemplateKHR* = VkDescriptorUpdateTemplate
  VkSamplerYcbcrConversionKHR* = VkSamplerYcbcrConversion
  VkPrivateDataSlotEXT* = VkPrivateDataSlot

type
  VkFramebufferCreateFlags* = distinct VkFlags
  VkQueryPoolCreateFlags* = distinct VkFlags
  VkRenderPassCreateFlags* = distinct VkFlags
  VkSamplerCreateFlags* = distinct VkFlags
  VkPipelineLayoutCreateFlags* = distinct VkFlags
  VkPipelineCacheCreateFlags* = distinct VkFlags
  VkPipelineDepthStencilStateCreateFlags* = distinct VkFlags
  VkPipelineDynamicStateCreateFlags* = distinct VkFlags
  VkPipelineColorBlendStateCreateFlags* = distinct VkFlags
  VkPipelineMultisampleStateCreateFlags* = distinct VkFlags
  VkPipelineRasterizationStateCreateFlags* = distinct VkFlags
  VkPipelineViewportStateCreateFlags* = distinct VkFlags
  VkPipelineTessellationStateCreateFlags* = distinct VkFlags
  VkPipelineInputAssemblyStateCreateFlags* = distinct VkFlags
  VkPipelineVertexInputStateCreateFlags* = distinct VkFlags
  VkPipelineShaderStageCreateFlags* = distinct VkFlags
  VkDescriptorSetLayoutCreateFlags* = distinct VkFlags
  VkBufferViewCreateFlags* = distinct VkFlags
  VkInstanceCreateFlags* = distinct VkFlags
  VkDeviceCreateFlags* = distinct VkFlags
  VkDeviceQueueCreateFlags* = distinct VkFlags
  VkQueueFlags* = distinct VkFlags
  VkMemoryPropertyFlags* = distinct VkFlags
  VkMemoryHeapFlags* = distinct VkFlags
  VkAccessFlags* = distinct VkFlags
  VkBufferUsageFlags* = distinct VkFlags
  VkBufferCreateFlags* = distinct VkFlags
  VkShaderStageFlags* = distinct VkFlags
  VkImageUsageFlags* = distinct VkFlags
  VkImageCreateFlags* = distinct VkFlags
  VkImageViewCreateFlags* = distinct VkFlags
  VkPipelineCreateFlags* = distinct VkFlags
  VkColorComponentFlags* = distinct VkFlags
  VkFenceCreateFlags* = distinct VkFlags
  VkSemaphoreCreateFlags* = distinct VkFlags
  VkFormatFeatureFlags* = distinct VkFlags
  VkQueryControlFlags* = distinct VkFlags
  VkQueryResultFlags* = distinct VkFlags
  VkShaderModuleCreateFlags* = distinct VkFlags
  VkEventCreateFlags* = distinct VkFlags
  VkCommandPoolCreateFlags* = distinct VkFlags
  VkCommandPoolResetFlags* = distinct VkFlags
  VkCommandBufferResetFlags* = distinct VkFlags
  VkCommandBufferUsageFlags* = distinct VkFlags
  VkQueryPipelineStatisticFlags* = distinct VkFlags
  VkMemoryMapFlags* = distinct VkFlags
  VkMemoryUnmapFlags* = distinct VkFlags
  VkImageAspectFlags* = distinct VkFlags
  VkSparseMemoryBindFlags* = distinct VkFlags
  VkSparseImageFormatFlags* = distinct VkFlags
  VkSubpassDescriptionFlags* = distinct VkFlags
  VkPipelineStageFlags* = distinct VkFlags
  VkSampleCountFlags* = distinct VkFlags
  VkAttachmentDescriptionFlags* = distinct VkFlags
  VkStencilFaceFlags* = distinct VkFlags
  VkCullModeFlags* = distinct VkFlags
  VkDescriptorPoolCreateFlags* = distinct VkFlags
  VkDescriptorPoolResetFlags* = distinct VkFlags
  VkDependencyFlags* = distinct VkFlags
  VkSubgroupFeatureFlags* = distinct VkFlags
  VkIndirectCommandsLayoutUsageFlagsNV* = distinct VkFlags
  VkIndirectStateFlagsNV* = distinct VkFlags
  VkGeometryFlagsKHR* = distinct VkFlags
  VkGeometryInstanceFlagsKHR* = distinct VkFlags
  VkClusterAccelerationStructureGeometryFlagsNV* = distinct VkFlags
  VkClusterAccelerationStructureClusterFlagsNV* = distinct VkFlags
  VkClusterAccelerationStructureAddressResolutionFlagsNV* = distinct VkFlags
  VkBuildAccelerationStructureFlagsKHR* = distinct VkFlags
  VkPrivateDataSlotCreateFlags* = distinct VkFlags
  VkAccelerationStructureCreateFlagsKHR* = distinct VkFlags
  VkDescriptorUpdateTemplateCreateFlags* = distinct VkFlags
  VkPipelineCreationFeedbackFlags* = distinct VkFlags
  VkPerformanceCounterDescriptionFlagsKHR* = distinct VkFlags
  VkAcquireProfilingLockFlagsKHR* = distinct VkFlags
  VkSemaphoreWaitFlags* = distinct VkFlags
  VkPipelineCompilerControlFlagsAMD* = distinct VkFlags
  VkShaderCorePropertiesFlagsAMD* = distinct VkFlags
  VkDeviceDiagnosticsConfigFlagsNV* = distinct VkFlags
  VkRefreshObjectFlagsKHR* = distinct VkFlags
  VkAccessFlags2* = distinct VkFlags64
  VkPipelineStageFlags2* = distinct VkFlags64
  VkAccelerationStructureMotionInfoFlagsNV* = distinct VkFlags
  VkAccelerationStructureMotionInstanceFlagsNV* = distinct VkFlags
  VkFormatFeatureFlags2* = distinct VkFlags64
  VkRenderingFlags* = distinct VkFlags
  VkMemoryDecompressionMethodFlagsEXT* = distinct VkFlags64
  VkBuildMicromapFlagsEXT* = distinct VkFlags
  VkMicromapCreateFlagsEXT* = distinct VkFlags
  VkIndirectCommandsLayoutUsageFlagsEXT* = distinct VkFlags
  VkIndirectCommandsInputModeFlagsEXT* = distinct VkFlags
  VkDirectDriverLoadingFlagsLUNARG* = distinct VkFlags
  VkPipelineCreateFlags2* = distinct VkFlags64
  VkBufferUsageFlags2* = distinct VkFlags64
  VkAddressCopyFlagsKHR* = distinct VkFlags
  VkTensorCreateFlagsARM* = distinct VkFlags64
  VkTensorUsageFlagsARM* = distinct VkFlags64
  VkTensorViewCreateFlagsARM* = distinct VkFlags64
  VkDataGraphPipelineSessionCreateFlagsARM* = distinct VkFlags64
  VkDataGraphPipelineDispatchFlagsARM* = distinct VkFlags64
  VkVideoEncodeRgbModelConversionFlagsVALVE* = distinct VkFlags
  VkVideoEncodeRgbRangeCompressionFlagsVALVE* = distinct VkFlags
  VkVideoEncodeRgbChromaOffsetFlagsVALVE* = distinct VkFlags
  VkSpirvResourceTypeFlagsEXT* = distinct VkFlags
  VkAddressCommandFlagsKHR* = distinct VkFlags
  VkCompositeAlphaFlagsKHR* = distinct VkFlags
  VkDisplayPlaneAlphaFlagsKHR* = distinct VkFlags
  VkSurfaceTransformFlagsKHR* = distinct VkFlags
  VkSwapchainCreateFlagsKHR* = distinct VkFlags
  VkDisplayModeCreateFlagsKHR* = distinct VkFlags
  VkDisplaySurfaceCreateFlagsKHR* = distinct VkFlags
  VkAndroidSurfaceCreateFlagsKHR* = distinct VkFlags
  VkViSurfaceCreateFlagsNN* = distinct VkFlags
  VkWaylandSurfaceCreateFlagsKHR* = distinct VkFlags
  VkUbmSurfaceCreateFlagsSEC* = distinct VkFlags
  VkWin32SurfaceCreateFlagsKHR* = distinct VkFlags
  VkXlibSurfaceCreateFlagsKHR* = distinct VkFlags
  VkXcbSurfaceCreateFlagsKHR* = distinct VkFlags
  VkDirectFBSurfaceCreateFlagsEXT* = distinct VkFlags
  VkIOSSurfaceCreateFlagsMVK* = distinct VkFlags
  VkMacOSSurfaceCreateFlagsMVK* = distinct VkFlags
  VkMetalSurfaceCreateFlagsEXT* = distinct VkFlags
  VkImagePipeSurfaceCreateFlagsFUCHSIA* = distinct VkFlags
  VkStreamDescriptorSurfaceCreateFlagsGGP* = distinct VkFlags
  VkHeadlessSurfaceCreateFlagsEXT* = distinct VkFlags
  VkScreenSurfaceCreateFlagsQNX* = distinct VkFlags
  VkPeerMemoryFeatureFlags* = distinct VkFlags
  VkMemoryAllocateFlags* = distinct VkFlags
  VkDeviceGroupPresentModeFlagsKHR* = distinct VkFlags
  VkDebugReportFlagsEXT* = distinct VkFlags
  VkCommandPoolTrimFlags* = distinct VkFlags
  VkExternalMemoryHandleTypeFlagsNV* = distinct VkFlags
  VkClusterAccelerationStructureIndexFormatFlagsNV* = distinct VkFlags
  VkExternalMemoryFeatureFlagsNV* = distinct VkFlags
  VkExternalMemoryHandleTypeFlags* = distinct VkFlags
  VkExternalMemoryFeatureFlags* = distinct VkFlags
  VkExternalSemaphoreHandleTypeFlags* = distinct VkFlags
  VkExternalSemaphoreFeatureFlags* = distinct VkFlags
  VkSemaphoreImportFlags* = distinct VkFlags
  VkExternalFenceHandleTypeFlags* = distinct VkFlags
  VkExternalFenceFeatureFlags* = distinct VkFlags
  VkFenceImportFlags* = distinct VkFlags
  VkSurfaceCounterFlagsEXT* = distinct VkFlags
  VkPipelineViewportSwizzleStateCreateFlagsNV* = distinct VkFlags
  VkPipelineDiscardRectangleStateCreateFlagsEXT* = distinct VkFlags
  VkPipelineCoverageToColorStateCreateFlagsNV* = distinct VkFlags
  VkPipelineCoverageModulationStateCreateFlagsNV* = distinct VkFlags
  VkPipelineCoverageReductionStateCreateFlagsNV* = distinct VkFlags
  VkValidationCacheCreateFlagsEXT* = distinct VkFlags
  VkDebugUtilsMessageSeverityFlagsEXT* = distinct VkFlags
  VkDebugUtilsMessageTypeFlagsEXT* = distinct VkFlags
  VkDebugUtilsMessengerCreateFlagsEXT* = distinct VkFlags
  VkDebugUtilsMessengerCallbackDataFlagsEXT* = distinct VkFlags
  VkDeviceMemoryReportFlagsEXT* = distinct VkFlags
  VkPipelineRasterizationConservativeStateCreateFlagsEXT* = distinct VkFlags
  VkDescriptorBindingFlags* = distinct VkFlags
  VkConditionalRenderingFlagsEXT* = distinct VkFlags
  VkResolveModeFlags* = distinct VkFlags
  VkPipelineRasterizationStateStreamCreateFlagsEXT* = distinct VkFlags
  VkPipelineRasterizationDepthClipStateCreateFlagsEXT* = distinct VkFlags
  VkSwapchainImageUsageFlagsANDROID* = distinct VkFlags
  VkToolPurposeFlags* = distinct VkFlags
  VkSubmitFlags* = distinct VkFlags
  VkImageFormatConstraintsFlagsFUCHSIA* = distinct VkFlags
  VkHostImageCopyFlags* = distinct VkFlags
  VkPartitionedAccelerationStructureInstanceFlagsNV* = distinct VkFlags
  VkImageConstraintsInfoFlagsFUCHSIA* = distinct VkFlags
  VkGraphicsPipelineLibraryFlagsEXT* = distinct VkFlags
  VkImageCompressionFlagsEXT* = distinct VkFlags
  VkImageCompressionFixedRateFlagsEXT* = distinct VkFlags
  VkExportMetalObjectTypeFlagsEXT* = distinct VkFlags
  VkRenderingAttachmentFlagsKHR* = distinct VkFlags
  VkResolveImageFlagsKHR* = distinct VkFlags
  VkDeviceAddressBindingFlagsEXT* = distinct VkFlags
  VkOpticalFlowGridSizeFlagsNV* = distinct VkFlags
  VkOpticalFlowUsageFlagsNV* = distinct VkFlags
  VkOpticalFlowSessionCreateFlagsNV* = distinct VkFlags
  VkOpticalFlowExecuteFlagsNV* = distinct VkFlags
  VkFrameBoundaryFlagsEXT* = distinct VkFlags
  VkPresentScalingFlagsKHR* = distinct VkFlags
  VkPresentGravityFlagsKHR* = distinct VkFlags
  VkShaderCreateFlagsEXT* = distinct VkFlags
  VkTileShadingRenderPassFlagsQCOM* = distinct VkFlags
  VkPhysicalDeviceSchedulingControlsFlagsARM* = distinct VkFlags64
  VkSurfaceCreateFlagsOHOS* = distinct VkFlags
  VkPresentStageFlagsEXT* = distinct VkFlags
  VkPastPresentationTimingFlagsEXT* = distinct VkFlags
  VkPresentTimingInfoFlagsEXT* = distinct VkFlags
  VkSwapchainImageUsageFlagsOHOS* = distinct VkFlags
  VkPerformanceCounterDescriptionFlagsARM* = distinct VkFlags
  VkShaderInstrumentationValuesFlagsARM* = distinct VkFlags
  VkVideoCodecOperationFlagsKHR* = distinct VkFlags
  VkVideoCapabilityFlagsKHR* = distinct VkFlags
  VkVideoSessionCreateFlagsKHR* = distinct VkFlags
  VkVideoSessionParametersCreateFlagsKHR* = distinct VkFlags
  VkVideoBeginCodingFlagsKHR* = distinct VkFlags
  VkVideoEndCodingFlagsKHR* = distinct VkFlags
  VkVideoCodingControlFlagsKHR* = distinct VkFlags
  VkVideoDecodeUsageFlagsKHR* = distinct VkFlags
  VkVideoDecodeCapabilityFlagsKHR* = distinct VkFlags
  VkVideoDecodeFlagsKHR* = distinct VkFlags
  VkVideoDecodeH264PictureLayoutFlagsKHR* = distinct VkFlags
  VkVideoEncodeFlagsKHR* = distinct VkFlags
  VkVideoEncodeUsageFlagsKHR* = distinct VkFlags
  VkVideoEncodeContentFlagsKHR* = distinct VkFlags
  VkVideoEncodeCapabilityFlagsKHR* = distinct VkFlags
  VkVideoEncodeFeedbackFlagsKHR* = distinct VkFlags
  VkVideoEncodeRateControlFlagsKHR* = distinct VkFlags
  VkVideoEncodeRateControlModeFlagsKHR* = distinct VkFlags
  VkVideoEncodeIntraRefreshModeFlagsKHR* = distinct VkFlags
  VkVideoChromaSubsamplingFlagsKHR* = distinct VkFlags
  VkVideoComponentBitDepthFlagsKHR* = distinct VkFlags
  VkVideoEncodeH264CapabilityFlagsKHR* = distinct VkFlags
  VkVideoEncodeH264StdFlagsKHR* = distinct VkFlags
  VkVideoEncodeH264RateControlFlagsKHR* = distinct VkFlags
  VkVideoEncodeH265CapabilityFlagsKHR* = distinct VkFlags
  VkVideoEncodeH265StdFlagsKHR* = distinct VkFlags
  VkVideoEncodeH265RateControlFlagsKHR* = distinct VkFlags
  VkVideoEncodeH265CtbSizeFlagsKHR* = distinct VkFlags
  VkVideoEncodeH265TransformBlockSizeFlagsKHR* = distinct VkFlags
  VkVideoEncodeAV1CapabilityFlagsKHR* = distinct VkFlags
  VkVideoEncodeAV1StdFlagsKHR* = distinct VkFlags
  VkVideoEncodeAV1RateControlFlagsKHR* = distinct VkFlags
  VkVideoEncodeAV1SuperblockSizeFlagsKHR* = distinct VkFlags
  VkAccessFlags3KHR* = distinct VkFlags64
  VkMemoryUnmapFlagsKHR* = VkMemoryUnmapFlags
  VkGeometryFlagsNV* = VkGeometryFlagsKHR
  VkGeometryInstanceFlagsNV* = VkGeometryInstanceFlagsKHR
  VkBuildAccelerationStructureFlagsNV* = VkBuildAccelerationStructureFlagsKHR
  VkPrivateDataSlotCreateFlagsEXT* = VkPrivateDataSlotCreateFlags
  VkDescriptorUpdateTemplateCreateFlagsKHR* = VkDescriptorUpdateTemplateCreateFlags
  VkPipelineCreationFeedbackFlagsEXT* = VkPipelineCreationFeedbackFlags
  VkSemaphoreWaitFlagsKHR* = VkSemaphoreWaitFlags
  VkAccessFlags2KHR* = VkAccessFlags2
  VkPipelineStageFlags2KHR* = VkPipelineStageFlags2
  VkFormatFeatureFlags2KHR* = VkFormatFeatureFlags2
  VkMemoryDecompressionMethodFlagsNV* = VkMemoryDecompressionMethodFlagsEXT
  VkRenderingFlagsKHR* = VkRenderingFlags
  VkPipelineCreateFlags2KHR* = VkPipelineCreateFlags2
  VkBufferUsageFlags2KHR* = VkBufferUsageFlags2
  VkPeerMemoryFeatureFlagsKHR* = VkPeerMemoryFeatureFlags
  VkMemoryAllocateFlagsKHR* = VkMemoryAllocateFlags
  VkCommandPoolTrimFlagsKHR* = VkCommandPoolTrimFlags
  VkExternalMemoryHandleTypeFlagsKHR* = VkExternalMemoryHandleTypeFlags
  VkExternalMemoryFeatureFlagsKHR* = VkExternalMemoryFeatureFlags
  VkExternalSemaphoreHandleTypeFlagsKHR* = VkExternalSemaphoreHandleTypeFlags
  VkExternalSemaphoreFeatureFlagsKHR* = VkExternalSemaphoreFeatureFlags
  VkSemaphoreImportFlagsKHR* = VkSemaphoreImportFlags
  VkExternalFenceHandleTypeFlagsKHR* = VkExternalFenceHandleTypeFlags
  VkExternalFenceFeatureFlagsKHR* = VkExternalFenceFeatureFlags
  VkFenceImportFlagsKHR* = VkFenceImportFlags
  VkDescriptorBindingFlagsEXT* = VkDescriptorBindingFlags
  VkResolveModeFlagsKHR* = VkResolveModeFlags
  VkToolPurposeFlagsEXT* = VkToolPurposeFlags
  VkSubmitFlagsKHR* = VkSubmitFlags
  VkHostImageCopyFlagsEXT* = VkHostImageCopyFlags
  VkPresentScalingFlagsEXT* = VkPresentScalingFlagsKHR
  VkPresentGravityFlagsEXT* = VkPresentGravityFlagsKHR

type
  VkRayTracingInvocationReorderModeNV* = VkRayTracingInvocationReorderModeEXT
  VkPrivateDataSlotCreateFlagBitsEXT* = VkPrivateDataSlotCreateFlagBits
  VkDescriptorUpdateTemplateTypeKHR* = VkDescriptorUpdateTemplateType
  VkPointClippingBehaviorKHR* = VkPointClippingBehavior
  VkQueueGlobalPriorityKHR* = VkQueueGlobalPriority
  VkQueueGlobalPriorityEXT* = VkQueueGlobalPriority
  VkTimeDomainEXT* = VkTimeDomainKHR
  VkResolveModeFlagBitsKHR* = VkResolveModeFlagBits
  VkDescriptorBindingFlagBitsEXT* = VkDescriptorBindingFlagBits
  VkSemaphoreTypeKHR* = VkSemaphoreType
  VkGeometryFlagBitsNV* = VkGeometryFlagBitsKHR
  VkGeometryInstanceFlagBitsNV* = VkGeometryInstanceFlagBitsKHR
  VkBuildAccelerationStructureFlagBitsNV* = VkBuildAccelerationStructureFlagBitsKHR
  VkCopyAccelerationStructureModeNV* = VkCopyAccelerationStructureModeKHR
  VkAccelerationStructureTypeNV* = VkAccelerationStructureTypeKHR
  VkGeometryTypeNV* = VkGeometryTypeKHR
  VkRayTracingShaderGroupTypeNV* = VkRayTracingShaderGroupTypeKHR
  VkPipelineCreationFeedbackFlagBitsEXT* = VkPipelineCreationFeedbackFlagBits
  VkSemaphoreWaitFlagBitsKHR* = VkSemaphoreWaitFlagBits
  VkLineRasterizationModeKHR* = VkLineRasterizationMode
  VkLineRasterizationModeEXT* = VkLineRasterizationMode
  VkToolPurposeFlagBitsEXT* = VkToolPurposeFlagBits
  VkAccessFlagBits2KHR* = VkAccessFlagBits2
  VkPipelineStageFlagBits2KHR* = VkPipelineStageFlagBits2
  VkHostImageCopyFlagBitsEXT* = VkHostImageCopyFlagBits
  VkFormatFeatureFlagBits2KHR* = VkFormatFeatureFlagBits2
  VkRenderingFlagBitsKHR* = VkRenderingFlagBits
  VkPipelineRobustnessBufferBehaviorEXT* = VkPipelineRobustnessBufferBehavior
  VkPipelineRobustnessImageBehaviorEXT* = VkPipelineRobustnessImageBehavior
  VkMemoryDecompressionMethodFlagBitsNV* = VkMemoryDecompressionMethodFlagBitsEXT
  VkPipelineCreateFlagBits2KHR* = VkPipelineCreateFlagBits2
  VkBufferUsageFlagBits2KHR* = VkBufferUsageFlagBits2
  VkScopeNV* = VkScopeKHR
  VkComponentTypeNV* = VkComponentTypeKHR
  VkExternalMemoryHandleTypeFlagBitsKHR* = VkExternalMemoryHandleTypeFlagBits
  VkExternalMemoryFeatureFlagBitsKHR* = VkExternalMemoryFeatureFlagBits
  VkExternalSemaphoreHandleTypeFlagBitsKHR* = VkExternalSemaphoreHandleTypeFlagBits
  VkExternalSemaphoreFeatureFlagBitsKHR* = VkExternalSemaphoreFeatureFlagBits
  VkSemaphoreImportFlagBitsKHR* = VkSemaphoreImportFlagBits
  VkExternalFenceHandleTypeFlagBitsKHR* = VkExternalFenceHandleTypeFlagBits
  VkExternalFenceFeatureFlagBitsKHR* = VkExternalFenceFeatureFlagBits
  VkFenceImportFlagBitsKHR* = VkFenceImportFlagBits
  VkPeerMemoryFeatureFlagBitsKHR* = VkPeerMemoryFeatureFlagBits
  VkMemoryAllocateFlagBitsKHR* = VkMemoryAllocateFlagBits
  VkTessellationDomainOriginKHR* = VkTessellationDomainOrigin
  VkSamplerYcbcrModelConversionKHR* = VkSamplerYcbcrModelConversion
  VkSamplerYcbcrRangeKHR* = VkSamplerYcbcrRange
  VkChromaLocationKHR* = VkChromaLocation
  VkSamplerReductionModeEXT* = VkSamplerReductionMode
  VkShaderFloatControlsIndependenceKHR* = VkShaderFloatControlsIndependence
  VkSubmitFlagBitsKHR* = VkSubmitFlagBits
  VkPresentScalingFlagBitsEXT* = VkPresentScalingFlagBitsKHR
  VkPresentGravityFlagBitsEXT* = VkPresentGravityFlagBitsKHR
  VkMemoryUnmapFlagBitsKHR* = VkMemoryUnmapFlagBits
  VkDriverIdKHR* = VkDriverId

type
  PFN_vkInternalAllocationNotification* = pointer
  PFN_vkInternalFreeNotification* = pointer
  PFN_vkReallocationFunction* = pointer
  PFN_vkAllocationFunction* = pointer
  PFN_vkFreeFunction* = pointer
  PFN_vkVoidFunction* = pointer
  PFN_vkDebugReportCallbackEXT* = pointer
  PFN_vkDebugUtilsMessengerCallbackEXT* = pointer
  PFN_vkFaultCallbackFunction* = pointer
  PFN_vkDeviceMemoryReportCallbackEXT* = pointer
  PFN_vkGetInstanceProcAddrLUNARG* = pointer

type
  VkBaseOutStructure* = object
    sType*: VkStructureType
    pNext*: ptr VkBaseOutStructure

  VkBaseInStructure* = object
    sType*: VkStructureType
    pNext*: ptr VkBaseInStructure

  VkOffset2D* = object
    x*: int32
    y*: int32

  VkOffset3D* = object
    x*: int32
    y*: int32
    z*: int32

  VkExtent2D* = object
    width*: uint32
    height*: uint32

  VkExtent3D* = object
    width*: uint32
    height*: uint32
    depth*: uint32

  VkViewport* = object
    x*: float32
    y*: float32
    width*: float32
    height*: float32
    minDepth*: float32
    maxDepth*: float32

  VkRect2D* = object
    offset*: VkOffset2D
    extent*: VkExtent2D

  VkClearRect* = object
    rect*: VkRect2D
    baseArrayLayer*: uint32
    layerCount*: uint32

  VkComponentMapping* = object
    r*: VkComponentSwizzle
    g*: VkComponentSwizzle
    b*: VkComponentSwizzle
    a*: VkComponentSwizzle

  VkPhysicalDeviceProperties* = object
    apiVersion*: uint32
    driverVersion*: uint32
    vendorID*: uint32
    deviceID*: uint32
    deviceType*: VkPhysicalDeviceType
    deviceName*: array[VK_MAX_PHYSICAL_DEVICE_NAME_SIZE, char]
    pipelineCacheUUID*: array[VK_UUID_SIZE, uint8]
    limits*: VkPhysicalDeviceLimits
    sparseProperties*: VkPhysicalDeviceSparseProperties

  VkExtensionProperties* = object
    extensionName*: array[VK_MAX_EXTENSION_NAME_SIZE, char]
    specVersion*: uint32

  VkLayerProperties* = object
    layerName*: array[VK_MAX_EXTENSION_NAME_SIZE, char]
    specVersion*: uint32
    implementationVersion*: uint32
    description*: array[VK_MAX_DESCRIPTION_SIZE, char]

  VkApplicationInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    pApplicationName*: cstring
    applicationVersion*: uint32
    pEngineName*: cstring
    engineVersion*: uint32
    apiVersion*: uint32

  VkAllocationCallbacks* = object
    pUserData*: pointer
    pfnAllocation*: PFN_vkAllocationFunction
    pfnReallocation*: PFN_vkReallocationFunction
    pfnFree*: PFN_vkFreeFunction
    pfnInternalAllocation*: PFN_vkInternalAllocationNotification
    pfnInternalFree*: PFN_vkInternalFreeNotification

  VkDeviceQueueCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDeviceQueueCreateFlags
    queueFamilyIndex*: uint32
    queueCount*: uint32
    pQueuePriorities*: ptr float32

  VkDeviceCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDeviceCreateFlags
    queueCreateInfoCount*: uint32
    pQueueCreateInfos*: ptr VkDeviceQueueCreateInfo
    enabledLayerCount*: uint32
    ppEnabledLayerNames*: cstringArray
    enabledExtensionCount*: uint32
    ppEnabledExtensionNames*: cstringArray
    pEnabledFeatures*: ptr VkPhysicalDeviceFeatures

  VkInstanceCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkInstanceCreateFlags
    pApplicationInfo*: ptr VkApplicationInfo
    enabledLayerCount*: uint32
    ppEnabledLayerNames*: cstringArray
    enabledExtensionCount*: uint32
    ppEnabledExtensionNames*: cstringArray

  VkQueueFamilyProperties* = object
    queueFlags*: VkQueueFlags
    queueCount*: uint32
    timestampValidBits*: uint32
    minImageTransferGranularity*: VkExtent3D

  VkPhysicalDeviceMemoryProperties* = object
    memoryTypeCount*: uint32
    memoryTypes*: array[VK_MAX_MEMORY_TYPES, VkMemoryType]
    memoryHeapCount*: uint32
    memoryHeaps*: array[VK_MAX_MEMORY_HEAPS, VkMemoryHeap]

  VkMemoryAllocateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    allocationSize*: VkDeviceSize
    memoryTypeIndex*: uint32

  VkMemoryRequirements* = object
    size*: VkDeviceSize
    alignment*: VkDeviceSize
    memoryTypeBits*: uint32

  VkSparseImageFormatProperties* = object
    aspectMask*: VkImageAspectFlags
    imageGranularity*: VkExtent3D
    flags*: VkSparseImageFormatFlags

  VkSparseImageMemoryRequirements* = object
    formatProperties*: VkSparseImageFormatProperties
    imageMipTailFirstLod*: uint32
    imageMipTailSize*: VkDeviceSize
    imageMipTailOffset*: VkDeviceSize
    imageMipTailStride*: VkDeviceSize

  VkMemoryType* = object
    propertyFlags*: VkMemoryPropertyFlags
    heapIndex*: uint32

  VkMemoryHeap* = object
    size*: VkDeviceSize
    flags*: VkMemoryHeapFlags

  VkMappedMemoryRange* = object
    sType*: VkStructureType
    pNext*: pointer
    memory*: VkDeviceMemory
    offset*: VkDeviceSize
    size*: VkDeviceSize

  VkFormatProperties* = object
    linearTilingFeatures*: VkFormatFeatureFlags
    optimalTilingFeatures*: VkFormatFeatureFlags
    bufferFeatures*: VkFormatFeatureFlags

  VkImageFormatProperties* = object
    maxExtent*: VkExtent3D
    maxMipLevels*: uint32
    maxArrayLayers*: uint32
    sampleCounts*: VkSampleCountFlags
    maxResourceSize*: VkDeviceSize

  VkDescriptorBufferInfo* = object
    buffer*: VkBuffer
    offset*: VkDeviceSize
    range*: VkDeviceSize

  VkDescriptorImageInfo* = object
    sampler*: VkSampler
    imageView*: VkImageView
    imageLayout*: VkImageLayout

  VkWriteDescriptorSet* = object
    sType*: VkStructureType
    pNext*: pointer
    dstSet*: VkDescriptorSet
    dstBinding*: uint32
    dstArrayElement*: uint32
    descriptorCount*: uint32
    descriptorType*: VkDescriptorType
    pImageInfo*: ptr VkDescriptorImageInfo
    pBufferInfo*: ptr VkDescriptorBufferInfo
    pTexelBufferView*: ptr VkBufferView

  VkCopyDescriptorSet* = object
    sType*: VkStructureType
    pNext*: pointer
    srcSet*: VkDescriptorSet
    srcBinding*: uint32
    srcArrayElement*: uint32
    dstSet*: VkDescriptorSet
    dstBinding*: uint32
    dstArrayElement*: uint32
    descriptorCount*: uint32

  VkBufferUsageFlags2CreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    usage*: VkBufferUsageFlags2

  VkBufferCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkBufferCreateFlags
    size*: VkDeviceSize
    usage*: VkBufferUsageFlags
    sharingMode*: VkSharingMode
    queueFamilyIndexCount*: uint32
    pQueueFamilyIndices*: ptr uint32

  VkBufferViewCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkBufferViewCreateFlags
    buffer*: VkBuffer
    format*: VkFormat
    offset*: VkDeviceSize
    range*: VkDeviceSize

  VkImageSubresource* = object
    aspectMask*: VkImageAspectFlags
    mipLevel*: uint32
    arrayLayer*: uint32

  VkImageSubresourceLayers* = object
    aspectMask*: VkImageAspectFlags
    mipLevel*: uint32
    baseArrayLayer*: uint32
    layerCount*: uint32

  VkImageSubresourceRange* = object
    aspectMask*: VkImageAspectFlags
    baseMipLevel*: uint32
    levelCount*: uint32
    baseArrayLayer*: uint32
    layerCount*: uint32

  VkMemoryBarrier* = object
    sType*: VkStructureType
    pNext*: pointer
    srcAccessMask*: VkAccessFlags
    dstAccessMask*: VkAccessFlags

  VkBufferMemoryBarrier* = object
    sType*: VkStructureType
    pNext*: pointer
    srcAccessMask*: VkAccessFlags
    dstAccessMask*: VkAccessFlags
    srcQueueFamilyIndex*: uint32
    dstQueueFamilyIndex*: uint32
    buffer*: VkBuffer
    offset*: VkDeviceSize
    size*: VkDeviceSize

  VkImageMemoryBarrier* = object
    sType*: VkStructureType
    pNext*: pointer
    srcAccessMask*: VkAccessFlags
    dstAccessMask*: VkAccessFlags
    oldLayout*: VkImageLayout
    newLayout*: VkImageLayout
    srcQueueFamilyIndex*: uint32
    dstQueueFamilyIndex*: uint32
    image*: VkImage
    subresourceRange*: VkImageSubresourceRange

  VkImageCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkImageCreateFlags
    imageType*: VkImageType
    format*: VkFormat
    extent*: VkExtent3D
    mipLevels*: uint32
    arrayLayers*: uint32
    samples*: VkSampleCountFlagBits
    tiling*: VkImageTiling
    usage*: VkImageUsageFlags
    sharingMode*: VkSharingMode
    queueFamilyIndexCount*: uint32
    pQueueFamilyIndices*: ptr uint32
    initialLayout*: VkImageLayout

  VkSubresourceLayout* = object
    offset*: VkDeviceSize
    size*: VkDeviceSize
    rowPitch*: VkDeviceSize
    arrayPitch*: VkDeviceSize
    depthPitch*: VkDeviceSize

  VkImageViewCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkImageViewCreateFlags
    image*: VkImage
    viewType*: VkImageViewType
    format*: VkFormat
    components*: VkComponentMapping
    subresourceRange*: VkImageSubresourceRange

  VkBufferCopy* = object
    srcOffset*: VkDeviceSize
    dstOffset*: VkDeviceSize
    size*: VkDeviceSize

  VkSparseMemoryBind* = object
    resourceOffset*: VkDeviceSize
    size*: VkDeviceSize
    memory*: VkDeviceMemory
    memoryOffset*: VkDeviceSize
    flags*: VkSparseMemoryBindFlags

  VkSparseImageMemoryBind* = object
    subresource*: VkImageSubresource
    offset*: VkOffset3D
    extent*: VkExtent3D
    memory*: VkDeviceMemory
    memoryOffset*: VkDeviceSize
    flags*: VkSparseMemoryBindFlags

  VkSparseBufferMemoryBindInfo* = object
    buffer*: VkBuffer
    bindCount*: uint32
    pBinds*: ptr VkSparseMemoryBind

  VkSparseImageOpaqueMemoryBindInfo* = object
    image*: VkImage
    bindCount*: uint32
    pBinds*: ptr VkSparseMemoryBind

  VkSparseImageMemoryBindInfo* = object
    image*: VkImage
    bindCount*: uint32
    pBinds*: ptr VkSparseImageMemoryBind

  VkBindSparseInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    waitSemaphoreCount*: uint32
    pWaitSemaphores*: ptr VkSemaphore
    bufferBindCount*: uint32
    pBufferBinds*: ptr VkSparseBufferMemoryBindInfo
    imageOpaqueBindCount*: uint32
    pImageOpaqueBinds*: ptr VkSparseImageOpaqueMemoryBindInfo
    imageBindCount*: uint32
    pImageBinds*: ptr VkSparseImageMemoryBindInfo
    signalSemaphoreCount*: uint32
    pSignalSemaphores*: ptr VkSemaphore

  VkImageCopy* = object
    srcSubresource*: VkImageSubresourceLayers
    srcOffset*: VkOffset3D
    dstSubresource*: VkImageSubresourceLayers
    dstOffset*: VkOffset3D
    extent*: VkExtent3D

  VkImageBlit* = object
    srcSubresource*: VkImageSubresourceLayers
    srcOffsets*: array[2, VkOffset3D]
    dstSubresource*: VkImageSubresourceLayers
    dstOffsets*: array[2, VkOffset3D]

  VkBufferImageCopy* = object
    bufferOffset*: VkDeviceSize
    bufferRowLength*: uint32
    bufferImageHeight*: uint32
    imageSubresource*: VkImageSubresourceLayers
    imageOffset*: VkOffset3D
    imageExtent*: VkExtent3D

  VkStridedDeviceAddressRangeKHR* = object
    address*: VkDeviceAddress
    size*: VkDeviceSize
    stride*: VkDeviceSize

  VkCopyMemoryIndirectCommandKHR* = object
    srcAddress*: VkDeviceAddress
    dstAddress*: VkDeviceAddress
    size*: VkDeviceSize

  VkCopyMemoryIndirectInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    srcCopyFlags*: VkAddressCopyFlagsKHR
    dstCopyFlags*: VkAddressCopyFlagsKHR
    copyCount*: uint32
    copyAddressRange*: VkStridedDeviceAddressRangeKHR

  VkCopyMemoryToImageIndirectCommandKHR* = object
    srcAddress*: VkDeviceAddress
    bufferRowLength*: uint32
    bufferImageHeight*: uint32
    imageSubresource*: VkImageSubresourceLayers
    imageOffset*: VkOffset3D
    imageExtent*: VkExtent3D

  VkCopyMemoryToImageIndirectInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    srcCopyFlags*: VkAddressCopyFlagsKHR
    copyCount*: uint32
    copyAddressRange*: VkStridedDeviceAddressRangeKHR
    dstImage*: VkImage
    dstImageLayout*: VkImageLayout
    pImageSubresources*: ptr VkImageSubresourceLayers

  VkImageResolve* = object
    srcSubresource*: VkImageSubresourceLayers
    srcOffset*: VkOffset3D
    dstSubresource*: VkImageSubresourceLayers
    dstOffset*: VkOffset3D
    extent*: VkExtent3D

  VkShaderModuleCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkShaderModuleCreateFlags
    codeSize*: csize_t
    pCode*: ptr uint32

  VkDescriptorSetLayoutBinding* = object
    binding*: uint32
    descriptorType*: VkDescriptorType
    descriptorCount*: uint32
    stageFlags*: VkShaderStageFlags
    pImmutableSamplers*: ptr VkSampler

  VkDescriptorSetLayoutCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDescriptorSetLayoutCreateFlags
    bindingCount*: uint32
    pBindings*: ptr VkDescriptorSetLayoutBinding

  VkDescriptorPoolSize* = object
    `type`*: VkDescriptorType
    descriptorCount*: uint32

  VkDescriptorPoolCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDescriptorPoolCreateFlags
    maxSets*: uint32
    poolSizeCount*: uint32
    pPoolSizes*: ptr VkDescriptorPoolSize

  VkDescriptorSetAllocateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    descriptorPool*: VkDescriptorPool
    descriptorSetCount*: uint32
    pSetLayouts*: ptr VkDescriptorSetLayout

  VkSpecializationMapEntry* = object
    constantID*: uint32
    offset*: uint32
    size*: csize_t

  VkSpecializationInfo* = object
    mapEntryCount*: uint32
    pMapEntries*: ptr VkSpecializationMapEntry
    dataSize*: csize_t
    pData*: pointer

  VkPipelineShaderStageCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineShaderStageCreateFlags
    stage*: VkShaderStageFlagBits
    module*: VkShaderModule
    pName*: cstring
    pSpecializationInfo*: ptr VkSpecializationInfo

  VkComputePipelineCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineCreateFlags
    stage*: VkPipelineShaderStageCreateInfo
    layout*: VkPipelineLayout
    basePipelineHandle*: VkPipeline
    basePipelineIndex*: int32

  VkComputePipelineIndirectBufferInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceAddress*: VkDeviceAddress
    size*: VkDeviceSize
    pipelineDeviceAddressCaptureReplay*: VkDeviceAddress

  VkPipelineCreateFlags2CreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineCreateFlags2

  VkVertexInputBindingDescription* = object
    binding*: uint32
    stride*: uint32
    inputRate*: VkVertexInputRate

  VkVertexInputAttributeDescription* = object
    location*: uint32
    binding*: uint32
    format*: VkFormat
    offset*: uint32

  VkPipelineVertexInputStateCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineVertexInputStateCreateFlags
    vertexBindingDescriptionCount*: uint32
    pVertexBindingDescriptions*: ptr VkVertexInputBindingDescription
    vertexAttributeDescriptionCount*: uint32
    pVertexAttributeDescriptions*: ptr VkVertexInputAttributeDescription

  VkPipelineInputAssemblyStateCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineInputAssemblyStateCreateFlags
    topology*: VkPrimitiveTopology
    primitiveRestartEnable*: VkBool32

  VkPipelineTessellationStateCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineTessellationStateCreateFlags
    patchControlPoints*: uint32

  VkPipelineViewportStateCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineViewportStateCreateFlags
    viewportCount*: uint32
    pViewports*: ptr VkViewport
    scissorCount*: uint32
    pScissors*: ptr VkRect2D

  VkPipelineRasterizationStateCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineRasterizationStateCreateFlags
    depthClampEnable*: VkBool32
    rasterizerDiscardEnable*: VkBool32
    polygonMode*: VkPolygonMode
    cullMode*: VkCullModeFlags
    frontFace*: VkFrontFace
    depthBiasEnable*: VkBool32
    depthBiasConstantFactor*: float32
    depthBiasClamp*: float32
    depthBiasSlopeFactor*: float32
    lineWidth*: float32

  VkPipelineMultisampleStateCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineMultisampleStateCreateFlags
    rasterizationSamples*: VkSampleCountFlagBits
    sampleShadingEnable*: VkBool32
    minSampleShading*: float32
    pSampleMask*: ptr VkSampleMask
    alphaToCoverageEnable*: VkBool32
    alphaToOneEnable*: VkBool32

  VkPipelineColorBlendAttachmentState* = object
    blendEnable*: VkBool32
    srcColorBlendFactor*: VkBlendFactor
    dstColorBlendFactor*: VkBlendFactor
    colorBlendOp*: VkBlendOp
    srcAlphaBlendFactor*: VkBlendFactor
    dstAlphaBlendFactor*: VkBlendFactor
    alphaBlendOp*: VkBlendOp
    colorWriteMask*: VkColorComponentFlags

  VkPipelineColorBlendStateCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineColorBlendStateCreateFlags
    logicOpEnable*: VkBool32
    logicOp*: VkLogicOp
    attachmentCount*: uint32
    pAttachments*: ptr VkPipelineColorBlendAttachmentState
    blendConstants*: array[4, float32]

  VkPipelineDynamicStateCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineDynamicStateCreateFlags
    dynamicStateCount*: uint32
    pDynamicStates*: ptr VkDynamicState

  VkStencilOpState* = object
    failOp*: VkStencilOp
    passOp*: VkStencilOp
    depthFailOp*: VkStencilOp
    compareOp*: VkCompareOp
    compareMask*: uint32
    writeMask*: uint32
    reference*: uint32

  VkPipelineDepthStencilStateCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineDepthStencilStateCreateFlags
    depthTestEnable*: VkBool32
    depthWriteEnable*: VkBool32
    depthCompareOp*: VkCompareOp
    depthBoundsTestEnable*: VkBool32
    stencilTestEnable*: VkBool32
    front*: VkStencilOpState
    back*: VkStencilOpState
    minDepthBounds*: float32
    maxDepthBounds*: float32

  VkGraphicsPipelineCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineCreateFlags
    stageCount*: uint32
    pStages*: ptr VkPipelineShaderStageCreateInfo
    pVertexInputState*: ptr VkPipelineVertexInputStateCreateInfo
    pInputAssemblyState*: ptr VkPipelineInputAssemblyStateCreateInfo
    pTessellationState*: ptr VkPipelineTessellationStateCreateInfo
    pViewportState*: ptr VkPipelineViewportStateCreateInfo
    pRasterizationState*: ptr VkPipelineRasterizationStateCreateInfo
    pMultisampleState*: ptr VkPipelineMultisampleStateCreateInfo
    pDepthStencilState*: ptr VkPipelineDepthStencilStateCreateInfo
    pColorBlendState*: ptr VkPipelineColorBlendStateCreateInfo
    pDynamicState*: ptr VkPipelineDynamicStateCreateInfo
    layout*: VkPipelineLayout
    renderPass*: VkRenderPass
    subpass*: uint32
    basePipelineHandle*: VkPipeline
    basePipelineIndex*: int32

  VkPipelineCacheCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineCacheCreateFlags
    initialDataSize*: csize_t
    pInitialData*: pointer

  VkPipelineCacheHeaderVersionOne* = object
    headerSize*: uint32
    headerVersion*: VkPipelineCacheHeaderVersion
    vendorID*: uint32
    deviceID*: uint32
    pipelineCacheUUID*: array[VK_UUID_SIZE, uint8]

  VkPipelineCacheStageValidationIndexEntry* = object
    codeSize*: uint64
    codeOffset*: uint64

  VkPipelineCacheSafetyCriticalIndexEntry* = object
    pipelineIdentifier*: array[VK_UUID_SIZE, uint8]
    pipelineMemorySize*: uint64
    jsonSize*: uint64
    jsonOffset*: uint64
    stageIndexCount*: uint32
    stageIndexStride*: uint32
    stageIndexOffset*: uint64

  VkPipelineCacheHeaderVersionSafetyCriticalOne* = object
    headerVersionOne*: VkPipelineCacheHeaderVersionOne
    validationVersion*: VkPipelineCacheValidationVersion
    implementationData*: uint32
    pipelineIndexCount*: uint32
    pipelineIndexStride*: uint32
    pipelineIndexOffset*: uint64

  VkPipelineCacheHeaderVersionDataGraphQCOM* = object
    headerSize*: uint32
    headerVersion*: VkPipelineCacheHeaderVersion
    cacheType*: VkDataGraphModelCacheTypeQCOM
    cacheVersion*: uint32
    toolchainVersion*: array[VK_DATA_GRAPH_MODEL_TOOLCHAIN_VERSION_LENGTH_QCOM, uint32]

  VkPushConstantRange* = object
    stageFlags*: VkShaderStageFlags
    offset*: uint32
    size*: uint32

  VkPipelineBinaryCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pKeysAndDataInfo*: ptr VkPipelineBinaryKeysAndDataKHR
    pipeline*: VkPipeline
    pPipelineCreateInfo*: ptr VkPipelineCreateInfoKHR

  VkPipelineBinaryHandlesInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineBinaryCount*: uint32
    pPipelineBinaries*: ptr VkPipelineBinaryKHR

  VkPipelineBinaryDataKHR* = object
    dataSize*: csize_t
    pData*: pointer

  VkPipelineBinaryKeysAndDataKHR* = object
    binaryCount*: uint32
    pPipelineBinaryKeys*: ptr VkPipelineBinaryKeyKHR
    pPipelineBinaryData*: ptr VkPipelineBinaryDataKHR

  VkPipelineBinaryKeyKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    keySize*: uint32
    key*: array[VK_MAX_PIPELINE_BINARY_KEY_SIZE_KHR, uint8]

  VkPipelineBinaryInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    binaryCount*: uint32
    pPipelineBinaries*: ptr VkPipelineBinaryKHR

  VkReleaseCapturedPipelineDataInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pipeline*: VkPipeline

  VkPipelineBinaryDataInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineBinary*: VkPipelineBinaryKHR

  VkPipelineCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer

  VkPipelineLayoutCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineLayoutCreateFlags
    setLayoutCount*: uint32
    pSetLayouts*: ptr VkDescriptorSetLayout
    pushConstantRangeCount*: uint32
    pPushConstantRanges*: ptr VkPushConstantRange

  VkSamplerCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkSamplerCreateFlags
    magFilter*: VkFilter
    minFilter*: VkFilter
    mipmapMode*: VkSamplerMipmapMode
    addressModeU*: VkSamplerAddressMode
    addressModeV*: VkSamplerAddressMode
    addressModeW*: VkSamplerAddressMode
    mipLodBias*: float32
    anisotropyEnable*: VkBool32
    maxAnisotropy*: float32
    compareEnable*: VkBool32
    compareOp*: VkCompareOp
    minLod*: float32
    maxLod*: float32
    borderColor*: VkBorderColor
    unnormalizedCoordinates*: VkBool32

  VkCommandPoolCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkCommandPoolCreateFlags
    queueFamilyIndex*: uint32

  VkCommandBufferAllocateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    commandPool*: VkCommandPool
    level*: VkCommandBufferLevel
    commandBufferCount*: uint32

  VkCommandBufferInheritanceInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    renderPass*: VkRenderPass
    subpass*: uint32
    framebuffer*: VkFramebuffer
    occlusionQueryEnable*: VkBool32
    queryFlags*: VkQueryControlFlags
    pipelineStatistics*: VkQueryPipelineStatisticFlags

  VkCommandBufferBeginInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkCommandBufferUsageFlags
    pInheritanceInfo*: ptr VkCommandBufferInheritanceInfo

  VkRenderPassBeginInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    renderPass*: VkRenderPass
    framebuffer*: VkFramebuffer
    renderArea*: VkRect2D
    clearValueCount*: uint32
    pClearValues*: ptr VkClearValue

  VkClearColorValue* {.union.} = object
    float32*: array[4, float32]
    int32*: array[4, int32]
    uint32*: array[4, uint32]

  VkClearDepthStencilValue* = object
    depth*: float32
    stencil*: uint32

  VkClearValue* {.union.} = object
    color*: VkClearColorValue
    depthStencil*: VkClearDepthStencilValue

  VkClearAttachment* = object
    aspectMask*: VkImageAspectFlags
    colorAttachment*: uint32
    clearValue*: VkClearValue

  VkAttachmentDescription* = object
    flags*: VkAttachmentDescriptionFlags
    format*: VkFormat
    samples*: VkSampleCountFlagBits
    loadOp*: VkAttachmentLoadOp
    storeOp*: VkAttachmentStoreOp
    stencilLoadOp*: VkAttachmentLoadOp
    stencilStoreOp*: VkAttachmentStoreOp
    initialLayout*: VkImageLayout
    finalLayout*: VkImageLayout

  VkAttachmentReference* = object
    attachment*: uint32
    layout*: VkImageLayout

  VkSubpassDescription* = object
    flags*: VkSubpassDescriptionFlags
    pipelineBindPoint*: VkPipelineBindPoint
    inputAttachmentCount*: uint32
    pInputAttachments*: ptr VkAttachmentReference
    colorAttachmentCount*: uint32
    pColorAttachments*: ptr VkAttachmentReference
    pResolveAttachments*: ptr VkAttachmentReference
    pDepthStencilAttachment*: ptr VkAttachmentReference
    preserveAttachmentCount*: uint32
    pPreserveAttachments*: ptr uint32

  VkSubpassDependency* = object
    srcSubpass*: uint32
    dstSubpass*: uint32
    srcStageMask*: VkPipelineStageFlags
    dstStageMask*: VkPipelineStageFlags
    srcAccessMask*: VkAccessFlags
    dstAccessMask*: VkAccessFlags
    dependencyFlags*: VkDependencyFlags

  VkRenderPassCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkRenderPassCreateFlags
    attachmentCount*: uint32
    pAttachments*: ptr VkAttachmentDescription
    subpassCount*: uint32
    pSubpasses*: ptr VkSubpassDescription
    dependencyCount*: uint32
    pDependencies*: ptr VkSubpassDependency

  VkEventCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkEventCreateFlags

  VkFenceCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkFenceCreateFlags

  VkPhysicalDeviceFeatures* = object
    robustBufferAccess*: VkBool32
    fullDrawIndexUint32*: VkBool32
    imageCubeArray*: VkBool32
    independentBlend*: VkBool32
    geometryShader*: VkBool32
    tessellationShader*: VkBool32
    sampleRateShading*: VkBool32
    dualSrcBlend*: VkBool32
    logicOp*: VkBool32
    multiDrawIndirect*: VkBool32
    drawIndirectFirstInstance*: VkBool32
    depthClamp*: VkBool32
    depthBiasClamp*: VkBool32
    fillModeNonSolid*: VkBool32
    depthBounds*: VkBool32
    wideLines*: VkBool32
    largePoints*: VkBool32
    alphaToOne*: VkBool32
    multiViewport*: VkBool32
    samplerAnisotropy*: VkBool32
    textureCompressionETC2*: VkBool32
    textureCompressionASTC_LDR*: VkBool32
    textureCompressionBC*: VkBool32
    occlusionQueryPrecise*: VkBool32
    pipelineStatisticsQuery*: VkBool32
    vertexPipelineStoresAndAtomics*: VkBool32
    fragmentStoresAndAtomics*: VkBool32
    shaderTessellationAndGeometryPointSize*: VkBool32
    shaderImageGatherExtended*: VkBool32
    shaderStorageImageExtendedFormats*: VkBool32
    shaderStorageImageMultisample*: VkBool32
    shaderStorageImageReadWithoutFormat*: VkBool32
    shaderStorageImageWriteWithoutFormat*: VkBool32
    shaderUniformBufferArrayDynamicIndexing*: VkBool32
    shaderSampledImageArrayDynamicIndexing*: VkBool32
    shaderStorageBufferArrayDynamicIndexing*: VkBool32
    shaderStorageImageArrayDynamicIndexing*: VkBool32
    shaderClipDistance*: VkBool32
    shaderCullDistance*: VkBool32
    shaderFloat64*: VkBool32
    shaderInt64*: VkBool32
    shaderInt16*: VkBool32
    shaderResourceResidency*: VkBool32
    shaderResourceMinLod*: VkBool32
    sparseBinding*: VkBool32
    sparseResidencyBuffer*: VkBool32
    sparseResidencyImage2D*: VkBool32
    sparseResidencyImage3D*: VkBool32
    sparseResidency2Samples*: VkBool32
    sparseResidency4Samples*: VkBool32
    sparseResidency8Samples*: VkBool32
    sparseResidency16Samples*: VkBool32
    sparseResidencyAliased*: VkBool32
    variableMultisampleRate*: VkBool32
    inheritedQueries*: VkBool32

  VkPhysicalDeviceSparseProperties* = object
    residencyStandard2DBlockShape*: VkBool32
    residencyStandard2DMultisampleBlockShape*: VkBool32
    residencyStandard3DBlockShape*: VkBool32
    residencyAlignedMipSize*: VkBool32
    residencyNonResidentStrict*: VkBool32

  VkPhysicalDeviceLimits* = object
    maxImageDimension1D*: uint32
    maxImageDimension2D*: uint32
    maxImageDimension3D*: uint32
    maxImageDimensionCube*: uint32
    maxImageArrayLayers*: uint32
    maxTexelBufferElements*: uint32
    maxUniformBufferRange*: uint32
    maxStorageBufferRange*: uint32
    maxPushConstantsSize*: uint32
    maxMemoryAllocationCount*: uint32
    maxSamplerAllocationCount*: uint32
    bufferImageGranularity*: VkDeviceSize
    sparseAddressSpaceSize*: VkDeviceSize
    maxBoundDescriptorSets*: uint32
    maxPerStageDescriptorSamplers*: uint32
    maxPerStageDescriptorUniformBuffers*: uint32
    maxPerStageDescriptorStorageBuffers*: uint32
    maxPerStageDescriptorSampledImages*: uint32
    maxPerStageDescriptorStorageImages*: uint32
    maxPerStageDescriptorInputAttachments*: uint32
    maxPerStageResources*: uint32
    maxDescriptorSetSamplers*: uint32
    maxDescriptorSetUniformBuffers*: uint32
    maxDescriptorSetUniformBuffersDynamic*: uint32
    maxDescriptorSetStorageBuffers*: uint32
    maxDescriptorSetStorageBuffersDynamic*: uint32
    maxDescriptorSetSampledImages*: uint32
    maxDescriptorSetStorageImages*: uint32
    maxDescriptorSetInputAttachments*: uint32
    maxVertexInputAttributes*: uint32
    maxVertexInputBindings*: uint32
    maxVertexInputAttributeOffset*: uint32
    maxVertexInputBindingStride*: uint32
    maxVertexOutputComponents*: uint32
    maxTessellationGenerationLevel*: uint32
    maxTessellationPatchSize*: uint32
    maxTessellationControlPerVertexInputComponents*: uint32
    maxTessellationControlPerVertexOutputComponents*: uint32
    maxTessellationControlPerPatchOutputComponents*: uint32
    maxTessellationControlTotalOutputComponents*: uint32
    maxTessellationEvaluationInputComponents*: uint32
    maxTessellationEvaluationOutputComponents*: uint32
    maxGeometryShaderInvocations*: uint32
    maxGeometryInputComponents*: uint32
    maxGeometryOutputComponents*: uint32
    maxGeometryOutputVertices*: uint32
    maxGeometryTotalOutputComponents*: uint32
    maxFragmentInputComponents*: uint32
    maxFragmentOutputAttachments*: uint32
    maxFragmentDualSrcAttachments*: uint32
    maxFragmentCombinedOutputResources*: uint32
    maxComputeSharedMemorySize*: uint32
    maxComputeWorkGroupCount*: array[3, uint32]
    maxComputeWorkGroupInvocations*: uint32
    maxComputeWorkGroupSize*: array[3, uint32]
    subPixelPrecisionBits*: uint32
    subTexelPrecisionBits*: uint32
    mipmapPrecisionBits*: uint32
    maxDrawIndexedIndexValue*: uint32
    maxDrawIndirectCount*: uint32
    maxSamplerLodBias*: float32
    maxSamplerAnisotropy*: float32
    maxViewports*: uint32
    maxViewportDimensions*: array[2, uint32]
    viewportBoundsRange*: array[2, float32]
    viewportSubPixelBits*: uint32
    minMemoryMapAlignment*: csize_t
    minTexelBufferOffsetAlignment*: VkDeviceSize
    minUniformBufferOffsetAlignment*: VkDeviceSize
    minStorageBufferOffsetAlignment*: VkDeviceSize
    minTexelOffset*: int32
    maxTexelOffset*: uint32
    minTexelGatherOffset*: int32
    maxTexelGatherOffset*: uint32
    minInterpolationOffset*: float32
    maxInterpolationOffset*: float32
    subPixelInterpolationOffsetBits*: uint32
    maxFramebufferWidth*: uint32
    maxFramebufferHeight*: uint32
    maxFramebufferLayers*: uint32
    framebufferColorSampleCounts*: VkSampleCountFlags
    framebufferDepthSampleCounts*: VkSampleCountFlags
    framebufferStencilSampleCounts*: VkSampleCountFlags
    framebufferNoAttachmentsSampleCounts*: VkSampleCountFlags
    maxColorAttachments*: uint32
    sampledImageColorSampleCounts*: VkSampleCountFlags
    sampledImageIntegerSampleCounts*: VkSampleCountFlags
    sampledImageDepthSampleCounts*: VkSampleCountFlags
    sampledImageStencilSampleCounts*: VkSampleCountFlags
    storageImageSampleCounts*: VkSampleCountFlags
    maxSampleMaskWords*: uint32
    timestampComputeAndGraphics*: VkBool32
    timestampPeriod*: float32
    maxClipDistances*: uint32
    maxCullDistances*: uint32
    maxCombinedClipAndCullDistances*: uint32
    discreteQueuePriorities*: uint32
    pointSizeRange*: array[2, float32]
    lineWidthRange*: array[2, float32]
    pointSizeGranularity*: float32
    lineWidthGranularity*: float32
    strictLines*: VkBool32
    standardSampleLocations*: VkBool32
    optimalBufferCopyOffsetAlignment*: VkDeviceSize
    optimalBufferCopyRowPitchAlignment*: VkDeviceSize
    nonCoherentAtomSize*: VkDeviceSize

  VkSemaphoreCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkSemaphoreCreateFlags

  VkQueryPoolCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkQueryPoolCreateFlags
    queryType*: VkQueryType
    queryCount*: uint32
    pipelineStatistics*: VkQueryPipelineStatisticFlags

  VkFramebufferCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkFramebufferCreateFlags
    renderPass*: VkRenderPass
    attachmentCount*: uint32
    pAttachments*: ptr VkImageView
    width*: uint32
    height*: uint32
    layers*: uint32

  VkDrawIndirectCommand* = object
    vertexCount*: uint32
    instanceCount*: uint32
    firstVertex*: uint32
    firstInstance*: uint32

  VkDrawIndexedIndirectCommand* = object
    indexCount*: uint32
    instanceCount*: uint32
    firstIndex*: uint32
    vertexOffset*: int32
    firstInstance*: uint32

  VkDispatchIndirectCommand* = object
    x*: uint32
    y*: uint32
    z*: uint32

  VkMultiDrawInfoEXT* = object
    firstVertex*: uint32
    vertexCount*: uint32

  VkMultiDrawIndexedInfoEXT* = object
    firstIndex*: uint32
    indexCount*: uint32
    vertexOffset*: int32

  VkSubmitInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    waitSemaphoreCount*: uint32
    pWaitSemaphores*: ptr VkSemaphore
    pWaitDstStageMask*: ptr VkPipelineStageFlags
    commandBufferCount*: uint32
    pCommandBuffers*: ptr VkCommandBuffer
    signalSemaphoreCount*: uint32
    pSignalSemaphores*: ptr VkSemaphore

  VkDisplayPropertiesKHR* = object
    display*: VkDisplayKHR
    displayName*: cstring
    physicalDimensions*: VkExtent2D
    physicalResolution*: VkExtent2D
    supportedTransforms*: VkSurfaceTransformFlagsKHR
    planeReorderPossible*: VkBool32
    persistentContent*: VkBool32

  VkDisplayPlanePropertiesKHR* = object
    currentDisplay*: VkDisplayKHR
    currentStackIndex*: uint32

  VkDisplayModeParametersKHR* = object
    visibleRegion*: VkExtent2D
    refreshRate*: uint32

  VkDisplayModePropertiesKHR* = object
    displayMode*: VkDisplayModeKHR
    parameters*: VkDisplayModeParametersKHR

  VkDisplayModeCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDisplayModeCreateFlagsKHR
    parameters*: VkDisplayModeParametersKHR

  VkDisplayPlaneCapabilitiesKHR* = object
    supportedAlpha*: VkDisplayPlaneAlphaFlagsKHR
    minSrcPosition*: VkOffset2D
    maxSrcPosition*: VkOffset2D
    minSrcExtent*: VkExtent2D
    maxSrcExtent*: VkExtent2D
    minDstPosition*: VkOffset2D
    maxDstPosition*: VkOffset2D
    minDstExtent*: VkExtent2D
    maxDstExtent*: VkExtent2D

  VkDisplaySurfaceCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDisplaySurfaceCreateFlagsKHR
    displayMode*: VkDisplayModeKHR
    planeIndex*: uint32
    planeStackIndex*: uint32
    transform*: VkSurfaceTransformFlagBitsKHR
    globalAlpha*: float32
    alphaMode*: VkDisplayPlaneAlphaFlagBitsKHR
    imageExtent*: VkExtent2D

  VkDisplaySurfaceStereoCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    stereoType*: VkDisplaySurfaceStereoTypeNV

  VkDisplayPresentInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    srcRect*: VkRect2D
    dstRect*: VkRect2D
    persistent*: VkBool32

  VkSurfaceCapabilitiesKHR* = object
    minImageCount*: uint32
    maxImageCount*: uint32
    currentExtent*: VkExtent2D
    minImageExtent*: VkExtent2D
    maxImageExtent*: VkExtent2D
    maxImageArrayLayers*: uint32
    supportedTransforms*: VkSurfaceTransformFlagsKHR
    currentTransform*: VkSurfaceTransformFlagBitsKHR
    supportedCompositeAlpha*: VkCompositeAlphaFlagsKHR
    supportedUsageFlags*: VkImageUsageFlags

  VkAndroidSurfaceCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkAndroidSurfaceCreateFlagsKHR
    window*: pointer

  VkViSurfaceCreateInfoNN* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkViSurfaceCreateFlagsNN
    window*: pointer

  VkWaylandSurfaceCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkWaylandSurfaceCreateFlagsKHR
    display*: pointer
    surface*: pointer

  VkUbmSurfaceCreateInfoSEC* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkUbmSurfaceCreateFlagsSEC
    device*: pointer
    surface*: pointer

  VkWin32SurfaceCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkWin32SurfaceCreateFlagsKHR
    hinstance*: pointer
    hwnd*: pointer

  VkXlibSurfaceCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkXlibSurfaceCreateFlagsKHR
    dpy*: pointer
    window*: uint64

  VkXcbSurfaceCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkXcbSurfaceCreateFlagsKHR
    connection*: pointer
    window*: uint32

  VkDirectFBSurfaceCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDirectFBSurfaceCreateFlagsEXT
    dfb*: pointer
    surface*: pointer

  VkImagePipeSurfaceCreateInfoFUCHSIA* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkImagePipeSurfaceCreateFlagsFUCHSIA
    imagePipeHandle*: uint32

  VkStreamDescriptorSurfaceCreateInfoGGP* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkStreamDescriptorSurfaceCreateFlagsGGP
    streamDescriptor*: uint32

  VkScreenSurfaceCreateInfoQNX* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkScreenSurfaceCreateFlagsQNX
    context*: pointer
    window*: pointer

  VkSurfaceFormatKHR* = object
    format*: VkFormat
    colorSpace*: VkColorSpaceKHR

  VkSwapchainCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkSwapchainCreateFlagsKHR
    surface*: VkSurfaceKHR
    minImageCount*: uint32
    imageFormat*: VkFormat
    imageColorSpace*: VkColorSpaceKHR
    imageExtent*: VkExtent2D
    imageArrayLayers*: uint32
    imageUsage*: VkImageUsageFlags
    imageSharingMode*: VkSharingMode
    queueFamilyIndexCount*: uint32
    pQueueFamilyIndices*: ptr uint32
    preTransform*: VkSurfaceTransformFlagBitsKHR
    compositeAlpha*: VkCompositeAlphaFlagBitsKHR
    presentMode*: VkPresentModeKHR
    clipped*: VkBool32
    oldSwapchain*: VkSwapchainKHR

  VkPresentInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    waitSemaphoreCount*: uint32
    pWaitSemaphores*: ptr VkSemaphore
    swapchainCount*: uint32
    pSwapchains*: ptr VkSwapchainKHR
    pImageIndices*: ptr uint32
    pResults*: ptr VkResult

  VkDebugReportCallbackCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDebugReportFlagsEXT
    pfnCallback*: PFN_vkDebugReportCallbackEXT
    pUserData*: pointer

  VkValidationFlagsEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    disabledValidationCheckCount*: uint32
    pDisabledValidationChecks*: ptr VkValidationCheckEXT

  VkValidationFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    enabledValidationFeatureCount*: uint32
    pEnabledValidationFeatures*: ptr VkValidationFeatureEnableEXT
    disabledValidationFeatureCount*: uint32
    pDisabledValidationFeatures*: ptr VkValidationFeatureDisableEXT

  VkLayerSettingsCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    settingCount*: uint32
    pSettings*: ptr VkLayerSettingEXT

  VkLayerSettingEXT* = object
    pLayerName*: cstring
    pSettingName*: cstring
    `type`*: VkLayerSettingTypeEXT
    valueCount*: uint32
    pValues*: pointer

  VkApplicationParametersEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    vendorID*: uint32
    deviceID*: uint32
    key*: uint32
    value*: uint64

  VkPipelineRasterizationStateRasterizationOrderAMD* = object
    sType*: VkStructureType
    pNext*: pointer
    rasterizationOrder*: VkRasterizationOrderAMD

  VkDebugMarkerObjectNameInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    objectType*: VkDebugReportObjectTypeEXT
    `object`*: uint64
    pObjectName*: cstring

  VkDebugMarkerObjectTagInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    objectType*: VkDebugReportObjectTypeEXT
    `object`*: uint64
    tagName*: uint64
    tagSize*: csize_t
    pTag*: pointer

  VkDebugMarkerMarkerInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    pMarkerName*: cstring
    color*: array[4, float32]

  VkDedicatedAllocationImageCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    dedicatedAllocation*: VkBool32

  VkDedicatedAllocationBufferCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    dedicatedAllocation*: VkBool32

  VkDedicatedAllocationMemoryAllocateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    image*: VkImage
    buffer*: VkBuffer

  VkExternalImageFormatPropertiesNV* = object
    imageFormatProperties*: VkImageFormatProperties
    externalMemoryFeatures*: VkExternalMemoryFeatureFlagsNV
    exportFromImportedHandleTypes*: VkExternalMemoryHandleTypeFlagsNV
    compatibleHandleTypes*: VkExternalMemoryHandleTypeFlagsNV

  VkExternalMemoryImageCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    handleTypes*: VkExternalMemoryHandleTypeFlagsNV

  VkExportMemoryAllocateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    handleTypes*: VkExternalMemoryHandleTypeFlagsNV

  VkImportMemoryWin32HandleInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    handleType*: VkExternalMemoryHandleTypeFlagsNV
    handle*: pointer

  VkExportMemoryWin32HandleInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    pAttributes*: pointer
    dwAccess*: uint32

  VkExportMemorySciBufInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    pAttributes*: pointer

  VkImportMemorySciBufInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    handleType*: VkExternalMemoryHandleTypeFlagBits
    handle*: pointer

  VkMemoryGetSciBufInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    memory*: VkDeviceMemory
    handleType*: VkExternalMemoryHandleTypeFlagBits

  VkMemorySciBufPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    memoryTypeBits*: uint32

  VkPhysicalDeviceExternalMemorySciBufFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    sciBufImport*: VkBool32
    sciBufExport*: VkBool32

  VkWin32KeyedMutexAcquireReleaseInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    acquireCount*: uint32
    pAcquireSyncs*: ptr VkDeviceMemory
    pAcquireKeys*: ptr uint64
    pAcquireTimeoutMilliseconds*: ptr uint32
    releaseCount*: uint32
    pReleaseSyncs*: ptr VkDeviceMemory
    pReleaseKeys*: ptr uint64

  VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceGeneratedCommands*: VkBool32

  VkPushConstantBankInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    bank*: uint32

  VkPhysicalDevicePushConstantBankFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    pushConstantBank*: VkBool32

  VkPhysicalDevicePushConstantBankPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    maxGraphicsPushConstantBanks*: uint32
    maxComputePushConstantBanks*: uint32
    maxGraphicsPushDataBanks*: uint32
    maxComputePushDataBanks*: uint32

  VkPhysicalDeviceDeviceGeneratedCommandsComputeFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceGeneratedCompute*: VkBool32
    deviceGeneratedComputePipelines*: VkBool32
    deviceGeneratedComputeCaptureReplay*: VkBool32

  VkDevicePrivateDataCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    privateDataSlotRequestCount*: uint32

  VkPrivateDataSlotCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPrivateDataSlotCreateFlags

  VkPhysicalDevicePrivateDataFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    privateData*: VkBool32

  VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    maxGraphicsShaderGroupCount*: uint32
    maxIndirectSequenceCount*: uint32
    maxIndirectCommandsTokenCount*: uint32
    maxIndirectCommandsStreamCount*: uint32
    maxIndirectCommandsTokenOffset*: uint32
    maxIndirectCommandsStreamStride*: uint32
    minSequencesCountBufferOffsetAlignment*: uint32
    minSequencesIndexBufferOffsetAlignment*: uint32
    minIndirectCommandsBufferOffsetAlignment*: uint32

  VkPhysicalDeviceClusterAccelerationStructureFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    clusterAccelerationStructure*: VkBool32

  VkPhysicalDeviceClusterAccelerationStructurePropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    maxVerticesPerCluster*: uint32
    maxTrianglesPerCluster*: uint32
    clusterScratchByteAlignment*: uint32
    clusterByteAlignment*: uint32
    clusterTemplateByteAlignment*: uint32
    clusterBottomLevelByteAlignment*: uint32
    clusterTemplateBoundsByteAlignment*: uint32
    maxClusterGeometryIndex*: uint32

  VkStridedDeviceAddressNV* = object
    startAddress*: VkDeviceAddress
    strideInBytes*: VkDeviceSize

  VkRayTracingPipelineClusterAccelerationStructureCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    allowClusterAccelerationStructure*: VkBool32

  VkClusterAccelerationStructureGeometryIndexAndGeometryFlagsNV* = object
    geometryIndex*: uint32
    reserved*: uint32
    geometryFlags*: uint32

  VkClusterAccelerationStructureMoveObjectsInfoNV* = object
    srcAccelerationStructure*: VkDeviceAddress

  VkClusterAccelerationStructureBuildClustersBottomLevelInfoNV* = object
    clusterReferencesCount*: uint32
    clusterReferencesStride*: uint32
    clusterReferences*: VkDeviceAddress

  VkClusterAccelerationStructureGetTemplateIndicesInfoNV* = object
    clusterTemplateAddress*: VkDeviceAddress

  VkClusterAccelerationStructureBuildTriangleClusterInfoNV* = object
    clusterID*: uint32
    clusterFlags*: VkClusterAccelerationStructureClusterFlagsNV
    triangleCount*: uint32
    vertexCount*: uint32
    positionTruncateBitCount*: uint32
    indexType*: uint32
    opacityMicromapIndexType*: uint32
    baseGeometryIndexAndGeometryFlags*: VkClusterAccelerationStructureGeometryIndexAndGeometryFlagsNV
    indexBufferStride*: uint16
    vertexBufferStride*: uint16
    geometryIndexAndFlagsBufferStride*: uint16
    opacityMicromapIndexBufferStride*: uint16
    indexBuffer*: VkDeviceAddress
    vertexBuffer*: VkDeviceAddress
    geometryIndexAndFlagsBuffer*: VkDeviceAddress
    opacityMicromapArray*: VkDeviceAddress
    opacityMicromapIndexBuffer*: VkDeviceAddress

  VkClusterAccelerationStructureBuildTriangleClusterTemplateInfoNV* = object
    clusterID*: uint32
    clusterFlags*: VkClusterAccelerationStructureClusterFlagsNV
    triangleCount*: uint32
    vertexCount*: uint32
    positionTruncateBitCount*: uint32
    indexType*: uint32
    opacityMicromapIndexType*: uint32
    baseGeometryIndexAndGeometryFlags*: VkClusterAccelerationStructureGeometryIndexAndGeometryFlagsNV
    indexBufferStride*: uint16
    vertexBufferStride*: uint16
    geometryIndexAndFlagsBufferStride*: uint16
    opacityMicromapIndexBufferStride*: uint16
    indexBuffer*: VkDeviceAddress
    vertexBuffer*: VkDeviceAddress
    geometryIndexAndFlagsBuffer*: VkDeviceAddress
    opacityMicromapArray*: VkDeviceAddress
    opacityMicromapIndexBuffer*: VkDeviceAddress
    instantiationBoundingBoxLimit*: VkDeviceAddress

  VkClusterAccelerationStructureInstantiateClusterInfoNV* = object
    clusterIdOffset*: uint32
    geometryIndexOffset*: uint32
    reserved*: uint32
    clusterTemplateAddress*: VkDeviceAddress
    vertexBuffer*: VkStridedDeviceAddressNV

  VkClusterAccelerationStructureClustersBottomLevelInputNV* = object
    sType*: VkStructureType
    pNext*: pointer
    maxTotalClusterCount*: uint32
    maxClusterCountPerAccelerationStructure*: uint32

  VkClusterAccelerationStructureTriangleClusterInputNV* = object
    sType*: VkStructureType
    pNext*: pointer
    vertexFormat*: VkFormat
    maxGeometryIndexValue*: uint32
    maxClusterUniqueGeometryCount*: uint32
    maxClusterTriangleCount*: uint32
    maxClusterVertexCount*: uint32
    maxTotalTriangleCount*: uint32
    maxTotalVertexCount*: uint32
    minPositionTruncateBitCount*: uint32

  VkClusterAccelerationStructureMoveObjectsInputNV* = object
    sType*: VkStructureType
    pNext*: pointer
    `type`*: VkClusterAccelerationStructureTypeNV
    noMoveOverlap*: VkBool32
    maxMovedBytes*: VkDeviceSize

  VkClusterAccelerationStructureOpInputNV* {.union.} = object
    pClustersBottomLevel*: ptr VkClusterAccelerationStructureClustersBottomLevelInputNV
    pTriangleClusters*: ptr VkClusterAccelerationStructureTriangleClusterInputNV
    pMoveObjects*: ptr VkClusterAccelerationStructureMoveObjectsInputNV

  VkClusterAccelerationStructureInputInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    maxAccelerationStructureCount*: uint32
    flags*: VkBuildAccelerationStructureFlagsKHR
    opType*: VkClusterAccelerationStructureOpTypeNV
    opMode*: VkClusterAccelerationStructureOpModeNV
    opInput*: VkClusterAccelerationStructureOpInputNV

  VkClusterAccelerationStructureCommandsInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    input*: VkClusterAccelerationStructureInputInfoNV
    dstImplicitData*: VkDeviceAddress
    scratchData*: VkDeviceAddress
    dstAddressesArray*: VkStridedDeviceAddressRegionKHR
    dstSizesArray*: VkStridedDeviceAddressRegionKHR
    srcInfosArray*: VkStridedDeviceAddressRegionKHR
    srcInfosCount*: VkDeviceAddress
    addressResolutionFlags*: VkClusterAccelerationStructureAddressResolutionFlagsNV

  VkPhysicalDeviceMultiDrawPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    maxMultiDrawCount*: uint32

  VkGraphicsShaderGroupCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    stageCount*: uint32
    pStages*: ptr VkPipelineShaderStageCreateInfo
    pVertexInputState*: ptr VkPipelineVertexInputStateCreateInfo
    pTessellationState*: ptr VkPipelineTessellationStateCreateInfo

  VkGraphicsPipelineShaderGroupsCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    groupCount*: uint32
    pGroups*: ptr VkGraphicsShaderGroupCreateInfoNV
    pipelineCount*: uint32
    pPipelines*: ptr VkPipeline

  VkBindShaderGroupIndirectCommandNV* = object
    groupIndex*: uint32

  VkBindIndexBufferIndirectCommandNV* = object
    bufferAddress*: VkDeviceAddress
    size*: uint32
    indexType*: VkIndexType

  VkBindVertexBufferIndirectCommandNV* = object
    bufferAddress*: VkDeviceAddress
    size*: uint32
    stride*: uint32

  VkSetStateFlagsIndirectCommandNV* = object
    data*: uint32

  VkIndirectCommandsStreamNV* = object
    buffer*: VkBuffer
    offset*: VkDeviceSize

  VkIndirectCommandsLayoutTokenNV* = object
    sType*: VkStructureType
    pNext*: pointer
    tokenType*: VkIndirectCommandsTokenTypeNV
    stream*: uint32
    offset*: uint32
    vertexBindingUnit*: uint32
    vertexDynamicStride*: VkBool32
    pushconstantPipelineLayout*: VkPipelineLayout
    pushconstantShaderStageFlags*: VkShaderStageFlags
    pushconstantOffset*: uint32
    pushconstantSize*: uint32
    indirectStateFlags*: VkIndirectStateFlagsNV
    indexTypeCount*: uint32
    pIndexTypes*: ptr VkIndexType
    pIndexTypeValues*: ptr uint32

  VkIndirectCommandsLayoutCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkIndirectCommandsLayoutUsageFlagsNV
    pipelineBindPoint*: VkPipelineBindPoint
    tokenCount*: uint32
    pTokens*: ptr VkIndirectCommandsLayoutTokenNV
    streamCount*: uint32
    pStreamStrides*: ptr uint32

  VkGeneratedCommandsInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineBindPoint*: VkPipelineBindPoint
    pipeline*: VkPipeline
    indirectCommandsLayout*: VkIndirectCommandsLayoutNV
    streamCount*: uint32
    pStreams*: ptr VkIndirectCommandsStreamNV
    sequencesCount*: uint32
    preprocessBuffer*: VkBuffer
    preprocessOffset*: VkDeviceSize
    preprocessSize*: VkDeviceSize
    sequencesCountBuffer*: VkBuffer
    sequencesCountOffset*: VkDeviceSize
    sequencesIndexBuffer*: VkBuffer
    sequencesIndexOffset*: VkDeviceSize

  VkGeneratedCommandsMemoryRequirementsInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineBindPoint*: VkPipelineBindPoint
    pipeline*: VkPipeline
    indirectCommandsLayout*: VkIndirectCommandsLayoutNV
    maxSequencesCount*: uint32

  VkPipelineIndirectDeviceAddressInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineBindPoint*: VkPipelineBindPoint
    pipeline*: VkPipeline

  VkBindPipelineIndirectCommandNV* = object
    pipelineAddress*: VkDeviceAddress

  VkPhysicalDeviceFeatures2* = object
    sType*: VkStructureType
    pNext*: pointer
    features*: VkPhysicalDeviceFeatures

  VkPhysicalDeviceProperties2* = object
    sType*: VkStructureType
    pNext*: pointer
    properties*: VkPhysicalDeviceProperties

  VkFormatProperties2* = object
    sType*: VkStructureType
    pNext*: pointer
    formatProperties*: VkFormatProperties

  VkImageFormatProperties2* = object
    sType*: VkStructureType
    pNext*: pointer
    imageFormatProperties*: VkImageFormatProperties

  VkPhysicalDeviceImageFormatInfo2* = object
    sType*: VkStructureType
    pNext*: pointer
    format*: VkFormat
    `type`*: VkImageType
    tiling*: VkImageTiling
    usage*: VkImageUsageFlags
    flags*: VkImageCreateFlags

  VkQueueFamilyProperties2* = object
    sType*: VkStructureType
    pNext*: pointer
    queueFamilyProperties*: VkQueueFamilyProperties

  VkPhysicalDeviceMemoryProperties2* = object
    sType*: VkStructureType
    pNext*: pointer
    memoryProperties*: VkPhysicalDeviceMemoryProperties

  VkSparseImageFormatProperties2* = object
    sType*: VkStructureType
    pNext*: pointer
    properties*: VkSparseImageFormatProperties

  VkPhysicalDeviceSparseImageFormatInfo2* = object
    sType*: VkStructureType
    pNext*: pointer
    format*: VkFormat
    `type`*: VkImageType
    samples*: VkSampleCountFlagBits
    usage*: VkImageUsageFlags
    tiling*: VkImageTiling

  VkPhysicalDevicePushDescriptorProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    maxPushDescriptors*: uint32

  VkConformanceVersion* = object
    major*: uint8
    minor*: uint8
    subminor*: uint8
    patch*: uint8

  VkPhysicalDeviceDriverProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    driverID*: VkDriverId
    driverName*: array[VK_MAX_DRIVER_NAME_SIZE, char]
    driverInfo*: array[VK_MAX_DRIVER_INFO_SIZE, char]
    conformanceVersion*: VkConformanceVersion

  VkPresentRegionsKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    swapchainCount*: uint32
    pRegions*: ptr VkPresentRegionKHR

  VkPresentRegionKHR* = object
    rectangleCount*: uint32
    pRectangles*: ptr VkRectLayerKHR

  VkRectLayerKHR* = object
    offset*: VkOffset2D
    extent*: VkExtent2D
    layer*: uint32

  VkPhysicalDeviceVariablePointersFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    variablePointersStorageBuffer*: VkBool32
    variablePointers*: VkBool32

  VkExternalMemoryProperties* = object
    externalMemoryFeatures*: VkExternalMemoryFeatureFlags
    exportFromImportedHandleTypes*: VkExternalMemoryHandleTypeFlags
    compatibleHandleTypes*: VkExternalMemoryHandleTypeFlags

  VkPhysicalDeviceExternalImageFormatInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    handleType*: VkExternalMemoryHandleTypeFlagBits

  VkExternalImageFormatProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    externalMemoryProperties*: VkExternalMemoryProperties

  VkPhysicalDeviceExternalBufferInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkBufferCreateFlags
    usage*: VkBufferUsageFlags
    handleType*: VkExternalMemoryHandleTypeFlagBits

  VkExternalBufferProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    externalMemoryProperties*: VkExternalMemoryProperties

  VkPhysicalDeviceIDProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceUUID*: array[VK_UUID_SIZE, uint8]
    driverUUID*: array[VK_UUID_SIZE, uint8]
    deviceLUID*: array[VK_LUID_SIZE, uint8]
    deviceNodeMask*: uint32
    deviceLUIDValid*: VkBool32

  VkExternalMemoryImageCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    handleTypes*: VkExternalMemoryHandleTypeFlags

  VkExternalMemoryBufferCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    handleTypes*: VkExternalMemoryHandleTypeFlags

  VkExportMemoryAllocateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    handleTypes*: VkExternalMemoryHandleTypeFlags

  VkImportMemoryWin32HandleInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    handleType*: VkExternalMemoryHandleTypeFlagBits
    handle*: pointer
    name*: pointer

  VkExportMemoryWin32HandleInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pAttributes*: pointer
    dwAccess*: uint32
    name*: pointer

  VkImportMemoryZirconHandleInfoFUCHSIA* = object
    sType*: VkStructureType
    pNext*: pointer
    handleType*: VkExternalMemoryHandleTypeFlagBits
    handle*: uint32

  VkMemoryZirconHandlePropertiesFUCHSIA* = object
    sType*: VkStructureType
    pNext*: pointer
    memoryTypeBits*: uint32

  VkMemoryGetZirconHandleInfoFUCHSIA* = object
    sType*: VkStructureType
    pNext*: pointer
    memory*: VkDeviceMemory
    handleType*: VkExternalMemoryHandleTypeFlagBits

  VkMemoryWin32HandlePropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    memoryTypeBits*: uint32

  VkMemoryGetWin32HandleInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    memory*: VkDeviceMemory
    handleType*: VkExternalMemoryHandleTypeFlagBits

  VkImportMemoryFdInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    handleType*: VkExternalMemoryHandleTypeFlagBits
    fd*: int32

  VkMemoryFdPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    memoryTypeBits*: uint32

  VkMemoryGetFdInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    memory*: VkDeviceMemory
    handleType*: VkExternalMemoryHandleTypeFlagBits

  VkWin32KeyedMutexAcquireReleaseInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    acquireCount*: uint32
    pAcquireSyncs*: ptr VkDeviceMemory
    pAcquireKeys*: ptr uint64
    pAcquireTimeouts*: ptr uint32
    releaseCount*: uint32
    pReleaseSyncs*: ptr VkDeviceMemory
    pReleaseKeys*: ptr uint64

  VkImportMemoryMetalHandleInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    handleType*: VkExternalMemoryHandleTypeFlagBits
    handle*: pointer

  VkMemoryMetalHandlePropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    memoryTypeBits*: uint32

  VkMemoryGetMetalHandleInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    memory*: VkDeviceMemory
    handleType*: VkExternalMemoryHandleTypeFlagBits

  VkPhysicalDeviceExternalSemaphoreInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    handleType*: VkExternalSemaphoreHandleTypeFlagBits

  VkExternalSemaphoreProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    exportFromImportedHandleTypes*: VkExternalSemaphoreHandleTypeFlags
    compatibleHandleTypes*: VkExternalSemaphoreHandleTypeFlags
    externalSemaphoreFeatures*: VkExternalSemaphoreFeatureFlags

  VkExportSemaphoreCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    handleTypes*: VkExternalSemaphoreHandleTypeFlags

  VkImportSemaphoreWin32HandleInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    semaphore*: VkSemaphore
    flags*: VkSemaphoreImportFlags
    handleType*: VkExternalSemaphoreHandleTypeFlagBits
    handle*: pointer
    name*: pointer

  VkExportSemaphoreWin32HandleInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pAttributes*: pointer
    dwAccess*: uint32
    name*: pointer

  VkD3D12FenceSubmitInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    waitSemaphoreValuesCount*: uint32
    pWaitSemaphoreValues*: ptr uint64
    signalSemaphoreValuesCount*: uint32
    pSignalSemaphoreValues*: ptr uint64

  VkSemaphoreGetWin32HandleInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    semaphore*: VkSemaphore
    handleType*: VkExternalSemaphoreHandleTypeFlagBits

  VkImportSemaphoreFdInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    semaphore*: VkSemaphore
    flags*: VkSemaphoreImportFlags
    handleType*: VkExternalSemaphoreHandleTypeFlagBits
    fd*: int32

  VkSemaphoreGetFdInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    semaphore*: VkSemaphore
    handleType*: VkExternalSemaphoreHandleTypeFlagBits

  VkImportSemaphoreZirconHandleInfoFUCHSIA* = object
    sType*: VkStructureType
    pNext*: pointer
    semaphore*: VkSemaphore
    flags*: VkSemaphoreImportFlags
    handleType*: VkExternalSemaphoreHandleTypeFlagBits
    zirconHandle*: uint32

  VkSemaphoreGetZirconHandleInfoFUCHSIA* = object
    sType*: VkStructureType
    pNext*: pointer
    semaphore*: VkSemaphore
    handleType*: VkExternalSemaphoreHandleTypeFlagBits

  VkPhysicalDeviceExternalFenceInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    handleType*: VkExternalFenceHandleTypeFlagBits

  VkExternalFenceProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    exportFromImportedHandleTypes*: VkExternalFenceHandleTypeFlags
    compatibleHandleTypes*: VkExternalFenceHandleTypeFlags
    externalFenceFeatures*: VkExternalFenceFeatureFlags

  VkExportFenceCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    handleTypes*: VkExternalFenceHandleTypeFlags

  VkImportFenceWin32HandleInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    fence*: VkFence
    flags*: VkFenceImportFlags
    handleType*: VkExternalFenceHandleTypeFlagBits
    handle*: pointer
    name*: pointer

  VkExportFenceWin32HandleInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pAttributes*: pointer
    dwAccess*: uint32
    name*: pointer

  VkFenceGetWin32HandleInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    fence*: VkFence
    handleType*: VkExternalFenceHandleTypeFlagBits

  VkImportFenceFdInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    fence*: VkFence
    flags*: VkFenceImportFlags
    handleType*: VkExternalFenceHandleTypeFlagBits
    fd*: int32

  VkFenceGetFdInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    fence*: VkFence
    handleType*: VkExternalFenceHandleTypeFlagBits

  VkExportFenceSciSyncInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    pAttributes*: pointer

  VkImportFenceSciSyncInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    fence*: VkFence
    handleType*: VkExternalFenceHandleTypeFlagBits
    handle*: pointer

  VkFenceGetSciSyncInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    fence*: VkFence
    handleType*: VkExternalFenceHandleTypeFlagBits

  VkExportSemaphoreSciSyncInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    pAttributes*: pointer

  VkImportSemaphoreSciSyncInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    semaphore*: VkSemaphore
    handleType*: VkExternalSemaphoreHandleTypeFlagBits
    handle*: pointer

  VkSemaphoreGetSciSyncInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    semaphore*: VkSemaphore
    handleType*: VkExternalSemaphoreHandleTypeFlagBits

  VkSciSyncAttributesInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    clientType*: VkSciSyncClientTypeNV
    primitiveType*: VkSciSyncPrimitiveTypeNV

  VkPhysicalDeviceExternalSciSyncFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    sciSyncFence*: VkBool32
    sciSyncSemaphore*: VkBool32
    sciSyncImport*: VkBool32
    sciSyncExport*: VkBool32

  VkPhysicalDeviceExternalSciSync2FeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    sciSyncFence*: VkBool32
    sciSyncSemaphore2*: VkBool32
    sciSyncImport*: VkBool32
    sciSyncExport*: VkBool32

  VkSemaphoreSciSyncPoolCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    handle*: pointer

  VkSemaphoreSciSyncCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    semaphorePool*: VkSemaphoreSciSyncPoolNV
    pFence*: pointer

  VkDeviceSemaphoreSciSyncPoolReservationCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    semaphoreSciSyncPoolRequestCount*: uint32

  VkPhysicalDeviceMultiviewFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    multiview*: VkBool32
    multiviewGeometryShader*: VkBool32
    multiviewTessellationShader*: VkBool32

  VkPhysicalDeviceMultiviewProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    maxMultiviewViewCount*: uint32
    maxMultiviewInstanceIndex*: uint32

  VkRenderPassMultiviewCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    subpassCount*: uint32
    pViewMasks*: ptr uint32
    dependencyCount*: uint32
    pViewOffsets*: ptr int32
    correlationMaskCount*: uint32
    pCorrelationMasks*: ptr uint32

  VkSurfaceCapabilities2EXT* = object
    sType*: VkStructureType
    pNext*: pointer
    minImageCount*: uint32
    maxImageCount*: uint32
    currentExtent*: VkExtent2D
    minImageExtent*: VkExtent2D
    maxImageExtent*: VkExtent2D
    maxImageArrayLayers*: uint32
    supportedTransforms*: VkSurfaceTransformFlagsKHR
    currentTransform*: VkSurfaceTransformFlagBitsKHR
    supportedCompositeAlpha*: VkCompositeAlphaFlagsKHR
    supportedUsageFlags*: VkImageUsageFlags
    supportedSurfaceCounters*: VkSurfaceCounterFlagsEXT

  VkDisplayPowerInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    powerState*: VkDisplayPowerStateEXT

  VkDeviceEventInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceEvent*: VkDeviceEventTypeEXT

  VkDisplayEventInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    displayEvent*: VkDisplayEventTypeEXT

  VkSwapchainCounterCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    surfaceCounters*: VkSurfaceCounterFlagsEXT

  VkPhysicalDeviceGroupProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    physicalDeviceCount*: uint32
    physicalDevices*: array[VK_MAX_DEVICE_GROUP_SIZE, VkPhysicalDevice]
    subsetAllocation*: VkBool32

  VkMemoryAllocateFlagsInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkMemoryAllocateFlags
    deviceMask*: uint32

  VkBindBufferMemoryInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    buffer*: VkBuffer
    memory*: VkDeviceMemory
    memoryOffset*: VkDeviceSize

  VkBindBufferMemoryDeviceGroupInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceIndexCount*: uint32
    pDeviceIndices*: ptr uint32

  VkBindImageMemoryInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    image*: VkImage
    memory*: VkDeviceMemory
    memoryOffset*: VkDeviceSize

  VkBindImageMemoryDeviceGroupInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceIndexCount*: uint32
    pDeviceIndices*: ptr uint32
    splitInstanceBindRegionCount*: uint32
    pSplitInstanceBindRegions*: ptr VkRect2D

  VkDeviceGroupRenderPassBeginInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceMask*: uint32
    deviceRenderAreaCount*: uint32
    pDeviceRenderAreas*: ptr VkRect2D

  VkDeviceGroupCommandBufferBeginInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceMask*: uint32

  VkDeviceGroupSubmitInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    waitSemaphoreCount*: uint32
    pWaitSemaphoreDeviceIndices*: ptr uint32
    commandBufferCount*: uint32
    pCommandBufferDeviceMasks*: ptr uint32
    signalSemaphoreCount*: uint32
    pSignalSemaphoreDeviceIndices*: ptr uint32

  VkDeviceGroupBindSparseInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    resourceDeviceIndex*: uint32
    memoryDeviceIndex*: uint32

  VkDeviceGroupPresentCapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    presentMask*: array[VK_MAX_DEVICE_GROUP_SIZE, uint32]
    modes*: VkDeviceGroupPresentModeFlagsKHR

  VkImageSwapchainCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    swapchain*: VkSwapchainKHR

  VkBindImageMemorySwapchainInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    swapchain*: VkSwapchainKHR
    imageIndex*: uint32

  VkAcquireNextImageInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    swapchain*: VkSwapchainKHR
    timeout*: uint64
    semaphore*: VkSemaphore
    fence*: VkFence
    deviceMask*: uint32

  VkDeviceGroupPresentInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    swapchainCount*: uint32
    pDeviceMasks*: ptr uint32
    mode*: VkDeviceGroupPresentModeFlagBitsKHR

  VkDeviceGroupDeviceCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    physicalDeviceCount*: uint32
    pPhysicalDevices*: ptr VkPhysicalDevice

  VkDeviceGroupSwapchainCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    modes*: VkDeviceGroupPresentModeFlagsKHR

  VkDescriptorUpdateTemplateEntry* = object
    dstBinding*: uint32
    dstArrayElement*: uint32
    descriptorCount*: uint32
    descriptorType*: VkDescriptorType
    offset*: csize_t
    stride*: csize_t

  VkDescriptorUpdateTemplateCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDescriptorUpdateTemplateCreateFlags
    descriptorUpdateEntryCount*: uint32
    pDescriptorUpdateEntries*: ptr VkDescriptorUpdateTemplateEntry
    templateType*: VkDescriptorUpdateTemplateType
    descriptorSetLayout*: VkDescriptorSetLayout
    pipelineBindPoint*: VkPipelineBindPoint
    pipelineLayout*: VkPipelineLayout
    set*: uint32

  VkXYColorEXT* = object
    x*: float32
    y*: float32

  VkPhysicalDevicePresentIdFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    presentId*: VkBool32

  VkPresentIdKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    swapchainCount*: uint32
    pPresentIds*: ptr uint64

  VkPhysicalDevicePresentId2FeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    presentId2*: VkBool32

  VkPresentId2KHR* = object
    sType*: VkStructureType
    pNext*: pointer
    swapchainCount*: uint32
    pPresentIds*: ptr uint64

  VkPresentWait2InfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    presentId*: uint64
    timeout*: uint64

  VkPhysicalDevicePresentWaitFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    presentWait*: VkBool32

  VkPhysicalDevicePresentWait2FeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    presentWait2*: VkBool32

  VkPhysicalDevicePresentTimingFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    presentTiming*: VkBool32
    presentAtAbsoluteTime*: VkBool32
    presentAtRelativeTime*: VkBool32

  VkPresentTimingSurfaceCapabilitiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    presentTimingSupported*: VkBool32
    presentAtAbsoluteTimeSupported*: VkBool32
    presentAtRelativeTimeSupported*: VkBool32
    presentStageQueries*: VkPresentStageFlagsEXT

  VkSwapchainTimingPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    refreshDuration*: uint64
    refreshInterval*: uint64

  VkSwapchainTimeDomainPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    timeDomainCount*: uint32
    pTimeDomains*: ptr VkTimeDomainKHR
    pTimeDomainIds*: ptr uint64

  VkPresentStageTimeEXT* = object
    stage*: VkPresentStageFlagsEXT
    time*: uint64

  VkPastPresentationTimingInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPastPresentationTimingFlagsEXT
    swapchain*: VkSwapchainKHR

  VkPastPresentationTimingPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    timingPropertiesCounter*: uint64
    timeDomainsCounter*: uint64
    presentationTimingCount*: uint32
    pPresentationTimings*: ptr VkPastPresentationTimingEXT

  VkPastPresentationTimingEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    presentId*: uint64
    targetTime*: uint64
    presentStageCount*: uint32
    pPresentStages*: ptr VkPresentStageTimeEXT
    timeDomain*: VkTimeDomainKHR
    timeDomainId*: uint64
    reportComplete*: VkBool32

  VkPresentTimingsInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    swapchainCount*: uint32
    pTimingInfos*: ptr VkPresentTimingInfoEXT

  VkPresentTimingInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPresentTimingInfoFlagsEXT
    targetTime*: uint64
    timeDomainId*: uint64
    presentStageQueries*: VkPresentStageFlagsEXT
    targetTimeDomainPresentStage*: VkPresentStageFlagsEXT

  VkSwapchainCalibratedTimestampInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    swapchain*: VkSwapchainKHR
    presentStage*: VkPresentStageFlagsEXT
    timeDomainId*: uint64

  VkHdrMetadataEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    displayPrimaryRed*: VkXYColorEXT
    displayPrimaryGreen*: VkXYColorEXT
    displayPrimaryBlue*: VkXYColorEXT
    whitePoint*: VkXYColorEXT
    maxLuminance*: float32
    minLuminance*: float32
    maxContentLightLevel*: float32
    maxFrameAverageLightLevel*: float32

  VkHdrVividDynamicMetadataHUAWEI* = object
    sType*: VkStructureType
    pNext*: pointer
    dynamicMetadataSize*: csize_t
    pDynamicMetadata*: pointer

  VkDisplayNativeHdrSurfaceCapabilitiesAMD* = object
    sType*: VkStructureType
    pNext*: pointer
    localDimmingSupport*: VkBool32

  VkSwapchainDisplayNativeHdrCreateInfoAMD* = object
    sType*: VkStructureType
    pNext*: pointer
    localDimmingEnable*: VkBool32

  VkRefreshCycleDurationGOOGLE* = object
    refreshDuration*: uint64

  VkPastPresentationTimingGOOGLE* = object
    presentID*: uint32
    desiredPresentTime*: uint64
    actualPresentTime*: uint64
    earliestPresentTime*: uint64
    presentMargin*: uint64

  VkPresentTimesInfoGOOGLE* = object
    sType*: VkStructureType
    pNext*: pointer
    swapchainCount*: uint32
    pTimes*: ptr VkPresentTimeGOOGLE

  VkPresentTimeGOOGLE* = object
    presentID*: uint32
    desiredPresentTime*: uint64

  VkIOSSurfaceCreateInfoMVK* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkIOSSurfaceCreateFlagsMVK
    pView*: pointer

  VkMacOSSurfaceCreateInfoMVK* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkMacOSSurfaceCreateFlagsMVK
    pView*: pointer

  VkMetalSurfaceCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkMetalSurfaceCreateFlagsEXT
    pLayer*: pointer

  VkViewportWScalingNV* = object
    xcoeff*: float32
    ycoeff*: float32

  VkPipelineViewportWScalingStateCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    viewportWScalingEnable*: VkBool32
    viewportCount*: uint32
    pViewportWScalings*: ptr VkViewportWScalingNV

  VkViewportSwizzleNV* = object
    x*: VkViewportCoordinateSwizzleNV
    y*: VkViewportCoordinateSwizzleNV
    z*: VkViewportCoordinateSwizzleNV
    w*: VkViewportCoordinateSwizzleNV

  VkPipelineViewportSwizzleStateCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineViewportSwizzleStateCreateFlagsNV
    viewportCount*: uint32
    pViewportSwizzles*: ptr VkViewportSwizzleNV

  VkPhysicalDeviceDiscardRectanglePropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    maxDiscardRectangles*: uint32

  VkPipelineDiscardRectangleStateCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineDiscardRectangleStateCreateFlagsEXT
    discardRectangleMode*: VkDiscardRectangleModeEXT
    discardRectangleCount*: uint32
    pDiscardRectangles*: ptr VkRect2D

  VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX* = object
    sType*: VkStructureType
    pNext*: pointer
    perViewPositionAllComponents*: VkBool32

  VkInputAttachmentAspectReference* = object
    subpass*: uint32
    inputAttachmentIndex*: uint32
    aspectMask*: VkImageAspectFlags

  VkRenderPassInputAttachmentAspectCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    aspectReferenceCount*: uint32
    pAspectReferences*: ptr VkInputAttachmentAspectReference

  VkPhysicalDeviceSurfaceInfo2KHR* = object
    sType*: VkStructureType
    pNext*: pointer
    surface*: VkSurfaceKHR

  VkSurfaceCapabilities2KHR* = object
    sType*: VkStructureType
    pNext*: pointer
    surfaceCapabilities*: VkSurfaceCapabilitiesKHR

  VkSurfaceFormat2KHR* = object
    sType*: VkStructureType
    pNext*: pointer
    surfaceFormat*: VkSurfaceFormatKHR

  VkDisplayProperties2KHR* = object
    sType*: VkStructureType
    pNext*: pointer
    displayProperties*: VkDisplayPropertiesKHR

  VkDisplayPlaneProperties2KHR* = object
    sType*: VkStructureType
    pNext*: pointer
    displayPlaneProperties*: VkDisplayPlanePropertiesKHR

  VkDisplayModeProperties2KHR* = object
    sType*: VkStructureType
    pNext*: pointer
    displayModeProperties*: VkDisplayModePropertiesKHR

  VkDisplayModeStereoPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    hdmi3DSupported*: VkBool32

  VkDisplayPlaneInfo2KHR* = object
    sType*: VkStructureType
    pNext*: pointer
    mode*: VkDisplayModeKHR
    planeIndex*: uint32

  VkDisplayPlaneCapabilities2KHR* = object
    sType*: VkStructureType
    pNext*: pointer
    capabilities*: VkDisplayPlaneCapabilitiesKHR

  VkSharedPresentSurfaceCapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    sharedPresentSupportedUsageFlags*: VkImageUsageFlags

  VkPhysicalDevice16BitStorageFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    storageBuffer16BitAccess*: VkBool32
    uniformAndStorageBuffer16BitAccess*: VkBool32
    storagePushConstant16*: VkBool32
    storageInputOutput16*: VkBool32

  VkPhysicalDeviceSubgroupProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    subgroupSize*: uint32
    supportedStages*: VkShaderStageFlags
    supportedOperations*: VkSubgroupFeatureFlags
    quadOperationsInAllStages*: VkBool32

  VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderSubgroupExtendedTypes*: VkBool32

  VkBufferMemoryRequirementsInfo2* = object
    sType*: VkStructureType
    pNext*: pointer
    buffer*: VkBuffer

  VkDeviceBufferMemoryRequirements* = object
    sType*: VkStructureType
    pNext*: pointer
    pCreateInfo*: ptr VkBufferCreateInfo

  VkImageMemoryRequirementsInfo2* = object
    sType*: VkStructureType
    pNext*: pointer
    image*: VkImage

  VkImageSparseMemoryRequirementsInfo2* = object
    sType*: VkStructureType
    pNext*: pointer
    image*: VkImage

  VkDeviceImageMemoryRequirements* = object
    sType*: VkStructureType
    pNext*: pointer
    pCreateInfo*: ptr VkImageCreateInfo
    planeAspect*: VkImageAspectFlagBits

  VkMemoryRequirements2* = object
    sType*: VkStructureType
    pNext*: pointer
    memoryRequirements*: VkMemoryRequirements

  VkSparseImageMemoryRequirements2* = object
    sType*: VkStructureType
    pNext*: pointer
    memoryRequirements*: VkSparseImageMemoryRequirements

  VkPhysicalDevicePointClippingProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    pointClippingBehavior*: VkPointClippingBehavior

  VkMemoryDedicatedRequirements* = object
    sType*: VkStructureType
    pNext*: pointer
    prefersDedicatedAllocation*: VkBool32
    requiresDedicatedAllocation*: VkBool32

  VkMemoryDedicatedAllocateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    image*: VkImage
    buffer*: VkBuffer

  VkImageViewUsageCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    usage*: VkImageUsageFlags

  VkImageViewSlicedCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    sliceOffset*: uint32
    sliceCount*: uint32

  VkPipelineTessellationDomainOriginStateCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    domainOrigin*: VkTessellationDomainOrigin

  VkSamplerYcbcrConversionInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    conversion*: VkSamplerYcbcrConversion

  VkSamplerYcbcrConversionCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    format*: VkFormat
    ycbcrModel*: VkSamplerYcbcrModelConversion
    ycbcrRange*: VkSamplerYcbcrRange
    components*: VkComponentMapping
    xChromaOffset*: VkChromaLocation
    yChromaOffset*: VkChromaLocation
    chromaFilter*: VkFilter
    forceExplicitReconstruction*: VkBool32

  VkBindImagePlaneMemoryInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    planeAspect*: VkImageAspectFlagBits

  VkImagePlaneMemoryRequirementsInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    planeAspect*: VkImageAspectFlagBits

  VkPhysicalDeviceSamplerYcbcrConversionFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    samplerYcbcrConversion*: VkBool32

  VkSamplerYcbcrConversionImageFormatProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    combinedImageSamplerDescriptorCount*: uint32

  VkTextureLODGatherFormatPropertiesAMD* = object
    sType*: VkStructureType
    pNext*: pointer
    supportsTextureGatherLODBiasAMD*: VkBool32

  VkConditionalRenderingBeginInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    buffer*: VkBuffer
    offset*: VkDeviceSize
    flags*: VkConditionalRenderingFlagsEXT

  VkProtectedSubmitInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    protectedSubmit*: VkBool32

  VkPhysicalDeviceProtectedMemoryFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    protectedMemory*: VkBool32

  VkPhysicalDeviceProtectedMemoryProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    protectedNoFault*: VkBool32

  VkDeviceQueueInfo2* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDeviceQueueCreateFlags
    queueFamilyIndex*: uint32
    queueIndex*: uint32

  VkPipelineCoverageToColorStateCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineCoverageToColorStateCreateFlagsNV
    coverageToColorEnable*: VkBool32
    coverageToColorLocation*: uint32

  VkPhysicalDeviceSamplerFilterMinmaxProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    filterMinmaxSingleComponentFormats*: VkBool32
    filterMinmaxImageComponentMapping*: VkBool32

  VkSampleLocationEXT* = object
    x*: float32
    y*: float32

  VkSampleLocationsInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    sampleLocationsPerPixel*: VkSampleCountFlagBits
    sampleLocationGridSize*: VkExtent2D
    sampleLocationsCount*: uint32
    pSampleLocations*: ptr VkSampleLocationEXT

  VkAttachmentSampleLocationsEXT* = object
    attachmentIndex*: uint32
    sampleLocationsInfo*: VkSampleLocationsInfoEXT

  VkSubpassSampleLocationsEXT* = object
    subpassIndex*: uint32
    sampleLocationsInfo*: VkSampleLocationsInfoEXT

  VkRenderPassSampleLocationsBeginInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    attachmentInitialSampleLocationsCount*: uint32
    pAttachmentInitialSampleLocations*: ptr VkAttachmentSampleLocationsEXT
    postSubpassSampleLocationsCount*: uint32
    pPostSubpassSampleLocations*: ptr VkSubpassSampleLocationsEXT

  VkPipelineSampleLocationsStateCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    sampleLocationsEnable*: VkBool32
    sampleLocationsInfo*: VkSampleLocationsInfoEXT

  VkPhysicalDeviceSampleLocationsPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    sampleLocationSampleCounts*: VkSampleCountFlags
    maxSampleLocationGridSize*: VkExtent2D
    sampleLocationCoordinateRange*: array[2, float32]
    sampleLocationSubPixelBits*: uint32
    variableSampleLocations*: VkBool32

  VkMultisamplePropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    maxSampleLocationGridSize*: VkExtent2D

  VkSamplerReductionModeCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    reductionMode*: VkSamplerReductionMode

  VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    advancedBlendCoherentOperations*: VkBool32

  VkPhysicalDeviceMultiDrawFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    multiDraw*: VkBool32

  VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    advancedBlendMaxColorAttachments*: uint32
    advancedBlendIndependentBlend*: VkBool32
    advancedBlendNonPremultipliedSrcColor*: VkBool32
    advancedBlendNonPremultipliedDstColor*: VkBool32
    advancedBlendCorrelatedOverlap*: VkBool32
    advancedBlendAllOperations*: VkBool32

  VkPipelineColorBlendAdvancedStateCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    srcPremultiplied*: VkBool32
    dstPremultiplied*: VkBool32
    blendOverlap*: VkBlendOverlapEXT

  VkPhysicalDeviceInlineUniformBlockFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    inlineUniformBlock*: VkBool32
    descriptorBindingInlineUniformBlockUpdateAfterBind*: VkBool32

  VkPhysicalDeviceInlineUniformBlockProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    maxInlineUniformBlockSize*: uint32
    maxPerStageDescriptorInlineUniformBlocks*: uint32
    maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks*: uint32
    maxDescriptorSetInlineUniformBlocks*: uint32
    maxDescriptorSetUpdateAfterBindInlineUniformBlocks*: uint32

  VkWriteDescriptorSetInlineUniformBlock* = object
    sType*: VkStructureType
    pNext*: pointer
    dataSize*: uint32
    pData*: pointer

  VkDescriptorPoolInlineUniformBlockCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    maxInlineUniformBlockBindings*: uint32

  VkPipelineCoverageModulationStateCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineCoverageModulationStateCreateFlagsNV
    coverageModulationMode*: VkCoverageModulationModeNV
    coverageModulationTableEnable*: VkBool32
    coverageModulationTableCount*: uint32
    pCoverageModulationTable*: ptr float32

  VkImageFormatListCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    viewFormatCount*: uint32
    pViewFormats*: ptr VkFormat

  VkValidationCacheCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkValidationCacheCreateFlagsEXT
    initialDataSize*: csize_t
    pInitialData*: pointer

  VkShaderModuleValidationCacheCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    validationCache*: VkValidationCacheEXT

  VkPhysicalDeviceMaintenance3Properties* = object
    sType*: VkStructureType
    pNext*: pointer
    maxPerSetDescriptors*: uint32
    maxMemoryAllocationSize*: VkDeviceSize

  VkPhysicalDeviceMaintenance4Features* = object
    sType*: VkStructureType
    pNext*: pointer
    maintenance4*: VkBool32

  VkPhysicalDeviceMaintenance4Properties* = object
    sType*: VkStructureType
    pNext*: pointer
    maxBufferSize*: VkDeviceSize

  VkPhysicalDeviceMaintenance5Features* = object
    sType*: VkStructureType
    pNext*: pointer
    maintenance5*: VkBool32

  VkPhysicalDeviceMaintenance5Properties* = object
    sType*: VkStructureType
    pNext*: pointer
    earlyFragmentMultisampleCoverageAfterSampleCounting*: VkBool32
    earlyFragmentSampleMaskTestBeforeSampleCounting*: VkBool32
    depthStencilSwizzleOneSupport*: VkBool32
    polygonModePointSize*: VkBool32
    nonStrictSinglePixelWideLinesUseParallelogram*: VkBool32
    nonStrictWideLinesUseParallelogram*: VkBool32

  VkPhysicalDeviceMaintenance6Features* = object
    sType*: VkStructureType
    pNext*: pointer
    maintenance6*: VkBool32

  VkPhysicalDeviceMaintenance6Properties* = object
    sType*: VkStructureType
    pNext*: pointer
    blockTexelViewCompatibleMultipleLayers*: VkBool32
    maxCombinedImageSamplerDescriptorCount*: uint32
    fragmentShadingRateClampCombinerInputs*: VkBool32

  VkPhysicalDeviceMaintenance7FeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    maintenance7*: VkBool32

  VkPhysicalDeviceMaintenance7PropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    robustFragmentShadingRateAttachmentAccess*: VkBool32
    separateDepthStencilAttachmentAccess*: VkBool32
    maxDescriptorSetTotalUniformBuffersDynamic*: uint32
    maxDescriptorSetTotalStorageBuffersDynamic*: uint32
    maxDescriptorSetTotalBuffersDynamic*: uint32
    maxDescriptorSetUpdateAfterBindTotalUniformBuffersDynamic*: uint32
    maxDescriptorSetUpdateAfterBindTotalStorageBuffersDynamic*: uint32
    maxDescriptorSetUpdateAfterBindTotalBuffersDynamic*: uint32

  VkPhysicalDeviceLayeredApiPropertiesListKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    layeredApiCount*: uint32
    pLayeredApis*: ptr VkPhysicalDeviceLayeredApiPropertiesKHR

  VkPhysicalDeviceLayeredApiPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    vendorID*: uint32
    deviceID*: uint32
    layeredAPI*: VkPhysicalDeviceLayeredApiKHR
    deviceName*: array[VK_MAX_PHYSICAL_DEVICE_NAME_SIZE, char]

  VkPhysicalDeviceLayeredApiVulkanPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    properties*: VkPhysicalDeviceProperties2

  VkPhysicalDeviceMaintenance8FeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    maintenance8*: VkBool32

  VkPhysicalDeviceMaintenance9FeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    maintenance9*: VkBool32

  VkPhysicalDeviceMaintenance9PropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    image2DViewOf3DSparse*: VkBool32
    defaultVertexAttributeValue*: VkDefaultVertexAttributeValueKHR

  VkPhysicalDeviceMaintenance10PropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    rgba4OpaqueBlackSwizzled*: VkBool32
    resolveSrgbFormatAppliesTransferFunction*: VkBool32
    resolveSrgbFormatSupportsTransferFunctionControl*: VkBool32

  VkPhysicalDeviceMaintenance10FeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    maintenance10*: VkBool32

  VkQueueFamilyOwnershipTransferPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    optimalImageTransferToQueueFamilies*: uint32

  VkRenderingAreaInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    viewMask*: uint32
    colorAttachmentCount*: uint32
    pColorAttachmentFormats*: ptr VkFormat
    depthAttachmentFormat*: VkFormat
    stencilAttachmentFormat*: VkFormat

  VkDescriptorSetLayoutSupport* = object
    sType*: VkStructureType
    pNext*: pointer
    supported*: VkBool32

  VkPhysicalDeviceShaderDrawParametersFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderDrawParameters*: VkBool32

  VkPhysicalDeviceShaderFloat16Int8Features* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderFloat16*: VkBool32
    shaderInt8*: VkBool32

  VkPhysicalDeviceFloatControlsProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    denormBehaviorIndependence*: VkShaderFloatControlsIndependence
    roundingModeIndependence*: VkShaderFloatControlsIndependence
    shaderSignedZeroInfNanPreserveFloat16*: VkBool32
    shaderSignedZeroInfNanPreserveFloat32*: VkBool32
    shaderSignedZeroInfNanPreserveFloat64*: VkBool32
    shaderDenormPreserveFloat16*: VkBool32
    shaderDenormPreserveFloat32*: VkBool32
    shaderDenormPreserveFloat64*: VkBool32
    shaderDenormFlushToZeroFloat16*: VkBool32
    shaderDenormFlushToZeroFloat32*: VkBool32
    shaderDenormFlushToZeroFloat64*: VkBool32
    shaderRoundingModeRTEFloat16*: VkBool32
    shaderRoundingModeRTEFloat32*: VkBool32
    shaderRoundingModeRTEFloat64*: VkBool32
    shaderRoundingModeRTZFloat16*: VkBool32
    shaderRoundingModeRTZFloat32*: VkBool32
    shaderRoundingModeRTZFloat64*: VkBool32

  VkPhysicalDeviceHostQueryResetFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    hostQueryReset*: VkBool32

  VkNativeBufferUsage2ANDROID* = object
    consumer*: uint64
    producer*: uint64

  VkNativeBufferANDROID* = object
    sType*: VkStructureType
    pNext*: pointer
    handle*: pointer
    stride*: int32
    format*: int32
    usage*: int32
    usage2*: VkNativeBufferUsage2ANDROID

  VkSwapchainImageCreateInfoANDROID* = object
    sType*: VkStructureType
    pNext*: pointer
    usage*: VkSwapchainImageUsageFlagsANDROID

  VkPhysicalDevicePresentationPropertiesANDROID* = object
    sType*: VkStructureType
    pNext*: pointer
    sharedImage*: VkBool32

  VkShaderResourceUsageAMD* = object
    numUsedVgprs*: uint32
    numUsedSgprs*: uint32
    ldsSizePerLocalWorkGroup*: uint32
    ldsUsageSizeInBytes*: csize_t
    scratchMemUsageInBytes*: csize_t

  VkShaderStatisticsInfoAMD* = object
    shaderStageMask*: VkShaderStageFlags
    resourceUsage*: VkShaderResourceUsageAMD
    numPhysicalVgprs*: uint32
    numPhysicalSgprs*: uint32
    numAvailableVgprs*: uint32
    numAvailableSgprs*: uint32
    computeWorkGroupSize*: array[3, uint32]

  VkDeviceQueueGlobalPriorityCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    globalPriority*: VkQueueGlobalPriority

  VkPhysicalDeviceGlobalPriorityQueryFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    globalPriorityQuery*: VkBool32

  VkQueueFamilyGlobalPriorityProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    priorityCount*: uint32
    priorities*: array[VK_MAX_GLOBAL_PRIORITY_SIZE, VkQueueGlobalPriority]

  VkDebugUtilsObjectNameInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    objectType*: VkObjectType
    objectHandle*: uint64
    pObjectName*: cstring

  VkDebugUtilsObjectTagInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    objectType*: VkObjectType
    objectHandle*: uint64
    tagName*: uint64
    tagSize*: csize_t
    pTag*: pointer

  VkDebugUtilsLabelEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    pLabelName*: cstring
    color*: array[4, float32]

  VkDebugUtilsMessengerCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDebugUtilsMessengerCreateFlagsEXT
    messageSeverity*: VkDebugUtilsMessageSeverityFlagsEXT
    messageType*: VkDebugUtilsMessageTypeFlagsEXT
    pfnUserCallback*: PFN_vkDebugUtilsMessengerCallbackEXT
    pUserData*: pointer

  VkDebugUtilsMessengerCallbackDataEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDebugUtilsMessengerCallbackDataFlagsEXT
    pMessageIdName*: cstring
    messageIdNumber*: int32
    pMessage*: cstring
    queueLabelCount*: uint32
    pQueueLabels*: ptr VkDebugUtilsLabelEXT
    cmdBufLabelCount*: uint32
    pCmdBufLabels*: ptr VkDebugUtilsLabelEXT
    objectCount*: uint32
    pObjects*: ptr VkDebugUtilsObjectNameInfoEXT

  VkPhysicalDeviceDeviceMemoryReportFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceMemoryReport*: VkBool32

  VkDeviceDeviceMemoryReportCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDeviceMemoryReportFlagsEXT
    pfnUserCallback*: PFN_vkDeviceMemoryReportCallbackEXT
    pUserData*: pointer

  VkDeviceMemoryReportCallbackDataEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDeviceMemoryReportFlagsEXT
    `type`*: VkDeviceMemoryReportEventTypeEXT
    memoryObjectId*: uint64
    size*: VkDeviceSize
    objectType*: VkObjectType
    objectHandle*: uint64
    heapIndex*: uint32

  VkImportMemoryHostPointerInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    handleType*: VkExternalMemoryHandleTypeFlagBits
    pHostPointer*: pointer

  VkMemoryHostPointerPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    memoryTypeBits*: uint32

  VkPhysicalDeviceExternalMemoryHostPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    minImportedHostPointerAlignment*: VkDeviceSize

  VkPhysicalDeviceConservativeRasterizationPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    primitiveOverestimationSize*: float32
    maxExtraPrimitiveOverestimationSize*: float32
    extraPrimitiveOverestimationSizeGranularity*: float32
    primitiveUnderestimation*: VkBool32
    conservativePointAndLineRasterization*: VkBool32
    degenerateTrianglesRasterized*: VkBool32
    degenerateLinesRasterized*: VkBool32
    fullyCoveredFragmentShaderInputVariable*: VkBool32
    conservativeRasterizationPostDepthCoverage*: VkBool32

  VkCalibratedTimestampInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    timeDomain*: VkTimeDomainKHR

  VkPhysicalDeviceShaderCorePropertiesAMD* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderEngineCount*: uint32
    shaderArraysPerEngineCount*: uint32
    computeUnitsPerShaderArray*: uint32
    simdPerComputeUnit*: uint32
    wavefrontsPerSimd*: uint32
    wavefrontSize*: uint32
    sgprsPerSimd*: uint32
    minSgprAllocation*: uint32
    maxSgprAllocation*: uint32
    sgprAllocationGranularity*: uint32
    vgprsPerSimd*: uint32
    minVgprAllocation*: uint32
    maxVgprAllocation*: uint32
    vgprAllocationGranularity*: uint32

  VkPhysicalDeviceShaderCoreProperties2AMD* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderCoreFeatures*: VkShaderCorePropertiesFlagsAMD
    activeComputeUnitCount*: uint32

  VkPipelineRasterizationConservativeStateCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineRasterizationConservativeStateCreateFlagsEXT
    conservativeRasterizationMode*: VkConservativeRasterizationModeEXT
    extraPrimitiveOverestimationSize*: float32

  VkPhysicalDeviceDescriptorIndexingFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderInputAttachmentArrayDynamicIndexing*: VkBool32
    shaderUniformTexelBufferArrayDynamicIndexing*: VkBool32
    shaderStorageTexelBufferArrayDynamicIndexing*: VkBool32
    shaderUniformBufferArrayNonUniformIndexing*: VkBool32
    shaderSampledImageArrayNonUniformIndexing*: VkBool32
    shaderStorageBufferArrayNonUniformIndexing*: VkBool32
    shaderStorageImageArrayNonUniformIndexing*: VkBool32
    shaderInputAttachmentArrayNonUniformIndexing*: VkBool32
    shaderUniformTexelBufferArrayNonUniformIndexing*: VkBool32
    shaderStorageTexelBufferArrayNonUniformIndexing*: VkBool32
    descriptorBindingUniformBufferUpdateAfterBind*: VkBool32
    descriptorBindingSampledImageUpdateAfterBind*: VkBool32
    descriptorBindingStorageImageUpdateAfterBind*: VkBool32
    descriptorBindingStorageBufferUpdateAfterBind*: VkBool32
    descriptorBindingUniformTexelBufferUpdateAfterBind*: VkBool32
    descriptorBindingStorageTexelBufferUpdateAfterBind*: VkBool32
    descriptorBindingUpdateUnusedWhilePending*: VkBool32
    descriptorBindingPartiallyBound*: VkBool32
    descriptorBindingVariableDescriptorCount*: VkBool32
    runtimeDescriptorArray*: VkBool32

  VkPhysicalDeviceDescriptorIndexingProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    maxUpdateAfterBindDescriptorsInAllPools*: uint32
    shaderUniformBufferArrayNonUniformIndexingNative*: VkBool32
    shaderSampledImageArrayNonUniformIndexingNative*: VkBool32
    shaderStorageBufferArrayNonUniformIndexingNative*: VkBool32
    shaderStorageImageArrayNonUniformIndexingNative*: VkBool32
    shaderInputAttachmentArrayNonUniformIndexingNative*: VkBool32
    robustBufferAccessUpdateAfterBind*: VkBool32
    quadDivergentImplicitLod*: VkBool32
    maxPerStageDescriptorUpdateAfterBindSamplers*: uint32
    maxPerStageDescriptorUpdateAfterBindUniformBuffers*: uint32
    maxPerStageDescriptorUpdateAfterBindStorageBuffers*: uint32
    maxPerStageDescriptorUpdateAfterBindSampledImages*: uint32
    maxPerStageDescriptorUpdateAfterBindStorageImages*: uint32
    maxPerStageDescriptorUpdateAfterBindInputAttachments*: uint32
    maxPerStageUpdateAfterBindResources*: uint32
    maxDescriptorSetUpdateAfterBindSamplers*: uint32
    maxDescriptorSetUpdateAfterBindUniformBuffers*: uint32
    maxDescriptorSetUpdateAfterBindUniformBuffersDynamic*: uint32
    maxDescriptorSetUpdateAfterBindStorageBuffers*: uint32
    maxDescriptorSetUpdateAfterBindStorageBuffersDynamic*: uint32
    maxDescriptorSetUpdateAfterBindSampledImages*: uint32
    maxDescriptorSetUpdateAfterBindStorageImages*: uint32
    maxDescriptorSetUpdateAfterBindInputAttachments*: uint32

  VkDescriptorSetLayoutBindingFlagsCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    bindingCount*: uint32
    pBindingFlags*: ptr VkDescriptorBindingFlags

  VkDescriptorSetVariableDescriptorCountAllocateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    descriptorSetCount*: uint32
    pDescriptorCounts*: ptr uint32

  VkDescriptorSetVariableDescriptorCountLayoutSupport* = object
    sType*: VkStructureType
    pNext*: pointer
    maxVariableDescriptorCount*: uint32

  VkAttachmentDescription2* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkAttachmentDescriptionFlags
    format*: VkFormat
    samples*: VkSampleCountFlagBits
    loadOp*: VkAttachmentLoadOp
    storeOp*: VkAttachmentStoreOp
    stencilLoadOp*: VkAttachmentLoadOp
    stencilStoreOp*: VkAttachmentStoreOp
    initialLayout*: VkImageLayout
    finalLayout*: VkImageLayout

  VkAttachmentReference2* = object
    sType*: VkStructureType
    pNext*: pointer
    attachment*: uint32
    layout*: VkImageLayout
    aspectMask*: VkImageAspectFlags

  VkSubpassDescription2* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkSubpassDescriptionFlags
    pipelineBindPoint*: VkPipelineBindPoint
    viewMask*: uint32
    inputAttachmentCount*: uint32
    pInputAttachments*: ptr VkAttachmentReference2
    colorAttachmentCount*: uint32
    pColorAttachments*: ptr VkAttachmentReference2
    pResolveAttachments*: ptr VkAttachmentReference2
    pDepthStencilAttachment*: ptr VkAttachmentReference2
    preserveAttachmentCount*: uint32
    pPreserveAttachments*: ptr uint32

  VkSubpassDependency2* = object
    sType*: VkStructureType
    pNext*: pointer
    srcSubpass*: uint32
    dstSubpass*: uint32
    srcStageMask*: VkPipelineStageFlags
    dstStageMask*: VkPipelineStageFlags
    srcAccessMask*: VkAccessFlags
    dstAccessMask*: VkAccessFlags
    dependencyFlags*: VkDependencyFlags
    viewOffset*: int32

  VkRenderPassCreateInfo2* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkRenderPassCreateFlags
    attachmentCount*: uint32
    pAttachments*: ptr VkAttachmentDescription2
    subpassCount*: uint32
    pSubpasses*: ptr VkSubpassDescription2
    dependencyCount*: uint32
    pDependencies*: ptr VkSubpassDependency2
    correlatedViewMaskCount*: uint32
    pCorrelatedViewMasks*: ptr uint32

  VkSubpassBeginInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    contents*: VkSubpassContents

  VkSubpassEndInfo* = object
    sType*: VkStructureType
    pNext*: pointer

  VkPhysicalDeviceTimelineSemaphoreFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    timelineSemaphore*: VkBool32

  VkPhysicalDeviceTimelineSemaphoreProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    maxTimelineSemaphoreValueDifference*: uint64

  VkSemaphoreTypeCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    semaphoreType*: VkSemaphoreType
    initialValue*: uint64

  VkTimelineSemaphoreSubmitInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    waitSemaphoreValueCount*: uint32
    pWaitSemaphoreValues*: ptr uint64
    signalSemaphoreValueCount*: uint32
    pSignalSemaphoreValues*: ptr uint64

  VkSemaphoreWaitInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkSemaphoreWaitFlags
    semaphoreCount*: uint32
    pSemaphores*: ptr VkSemaphore
    pValues*: ptr uint64

  VkSemaphoreSignalInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    semaphore*: VkSemaphore
    value*: uint64

  VkVertexInputBindingDivisorDescription* = object
    binding*: uint32
    divisor*: uint32

  VkPipelineVertexInputDivisorStateCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    vertexBindingDivisorCount*: uint32
    pVertexBindingDivisors*: ptr VkVertexInputBindingDivisorDescription

  VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    maxVertexAttribDivisor*: uint32

  VkPhysicalDeviceVertexAttributeDivisorProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    maxVertexAttribDivisor*: uint32
    supportsNonZeroFirstInstance*: VkBool32

  VkPhysicalDevicePCIBusInfoPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    pciDomain*: uint32
    pciBus*: uint32
    pciDevice*: uint32
    pciFunction*: uint32

  VkImportAndroidHardwareBufferInfoANDROID* = object
    sType*: VkStructureType
    pNext*: pointer
    buffer*: pointer

  VkAndroidHardwareBufferUsageANDROID* = object
    sType*: VkStructureType
    pNext*: pointer
    androidHardwareBufferUsage*: uint64

  VkAndroidHardwareBufferPropertiesANDROID* = object
    sType*: VkStructureType
    pNext*: pointer
    allocationSize*: VkDeviceSize
    memoryTypeBits*: uint32

  VkMemoryGetAndroidHardwareBufferInfoANDROID* = object
    sType*: VkStructureType
    pNext*: pointer
    memory*: VkDeviceMemory

  VkAndroidHardwareBufferFormatPropertiesANDROID* = object
    sType*: VkStructureType
    pNext*: pointer
    format*: VkFormat
    externalFormat*: uint64
    formatFeatures*: VkFormatFeatureFlags
    samplerYcbcrConversionComponents*: VkComponentMapping
    suggestedYcbcrModel*: VkSamplerYcbcrModelConversion
    suggestedYcbcrRange*: VkSamplerYcbcrRange
    suggestedXChromaOffset*: VkChromaLocation
    suggestedYChromaOffset*: VkChromaLocation

  VkCommandBufferInheritanceConditionalRenderingInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    conditionalRenderingEnable*: VkBool32

  VkExternalFormatANDROID* = object
    sType*: VkStructureType
    pNext*: pointer
    externalFormat*: uint64

  VkPhysicalDevice8BitStorageFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    storageBuffer8BitAccess*: VkBool32
    uniformAndStorageBuffer8BitAccess*: VkBool32
    storagePushConstant8*: VkBool32

  VkPhysicalDeviceConditionalRenderingFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    conditionalRendering*: VkBool32
    inheritedConditionalRendering*: VkBool32

  VkPhysicalDeviceVulkanMemoryModelFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    vulkanMemoryModel*: VkBool32
    vulkanMemoryModelDeviceScope*: VkBool32
    vulkanMemoryModelAvailabilityVisibilityChains*: VkBool32

  VkPhysicalDeviceShaderAtomicInt64Features* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderBufferInt64Atomics*: VkBool32
    shaderSharedInt64Atomics*: VkBool32

  VkPhysicalDeviceShaderAtomicFloatFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderBufferFloat32Atomics*: VkBool32
    shaderBufferFloat32AtomicAdd*: VkBool32
    shaderBufferFloat64Atomics*: VkBool32
    shaderBufferFloat64AtomicAdd*: VkBool32
    shaderSharedFloat32Atomics*: VkBool32
    shaderSharedFloat32AtomicAdd*: VkBool32
    shaderSharedFloat64Atomics*: VkBool32
    shaderSharedFloat64AtomicAdd*: VkBool32
    shaderImageFloat32Atomics*: VkBool32
    shaderImageFloat32AtomicAdd*: VkBool32
    sparseImageFloat32Atomics*: VkBool32
    sparseImageFloat32AtomicAdd*: VkBool32

  VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderBufferFloat16Atomics*: VkBool32
    shaderBufferFloat16AtomicAdd*: VkBool32
    shaderBufferFloat16AtomicMinMax*: VkBool32
    shaderBufferFloat32AtomicMinMax*: VkBool32
    shaderBufferFloat64AtomicMinMax*: VkBool32
    shaderSharedFloat16Atomics*: VkBool32
    shaderSharedFloat16AtomicAdd*: VkBool32
    shaderSharedFloat16AtomicMinMax*: VkBool32
    shaderSharedFloat32AtomicMinMax*: VkBool32
    shaderSharedFloat64AtomicMinMax*: VkBool32
    shaderImageFloat32AtomicMinMax*: VkBool32
    sparseImageFloat32AtomicMinMax*: VkBool32

  VkPhysicalDeviceVertexAttributeDivisorFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    vertexAttributeInstanceRateDivisor*: VkBool32
    vertexAttributeInstanceRateZeroDivisor*: VkBool32

  VkQueueFamilyCheckpointPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    checkpointExecutionStageMask*: VkPipelineStageFlags

  VkCheckpointDataNV* = object
    sType*: VkStructureType
    pNext*: pointer
    stage*: VkPipelineStageFlagBits
    pCheckpointMarker*: pointer

  VkPhysicalDeviceDepthStencilResolveProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    supportedDepthResolveModes*: VkResolveModeFlags
    supportedStencilResolveModes*: VkResolveModeFlags
    independentResolveNone*: VkBool32
    independentResolve*: VkBool32

  VkSubpassDescriptionDepthStencilResolve* = object
    sType*: VkStructureType
    pNext*: pointer
    depthResolveMode*: VkResolveModeFlagBits
    stencilResolveMode*: VkResolveModeFlagBits
    pDepthStencilResolveAttachment*: ptr VkAttachmentReference2

  VkImageViewASTCDecodeModeEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    decodeMode*: VkFormat

  VkPhysicalDeviceASTCDecodeFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    decodeModeSharedExponent*: VkBool32

  VkPhysicalDeviceTransformFeedbackFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    transformFeedback*: VkBool32
    geometryStreams*: VkBool32

  VkPhysicalDeviceTransformFeedbackPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    maxTransformFeedbackStreams*: uint32
    maxTransformFeedbackBuffers*: uint32
    maxTransformFeedbackBufferSize*: VkDeviceSize
    maxTransformFeedbackStreamDataSize*: uint32
    maxTransformFeedbackBufferDataSize*: uint32
    maxTransformFeedbackBufferDataStride*: uint32
    transformFeedbackQueries*: VkBool32
    transformFeedbackStreamsLinesTriangles*: VkBool32
    transformFeedbackRasterizationStreamSelect*: VkBool32
    transformFeedbackDraw*: VkBool32

  VkPipelineRasterizationStateStreamCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineRasterizationStateStreamCreateFlagsEXT
    rasterizationStream*: uint32

  VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    representativeFragmentTest*: VkBool32

  VkPipelineRepresentativeFragmentTestStateCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    representativeFragmentTestEnable*: VkBool32

  VkPhysicalDeviceExclusiveScissorFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    exclusiveScissor*: VkBool32

  VkPipelineViewportExclusiveScissorStateCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    exclusiveScissorCount*: uint32
    pExclusiveScissors*: ptr VkRect2D

  VkPhysicalDeviceCornerSampledImageFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    cornerSampledImage*: VkBool32

  VkPhysicalDeviceComputeShaderDerivativesFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    computeDerivativeGroupQuads*: VkBool32
    computeDerivativeGroupLinear*: VkBool32

  VkPhysicalDeviceComputeShaderDerivativesPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    meshAndTaskShaderDerivatives*: VkBool32

  VkPhysicalDeviceShaderImageFootprintFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    imageFootprint*: VkBool32

  VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    dedicatedAllocationImageAliasing*: VkBool32

  VkPhysicalDeviceCopyMemoryIndirectFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    indirectMemoryCopy*: VkBool32
    indirectMemoryToImageCopy*: VkBool32

  VkPhysicalDeviceCopyMemoryIndirectFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    indirectCopy*: VkBool32

  VkPhysicalDeviceCopyMemoryIndirectPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    supportedQueues*: VkQueueFlags

  VkPhysicalDeviceMemoryDecompressionFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    memoryDecompression*: VkBool32

  VkPhysicalDeviceMemoryDecompressionPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    decompressionMethods*: VkMemoryDecompressionMethodFlagsEXT
    maxDecompressionIndirectCount*: uint64

  VkShadingRatePaletteNV* = object
    shadingRatePaletteEntryCount*: uint32
    pShadingRatePaletteEntries*: ptr VkShadingRatePaletteEntryNV

  VkPipelineViewportShadingRateImageStateCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    shadingRateImageEnable*: VkBool32
    viewportCount*: uint32
    pShadingRatePalettes*: ptr VkShadingRatePaletteNV

  VkPhysicalDeviceShadingRateImageFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    shadingRateImage*: VkBool32
    shadingRateCoarseSampleOrder*: VkBool32

  VkPhysicalDeviceShadingRateImagePropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    shadingRateTexelSize*: VkExtent2D
    shadingRatePaletteSize*: uint32
    shadingRateMaxCoarseSamples*: uint32

  VkPhysicalDeviceInvocationMaskFeaturesHUAWEI* = object
    sType*: VkStructureType
    pNext*: pointer
    invocationMask*: VkBool32

  VkCoarseSampleLocationNV* = object
    pixelX*: uint32
    pixelY*: uint32
    sample*: uint32

  VkCoarseSampleOrderCustomNV* = object
    shadingRate*: VkShadingRatePaletteEntryNV
    sampleCount*: uint32
    sampleLocationCount*: uint32
    pSampleLocations*: ptr VkCoarseSampleLocationNV

  VkPipelineViewportCoarseSampleOrderStateCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    sampleOrderType*: VkCoarseSampleOrderTypeNV
    customSampleOrderCount*: uint32
    pCustomSampleOrders*: ptr VkCoarseSampleOrderCustomNV

  VkPhysicalDeviceMeshShaderFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    taskShader*: VkBool32
    meshShader*: VkBool32

  VkPhysicalDeviceMeshShaderPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    maxDrawMeshTasksCount*: uint32
    maxTaskWorkGroupInvocations*: uint32
    maxTaskWorkGroupSize*: array[3, uint32]
    maxTaskTotalMemorySize*: uint32
    maxTaskOutputCount*: uint32
    maxMeshWorkGroupInvocations*: uint32
    maxMeshWorkGroupSize*: array[3, uint32]
    maxMeshTotalMemorySize*: uint32
    maxMeshOutputVertices*: uint32
    maxMeshOutputPrimitives*: uint32
    maxMeshMultiviewViewCount*: uint32
    meshOutputPerVertexGranularity*: uint32
    meshOutputPerPrimitiveGranularity*: uint32

  VkDrawMeshTasksIndirectCommandNV* = object
    taskCount*: uint32
    firstTask*: uint32

  VkPhysicalDeviceMeshShaderFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    taskShader*: VkBool32
    meshShader*: VkBool32
    multiviewMeshShader*: VkBool32
    primitiveFragmentShadingRateMeshShader*: VkBool32
    meshShaderQueries*: VkBool32

  VkPhysicalDeviceMeshShaderPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    maxTaskWorkGroupTotalCount*: uint32
    maxTaskWorkGroupCount*: array[3, uint32]
    maxTaskWorkGroupInvocations*: uint32
    maxTaskWorkGroupSize*: array[3, uint32]
    maxTaskPayloadSize*: uint32
    maxTaskSharedMemorySize*: uint32
    maxTaskPayloadAndSharedMemorySize*: uint32
    maxMeshWorkGroupTotalCount*: uint32
    maxMeshWorkGroupCount*: array[3, uint32]
    maxMeshWorkGroupInvocations*: uint32
    maxMeshWorkGroupSize*: array[3, uint32]
    maxMeshSharedMemorySize*: uint32
    maxMeshPayloadAndSharedMemorySize*: uint32
    maxMeshOutputMemorySize*: uint32
    maxMeshPayloadAndOutputMemorySize*: uint32
    maxMeshOutputComponents*: uint32
    maxMeshOutputVertices*: uint32
    maxMeshOutputPrimitives*: uint32
    maxMeshOutputLayers*: uint32
    maxMeshMultiviewViewCount*: uint32
    meshOutputPerVertexGranularity*: uint32
    meshOutputPerPrimitiveGranularity*: uint32
    maxPreferredTaskWorkGroupInvocations*: uint32
    maxPreferredMeshWorkGroupInvocations*: uint32
    prefersLocalInvocationVertexOutput*: VkBool32
    prefersLocalInvocationPrimitiveOutput*: VkBool32
    prefersCompactVertexOutput*: VkBool32
    prefersCompactPrimitiveOutput*: VkBool32

  VkDrawMeshTasksIndirectCommandEXT* = object
    groupCountX*: uint32
    groupCountY*: uint32
    groupCountZ*: uint32

  VkRayTracingShaderGroupCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    `type`*: VkRayTracingShaderGroupTypeKHR
    generalShader*: uint32
    closestHitShader*: uint32
    anyHitShader*: uint32
    intersectionShader*: uint32

  VkRayTracingShaderGroupCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    `type`*: VkRayTracingShaderGroupTypeKHR
    generalShader*: uint32
    closestHitShader*: uint32
    anyHitShader*: uint32
    intersectionShader*: uint32
    pShaderGroupCaptureReplayHandle*: pointer

  VkRayTracingPipelineCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineCreateFlags
    stageCount*: uint32
    pStages*: ptr VkPipelineShaderStageCreateInfo
    groupCount*: uint32
    pGroups*: ptr VkRayTracingShaderGroupCreateInfoNV
    maxRecursionDepth*: uint32
    layout*: VkPipelineLayout
    basePipelineHandle*: VkPipeline
    basePipelineIndex*: int32

  VkRayTracingPipelineCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineCreateFlags
    stageCount*: uint32
    pStages*: ptr VkPipelineShaderStageCreateInfo
    groupCount*: uint32
    pGroups*: ptr VkRayTracingShaderGroupCreateInfoKHR
    maxPipelineRayRecursionDepth*: uint32
    pLibraryInfo*: ptr VkPipelineLibraryCreateInfoKHR
    pLibraryInterface*: ptr VkRayTracingPipelineInterfaceCreateInfoKHR
    pDynamicState*: ptr VkPipelineDynamicStateCreateInfo
    layout*: VkPipelineLayout
    basePipelineHandle*: VkPipeline
    basePipelineIndex*: int32

  VkGeometryTrianglesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    vertexData*: VkBuffer
    vertexOffset*: VkDeviceSize
    vertexCount*: uint32
    vertexStride*: VkDeviceSize
    vertexFormat*: VkFormat
    indexData*: VkBuffer
    indexOffset*: VkDeviceSize
    indexCount*: uint32
    indexType*: VkIndexType
    transformData*: VkBuffer
    transformOffset*: VkDeviceSize

  VkGeometryAABBNV* = object
    sType*: VkStructureType
    pNext*: pointer
    aabbData*: VkBuffer
    numAABBs*: uint32
    stride*: uint32
    offset*: VkDeviceSize

  VkGeometryDataNV* = object
    triangles*: VkGeometryTrianglesNV
    aabbs*: VkGeometryAABBNV

  VkGeometryNV* = object
    sType*: VkStructureType
    pNext*: pointer
    geometryType*: VkGeometryTypeKHR
    geometry*: VkGeometryDataNV
    flags*: VkGeometryFlagsKHR

  VkAccelerationStructureInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    `type`*: VkAccelerationStructureTypeNV
    flags*: VkBuildAccelerationStructureFlagsNV
    instanceCount*: uint32
    geometryCount*: uint32
    pGeometries*: ptr VkGeometryNV

  VkAccelerationStructureCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    compactedSize*: VkDeviceSize
    info*: VkAccelerationStructureInfoNV

  VkBindAccelerationStructureMemoryInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    accelerationStructure*: VkAccelerationStructureNV
    memory*: VkDeviceMemory
    memoryOffset*: VkDeviceSize
    deviceIndexCount*: uint32
    pDeviceIndices*: ptr uint32

  VkWriteDescriptorSetAccelerationStructureKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    accelerationStructureCount*: uint32
    pAccelerationStructures*: ptr VkAccelerationStructureKHR

  VkWriteDescriptorSetAccelerationStructureNV* = object
    sType*: VkStructureType
    pNext*: pointer
    accelerationStructureCount*: uint32
    pAccelerationStructures*: ptr VkAccelerationStructureNV

  VkAccelerationStructureMemoryRequirementsInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    `type`*: VkAccelerationStructureMemoryRequirementsTypeNV
    accelerationStructure*: VkAccelerationStructureNV

  VkPhysicalDeviceAccelerationStructureFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    accelerationStructure*: VkBool32
    accelerationStructureCaptureReplay*: VkBool32
    accelerationStructureIndirectBuild*: VkBool32
    accelerationStructureHostCommands*: VkBool32
    descriptorBindingAccelerationStructureUpdateAfterBind*: VkBool32

  VkPhysicalDeviceRayTracingPipelineFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    rayTracingPipeline*: VkBool32
    rayTracingPipelineShaderGroupHandleCaptureReplay*: VkBool32
    rayTracingPipelineShaderGroupHandleCaptureReplayMixed*: VkBool32
    rayTracingPipelineTraceRaysIndirect*: VkBool32
    rayTraversalPrimitiveCulling*: VkBool32

  VkPhysicalDeviceRayQueryFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    rayQuery*: VkBool32

  VkPhysicalDeviceAccelerationStructurePropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    maxGeometryCount*: uint64
    maxInstanceCount*: uint64
    maxPrimitiveCount*: uint64
    maxPerStageDescriptorAccelerationStructures*: uint32
    maxPerStageDescriptorUpdateAfterBindAccelerationStructures*: uint32
    maxDescriptorSetAccelerationStructures*: uint32
    maxDescriptorSetUpdateAfterBindAccelerationStructures*: uint32
    minAccelerationStructureScratchOffsetAlignment*: uint32

  VkPhysicalDeviceRayTracingPipelinePropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderGroupHandleSize*: uint32
    maxRayRecursionDepth*: uint32
    maxShaderGroupStride*: uint32
    shaderGroupBaseAlignment*: uint32
    shaderGroupHandleCaptureReplaySize*: uint32
    maxRayDispatchInvocationCount*: uint32
    shaderGroupHandleAlignment*: uint32
    maxRayHitAttributeSize*: uint32

  VkPhysicalDeviceRayTracingPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderGroupHandleSize*: uint32
    maxRecursionDepth*: uint32
    maxShaderGroupStride*: uint32
    shaderGroupBaseAlignment*: uint32
    maxGeometryCount*: uint64
    maxInstanceCount*: uint64
    maxTriangleCount*: uint64
    maxDescriptorSetAccelerationStructures*: uint32

  VkStridedDeviceAddressRegionKHR* = object
    deviceAddress*: VkDeviceAddress
    stride*: VkDeviceSize
    size*: VkDeviceSize

  VkTraceRaysIndirectCommandKHR* = object
    width*: uint32
    height*: uint32
    depth*: uint32

  VkTraceRaysIndirectCommand2KHR* = object
    raygenShaderRecordAddress*: VkDeviceAddress
    raygenShaderRecordSize*: VkDeviceSize
    missShaderBindingTableAddress*: VkDeviceAddress
    missShaderBindingTableSize*: VkDeviceSize
    missShaderBindingTableStride*: VkDeviceSize
    hitShaderBindingTableAddress*: VkDeviceAddress
    hitShaderBindingTableSize*: VkDeviceSize
    hitShaderBindingTableStride*: VkDeviceSize
    callableShaderBindingTableAddress*: VkDeviceAddress
    callableShaderBindingTableSize*: VkDeviceSize
    callableShaderBindingTableStride*: VkDeviceSize
    width*: uint32
    height*: uint32
    depth*: uint32

  VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    rayTracingMaintenance1*: VkBool32
    rayTracingPipelineTraceRaysIndirect2*: VkBool32

  VkDrmFormatModifierPropertiesListEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    drmFormatModifierCount*: uint32
    pDrmFormatModifierProperties*: ptr VkDrmFormatModifierPropertiesEXT

  VkDrmFormatModifierPropertiesEXT* = object
    drmFormatModifier*: uint64
    drmFormatModifierPlaneCount*: uint32
    drmFormatModifierTilingFeatures*: VkFormatFeatureFlags

  VkPhysicalDeviceImageDrmFormatModifierInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    drmFormatModifier*: uint64
    sharingMode*: VkSharingMode
    queueFamilyIndexCount*: uint32
    pQueueFamilyIndices*: ptr uint32

  VkImageDrmFormatModifierListCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    drmFormatModifierCount*: uint32
    pDrmFormatModifiers*: ptr uint64

  VkImageDrmFormatModifierExplicitCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    drmFormatModifier*: uint64
    drmFormatModifierPlaneCount*: uint32
    pPlaneLayouts*: ptr VkSubresourceLayout

  VkImageDrmFormatModifierPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    drmFormatModifier*: uint64

  VkImageStencilUsageCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    stencilUsage*: VkImageUsageFlags

  VkDeviceMemoryOverallocationCreateInfoAMD* = object
    sType*: VkStructureType
    pNext*: pointer
    overallocationBehavior*: VkMemoryOverallocationBehaviorAMD

  VkPhysicalDeviceFragmentDensityMapFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    fragmentDensityMap*: VkBool32
    fragmentDensityMapDynamic*: VkBool32
    fragmentDensityMapNonSubsampledImages*: VkBool32

  VkPhysicalDeviceFragmentDensityMap2FeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    fragmentDensityMapDeferred*: VkBool32

  VkPhysicalDeviceFragmentDensityMapOffsetFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    fragmentDensityMapOffset*: VkBool32

  VkPhysicalDeviceFragmentDensityMapPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    minFragmentDensityTexelSize*: VkExtent2D
    maxFragmentDensityTexelSize*: VkExtent2D
    fragmentDensityInvocations*: VkBool32

  VkPhysicalDeviceFragmentDensityMap2PropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    subsampledLoads*: VkBool32
    subsampledCoarseReconstructionEarlyAccess*: VkBool32
    maxSubsampledArrayLayers*: uint32
    maxDescriptorSetSubsampledSamplers*: uint32

  VkPhysicalDeviceFragmentDensityMapOffsetPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    fragmentDensityOffsetGranularity*: VkExtent2D

  VkRenderPassFragmentDensityMapCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    fragmentDensityMapAttachment*: VkAttachmentReference

  VkRenderPassFragmentDensityMapOffsetEndInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    fragmentDensityOffsetCount*: uint32
    pFragmentDensityOffsets*: ptr VkOffset2D

  VkPhysicalDeviceScalarBlockLayoutFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    scalarBlockLayout*: VkBool32

  VkSurfaceProtectedCapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    supportsProtected*: VkBool32

  VkPhysicalDeviceUniformBufferStandardLayoutFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    uniformBufferStandardLayout*: VkBool32

  VkPhysicalDeviceDepthClipEnableFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    depthClipEnable*: VkBool32

  VkPipelineRasterizationDepthClipStateCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineRasterizationDepthClipStateCreateFlagsEXT
    depthClipEnable*: VkBool32

  VkPhysicalDeviceMemoryBudgetPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    heapBudget*: array[VK_MAX_MEMORY_HEAPS, VkDeviceSize]
    heapUsage*: array[VK_MAX_MEMORY_HEAPS, VkDeviceSize]

  VkPhysicalDeviceMemoryPriorityFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    memoryPriority*: VkBool32

  VkMemoryPriorityAllocateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    priority*: float32

  VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    pageableDeviceLocalMemory*: VkBool32

  VkPhysicalDeviceBufferDeviceAddressFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    bufferDeviceAddress*: VkBool32
    bufferDeviceAddressCaptureReplay*: VkBool32
    bufferDeviceAddressMultiDevice*: VkBool32

  VkPhysicalDeviceBufferDeviceAddressFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    bufferDeviceAddress*: VkBool32
    bufferDeviceAddressCaptureReplay*: VkBool32
    bufferDeviceAddressMultiDevice*: VkBool32

  VkBufferDeviceAddressInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    buffer*: VkBuffer

  VkBufferOpaqueCaptureAddressCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    opaqueCaptureAddress*: uint64

  VkBufferDeviceAddressCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceAddress*: VkDeviceAddress

  VkPhysicalDeviceImageViewImageFormatInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    imageViewType*: VkImageViewType

  VkFilterCubicImageViewImageFormatPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    filterCubic*: VkBool32
    filterCubicMinmax*: VkBool32

  VkPhysicalDeviceImagelessFramebufferFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    imagelessFramebuffer*: VkBool32

  VkFramebufferAttachmentsCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    attachmentImageInfoCount*: uint32
    pAttachmentImageInfos*: ptr VkFramebufferAttachmentImageInfo

  VkFramebufferAttachmentImageInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkImageCreateFlags
    usage*: VkImageUsageFlags
    width*: uint32
    height*: uint32
    layerCount*: uint32
    viewFormatCount*: uint32
    pViewFormats*: ptr VkFormat

  VkRenderPassAttachmentBeginInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    attachmentCount*: uint32
    pAttachments*: ptr VkImageView

  VkPhysicalDeviceTextureCompressionASTCHDRFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    textureCompressionASTC_HDR*: VkBool32

  VkPhysicalDeviceCooperativeMatrixFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    cooperativeMatrix*: VkBool32
    cooperativeMatrixRobustBufferAccess*: VkBool32

  VkPhysicalDeviceCooperativeMatrixPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    cooperativeMatrixSupportedStages*: VkShaderStageFlags

  VkCooperativeMatrixPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    MSize*: uint32
    NSize*: uint32
    KSize*: uint32
    AType*: VkComponentTypeNV
    BType*: VkComponentTypeNV
    CType*: VkComponentTypeNV
    DType*: VkComponentTypeNV
    scope*: VkScopeNV

  VkPhysicalDeviceYcbcrImageArraysFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    ycbcrImageArrays*: VkBool32

  VkImageViewHandleInfoNVX* = object
    sType*: VkStructureType
    pNext*: pointer
    imageView*: VkImageView
    descriptorType*: VkDescriptorType
    sampler*: VkSampler

  VkImageViewAddressPropertiesNVX* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceAddress*: VkDeviceAddress
    size*: VkDeviceSize

  VkPresentFrameTokenGGP* = object
    sType*: VkStructureType
    pNext*: pointer
    frameToken*: uint32

  VkPipelineCreationFeedback* = object
    flags*: VkPipelineCreationFeedbackFlags
    duration*: uint64

  VkPipelineCreationFeedbackCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    pPipelineCreationFeedback*: ptr VkPipelineCreationFeedback
    pipelineStageCreationFeedbackCount*: uint32
    pPipelineStageCreationFeedbacks*: ptr ptr VkPipelineCreationFeedback

  VkSurfaceFullScreenExclusiveInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    fullScreenExclusive*: VkFullScreenExclusiveEXT

  VkSurfaceFullScreenExclusiveWin32InfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    hmonitor*: pointer

  VkSurfaceCapabilitiesFullScreenExclusiveEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    fullScreenExclusiveSupported*: VkBool32

  VkPhysicalDevicePresentBarrierFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    presentBarrier*: VkBool32

  VkSurfaceCapabilitiesPresentBarrierNV* = object
    sType*: VkStructureType
    pNext*: pointer
    presentBarrierSupported*: VkBool32

  VkSwapchainPresentBarrierCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    presentBarrierEnable*: VkBool32

  VkPhysicalDevicePerformanceQueryFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    performanceCounterQueryPools*: VkBool32
    performanceCounterMultipleQueryPools*: VkBool32

  VkPhysicalDevicePerformanceQueryPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    allowCommandBufferQueryCopies*: VkBool32

  VkPerformanceCounterKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    unit*: VkPerformanceCounterUnitKHR
    scope*: VkPerformanceCounterScopeKHR
    storage*: VkPerformanceCounterStorageKHR
    uuid*: array[VK_UUID_SIZE, uint8]

  VkPerformanceCounterDescriptionKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPerformanceCounterDescriptionFlagsKHR
    name*: array[VK_MAX_DESCRIPTION_SIZE, char]
    category*: array[VK_MAX_DESCRIPTION_SIZE, char]
    description*: array[VK_MAX_DESCRIPTION_SIZE, char]

  VkQueryPoolPerformanceCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    queueFamilyIndex*: uint32
    counterIndexCount*: uint32
    pCounterIndices*: ptr uint32

  VkPerformanceCounterResultKHR* {.union.} = object
    int32*: int32
    int64*: int64
    uint32*: uint32
    uint64*: uint64
    float32*: float32
    float64*: float64

  VkAcquireProfilingLockInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkAcquireProfilingLockFlagsKHR
    timeout*: uint64

  VkPerformanceQuerySubmitInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    counterPassIndex*: uint32

  VkPerformanceQueryReservationInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    maxPerformanceQueriesPerPool*: uint32

  VkHeadlessSurfaceCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkHeadlessSurfaceCreateFlagsEXT

  VkPhysicalDeviceCoverageReductionModeFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    coverageReductionMode*: VkBool32

  VkPipelineCoverageReductionStateCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineCoverageReductionStateCreateFlagsNV
    coverageReductionMode*: VkCoverageReductionModeNV

  VkFramebufferMixedSamplesCombinationNV* = object
    sType*: VkStructureType
    pNext*: pointer
    coverageReductionMode*: VkCoverageReductionModeNV
    rasterizationSamples*: VkSampleCountFlagBits
    depthStencilSamples*: VkSampleCountFlags
    colorSamples*: VkSampleCountFlags

  VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderIntegerFunctions2*: VkBool32

  VkPerformanceValueDataINTEL* {.union.} = object
    value32*: uint32
    value64*: uint64
    valueFloat*: float32
    valueBool*: VkBool32
    valueString*: cstring

  VkPerformanceValueINTEL* = object
    `type`*: VkPerformanceValueTypeINTEL
    data*: VkPerformanceValueDataINTEL

  VkInitializePerformanceApiInfoINTEL* = object
    sType*: VkStructureType
    pNext*: pointer
    pUserData*: pointer

  VkQueryPoolPerformanceQueryCreateInfoINTEL* = object
    sType*: VkStructureType
    pNext*: pointer
    performanceCountersSampling*: VkQueryPoolSamplingModeINTEL

  VkPerformanceMarkerInfoINTEL* = object
    sType*: VkStructureType
    pNext*: pointer
    marker*: uint64

  VkPerformanceStreamMarkerInfoINTEL* = object
    sType*: VkStructureType
    pNext*: pointer
    marker*: uint32

  VkPerformanceOverrideInfoINTEL* = object
    sType*: VkStructureType
    pNext*: pointer
    `type`*: VkPerformanceOverrideTypeINTEL
    enable*: VkBool32
    parameter*: uint64

  VkPerformanceConfigurationAcquireInfoINTEL* = object
    sType*: VkStructureType
    pNext*: pointer
    `type`*: VkPerformanceConfigurationTypeINTEL

  VkPhysicalDeviceShaderClockFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderSubgroupClock*: VkBool32
    shaderDeviceClock*: VkBool32

  VkPhysicalDeviceIndexTypeUint8Features* = object
    sType*: VkStructureType
    pNext*: pointer
    indexTypeUint8*: VkBool32

  VkPhysicalDeviceShaderSMBuiltinsPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderSMCount*: uint32
    shaderWarpsPerSM*: uint32

  VkPhysicalDeviceShaderSMBuiltinsFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderSMBuiltins*: VkBool32

  VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    fragmentShaderSampleInterlock*: VkBool32
    fragmentShaderPixelInterlock*: VkBool32
    fragmentShaderShadingRateInterlock*: VkBool32

  VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    separateDepthStencilLayouts*: VkBool32

  VkAttachmentReferenceStencilLayout* = object
    sType*: VkStructureType
    pNext*: pointer
    stencilLayout*: VkImageLayout

  VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    primitiveTopologyListRestart*: VkBool32
    primitiveTopologyPatchListRestart*: VkBool32

  VkAttachmentDescriptionStencilLayout* = object
    sType*: VkStructureType
    pNext*: pointer
    stencilInitialLayout*: VkImageLayout
    stencilFinalLayout*: VkImageLayout

  VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineExecutableInfo*: VkBool32

  VkPipelineInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pipeline*: VkPipeline

  VkPipelineExecutablePropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    stages*: VkShaderStageFlags
    name*: array[VK_MAX_DESCRIPTION_SIZE, char]
    description*: array[VK_MAX_DESCRIPTION_SIZE, char]
    subgroupSize*: uint32

  VkPipelineExecutableInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pipeline*: VkPipeline
    executableIndex*: uint32

  VkPipelineExecutableStatisticValueKHR* {.union.} = object
    b32*: VkBool32
    i64*: int64
    u64*: uint64
    f64*: float64

  VkPipelineExecutableStatisticKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    name*: array[VK_MAX_DESCRIPTION_SIZE, char]
    description*: array[VK_MAX_DESCRIPTION_SIZE, char]
    format*: VkPipelineExecutableStatisticFormatKHR
    value*: VkPipelineExecutableStatisticValueKHR

  VkPipelineExecutableInternalRepresentationKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    name*: array[VK_MAX_DESCRIPTION_SIZE, char]
    description*: array[VK_MAX_DESCRIPTION_SIZE, char]
    isText*: VkBool32
    dataSize*: csize_t
    pData*: pointer

  VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderDemoteToHelperInvocation*: VkBool32

  VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    texelBufferAlignment*: VkBool32

  VkPhysicalDeviceTexelBufferAlignmentProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    storageTexelBufferOffsetAlignmentBytes*: VkDeviceSize
    storageTexelBufferOffsetSingleTexelAlignment*: VkBool32
    uniformTexelBufferOffsetAlignmentBytes*: VkDeviceSize
    uniformTexelBufferOffsetSingleTexelAlignment*: VkBool32

  VkPhysicalDeviceSubgroupSizeControlFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    subgroupSizeControl*: VkBool32
    computeFullSubgroups*: VkBool32

  VkPhysicalDeviceSubgroupSizeControlProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    minSubgroupSize*: uint32
    maxSubgroupSize*: uint32
    maxComputeWorkgroupSubgroups*: uint32
    requiredSubgroupSizeStages*: VkShaderStageFlags

  VkPipelineShaderStageRequiredSubgroupSizeCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    requiredSubgroupSize*: uint32

  VkSubpassShadingPipelineCreateInfoHUAWEI* = object
    sType*: VkStructureType
    pNext*: pointer
    renderPass*: VkRenderPass
    subpass*: uint32

  VkPhysicalDeviceSubpassShadingPropertiesHUAWEI* = object
    sType*: VkStructureType
    pNext*: pointer
    maxSubpassShadingWorkgroupSizeAspectRatio*: uint32

  VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI* = object
    sType*: VkStructureType
    pNext*: pointer
    maxWorkGroupCount*: array[3, uint32]
    maxWorkGroupSize*: array[3, uint32]
    maxOutputClusterCount*: uint32
    indirectBufferOffsetAlignment*: VkDeviceSize

  VkMemoryOpaqueCaptureAddressAllocateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    opaqueCaptureAddress*: uint64

  VkDeviceMemoryOpaqueCaptureAddressInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    memory*: VkDeviceMemory

  VkPhysicalDeviceLineRasterizationFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    rectangularLines*: VkBool32
    bresenhamLines*: VkBool32
    smoothLines*: VkBool32
    stippledRectangularLines*: VkBool32
    stippledBresenhamLines*: VkBool32
    stippledSmoothLines*: VkBool32

  VkPhysicalDeviceLineRasterizationProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    lineSubPixelPrecisionBits*: uint32

  VkPipelineRasterizationLineStateCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    lineRasterizationMode*: VkLineRasterizationMode
    stippledLineEnable*: VkBool32
    lineStippleFactor*: uint32
    lineStipplePattern*: uint16

  VkPhysicalDevicePipelineCreationCacheControlFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineCreationCacheControl*: VkBool32

  VkPhysicalDeviceVulkan11Features* = object
    sType*: VkStructureType
    pNext*: pointer
    storageBuffer16BitAccess*: VkBool32
    uniformAndStorageBuffer16BitAccess*: VkBool32
    storagePushConstant16*: VkBool32
    storageInputOutput16*: VkBool32
    multiview*: VkBool32
    multiviewGeometryShader*: VkBool32
    multiviewTessellationShader*: VkBool32
    variablePointersStorageBuffer*: VkBool32
    variablePointers*: VkBool32
    protectedMemory*: VkBool32
    samplerYcbcrConversion*: VkBool32
    shaderDrawParameters*: VkBool32

  VkPhysicalDeviceVulkan11Properties* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceUUID*: array[VK_UUID_SIZE, uint8]
    driverUUID*: array[VK_UUID_SIZE, uint8]
    deviceLUID*: array[VK_LUID_SIZE, uint8]
    deviceNodeMask*: uint32
    deviceLUIDValid*: VkBool32
    subgroupSize*: uint32
    subgroupSupportedStages*: VkShaderStageFlags
    subgroupSupportedOperations*: VkSubgroupFeatureFlags
    subgroupQuadOperationsInAllStages*: VkBool32
    pointClippingBehavior*: VkPointClippingBehavior
    maxMultiviewViewCount*: uint32
    maxMultiviewInstanceIndex*: uint32
    protectedNoFault*: VkBool32
    maxPerSetDescriptors*: uint32
    maxMemoryAllocationSize*: VkDeviceSize

  VkPhysicalDeviceVulkan12Features* = object
    sType*: VkStructureType
    pNext*: pointer
    samplerMirrorClampToEdge*: VkBool32
    drawIndirectCount*: VkBool32
    storageBuffer8BitAccess*: VkBool32
    uniformAndStorageBuffer8BitAccess*: VkBool32
    storagePushConstant8*: VkBool32
    shaderBufferInt64Atomics*: VkBool32
    shaderSharedInt64Atomics*: VkBool32
    shaderFloat16*: VkBool32
    shaderInt8*: VkBool32
    descriptorIndexing*: VkBool32
    shaderInputAttachmentArrayDynamicIndexing*: VkBool32
    shaderUniformTexelBufferArrayDynamicIndexing*: VkBool32
    shaderStorageTexelBufferArrayDynamicIndexing*: VkBool32
    shaderUniformBufferArrayNonUniformIndexing*: VkBool32
    shaderSampledImageArrayNonUniformIndexing*: VkBool32
    shaderStorageBufferArrayNonUniformIndexing*: VkBool32
    shaderStorageImageArrayNonUniformIndexing*: VkBool32
    shaderInputAttachmentArrayNonUniformIndexing*: VkBool32
    shaderUniformTexelBufferArrayNonUniformIndexing*: VkBool32
    shaderStorageTexelBufferArrayNonUniformIndexing*: VkBool32
    descriptorBindingUniformBufferUpdateAfterBind*: VkBool32
    descriptorBindingSampledImageUpdateAfterBind*: VkBool32
    descriptorBindingStorageImageUpdateAfterBind*: VkBool32
    descriptorBindingStorageBufferUpdateAfterBind*: VkBool32
    descriptorBindingUniformTexelBufferUpdateAfterBind*: VkBool32
    descriptorBindingStorageTexelBufferUpdateAfterBind*: VkBool32
    descriptorBindingUpdateUnusedWhilePending*: VkBool32
    descriptorBindingPartiallyBound*: VkBool32
    descriptorBindingVariableDescriptorCount*: VkBool32
    runtimeDescriptorArray*: VkBool32
    samplerFilterMinmax*: VkBool32
    scalarBlockLayout*: VkBool32
    imagelessFramebuffer*: VkBool32
    uniformBufferStandardLayout*: VkBool32
    shaderSubgroupExtendedTypes*: VkBool32
    separateDepthStencilLayouts*: VkBool32
    hostQueryReset*: VkBool32
    timelineSemaphore*: VkBool32
    bufferDeviceAddress*: VkBool32
    bufferDeviceAddressCaptureReplay*: VkBool32
    bufferDeviceAddressMultiDevice*: VkBool32
    vulkanMemoryModel*: VkBool32
    vulkanMemoryModelDeviceScope*: VkBool32
    vulkanMemoryModelAvailabilityVisibilityChains*: VkBool32
    shaderOutputViewportIndex*: VkBool32
    shaderOutputLayer*: VkBool32
    subgroupBroadcastDynamicId*: VkBool32

  VkPhysicalDeviceVulkan12Properties* = object
    sType*: VkStructureType
    pNext*: pointer
    driverID*: VkDriverId
    driverName*: array[VK_MAX_DRIVER_NAME_SIZE, char]
    driverInfo*: array[VK_MAX_DRIVER_INFO_SIZE, char]
    conformanceVersion*: VkConformanceVersion
    denormBehaviorIndependence*: VkShaderFloatControlsIndependence
    roundingModeIndependence*: VkShaderFloatControlsIndependence
    shaderSignedZeroInfNanPreserveFloat16*: VkBool32
    shaderSignedZeroInfNanPreserveFloat32*: VkBool32
    shaderSignedZeroInfNanPreserveFloat64*: VkBool32
    shaderDenormPreserveFloat16*: VkBool32
    shaderDenormPreserveFloat32*: VkBool32
    shaderDenormPreserveFloat64*: VkBool32
    shaderDenormFlushToZeroFloat16*: VkBool32
    shaderDenormFlushToZeroFloat32*: VkBool32
    shaderDenormFlushToZeroFloat64*: VkBool32
    shaderRoundingModeRTEFloat16*: VkBool32
    shaderRoundingModeRTEFloat32*: VkBool32
    shaderRoundingModeRTEFloat64*: VkBool32
    shaderRoundingModeRTZFloat16*: VkBool32
    shaderRoundingModeRTZFloat32*: VkBool32
    shaderRoundingModeRTZFloat64*: VkBool32
    maxUpdateAfterBindDescriptorsInAllPools*: uint32
    shaderUniformBufferArrayNonUniformIndexingNative*: VkBool32
    shaderSampledImageArrayNonUniformIndexingNative*: VkBool32
    shaderStorageBufferArrayNonUniformIndexingNative*: VkBool32
    shaderStorageImageArrayNonUniformIndexingNative*: VkBool32
    shaderInputAttachmentArrayNonUniformIndexingNative*: VkBool32
    robustBufferAccessUpdateAfterBind*: VkBool32
    quadDivergentImplicitLod*: VkBool32
    maxPerStageDescriptorUpdateAfterBindSamplers*: uint32
    maxPerStageDescriptorUpdateAfterBindUniformBuffers*: uint32
    maxPerStageDescriptorUpdateAfterBindStorageBuffers*: uint32
    maxPerStageDescriptorUpdateAfterBindSampledImages*: uint32
    maxPerStageDescriptorUpdateAfterBindStorageImages*: uint32
    maxPerStageDescriptorUpdateAfterBindInputAttachments*: uint32
    maxPerStageUpdateAfterBindResources*: uint32
    maxDescriptorSetUpdateAfterBindSamplers*: uint32
    maxDescriptorSetUpdateAfterBindUniformBuffers*: uint32
    maxDescriptorSetUpdateAfterBindUniformBuffersDynamic*: uint32
    maxDescriptorSetUpdateAfterBindStorageBuffers*: uint32
    maxDescriptorSetUpdateAfterBindStorageBuffersDynamic*: uint32
    maxDescriptorSetUpdateAfterBindSampledImages*: uint32
    maxDescriptorSetUpdateAfterBindStorageImages*: uint32
    maxDescriptorSetUpdateAfterBindInputAttachments*: uint32
    supportedDepthResolveModes*: VkResolveModeFlags
    supportedStencilResolveModes*: VkResolveModeFlags
    independentResolveNone*: VkBool32
    independentResolve*: VkBool32
    filterMinmaxSingleComponentFormats*: VkBool32
    filterMinmaxImageComponentMapping*: VkBool32
    maxTimelineSemaphoreValueDifference*: uint64
    framebufferIntegerColorSampleCounts*: VkSampleCountFlags

  VkPhysicalDeviceVulkan13Features* = object
    sType*: VkStructureType
    pNext*: pointer
    robustImageAccess*: VkBool32
    inlineUniformBlock*: VkBool32
    descriptorBindingInlineUniformBlockUpdateAfterBind*: VkBool32
    pipelineCreationCacheControl*: VkBool32
    privateData*: VkBool32
    shaderDemoteToHelperInvocation*: VkBool32
    shaderTerminateInvocation*: VkBool32
    subgroupSizeControl*: VkBool32
    computeFullSubgroups*: VkBool32
    synchronization2*: VkBool32
    textureCompressionASTC_HDR*: VkBool32
    shaderZeroInitializeWorkgroupMemory*: VkBool32
    dynamicRendering*: VkBool32
    shaderIntegerDotProduct*: VkBool32
    maintenance4*: VkBool32

  VkPhysicalDeviceVulkan13Properties* = object
    sType*: VkStructureType
    pNext*: pointer
    minSubgroupSize*: uint32
    maxSubgroupSize*: uint32
    maxComputeWorkgroupSubgroups*: uint32
    requiredSubgroupSizeStages*: VkShaderStageFlags
    maxInlineUniformBlockSize*: uint32
    maxPerStageDescriptorInlineUniformBlocks*: uint32
    maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks*: uint32
    maxDescriptorSetInlineUniformBlocks*: uint32
    maxDescriptorSetUpdateAfterBindInlineUniformBlocks*: uint32
    maxInlineUniformTotalSize*: uint32
    integerDotProduct8BitUnsignedAccelerated*: VkBool32
    integerDotProduct8BitSignedAccelerated*: VkBool32
    integerDotProduct8BitMixedSignednessAccelerated*: VkBool32
    integerDotProduct4x8BitPackedUnsignedAccelerated*: VkBool32
    integerDotProduct4x8BitPackedSignedAccelerated*: VkBool32
    integerDotProduct4x8BitPackedMixedSignednessAccelerated*: VkBool32
    integerDotProduct16BitUnsignedAccelerated*: VkBool32
    integerDotProduct16BitSignedAccelerated*: VkBool32
    integerDotProduct16BitMixedSignednessAccelerated*: VkBool32
    integerDotProduct32BitUnsignedAccelerated*: VkBool32
    integerDotProduct32BitSignedAccelerated*: VkBool32
    integerDotProduct32BitMixedSignednessAccelerated*: VkBool32
    integerDotProduct64BitUnsignedAccelerated*: VkBool32
    integerDotProduct64BitSignedAccelerated*: VkBool32
    integerDotProduct64BitMixedSignednessAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating8BitUnsignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating8BitSignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating16BitUnsignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating16BitSignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating32BitUnsignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating32BitSignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating64BitUnsignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating64BitSignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated*: VkBool32
    storageTexelBufferOffsetAlignmentBytes*: VkDeviceSize
    storageTexelBufferOffsetSingleTexelAlignment*: VkBool32
    uniformTexelBufferOffsetAlignmentBytes*: VkDeviceSize
    uniformTexelBufferOffsetSingleTexelAlignment*: VkBool32
    maxBufferSize*: VkDeviceSize

  VkPhysicalDeviceVulkan14Features* = object
    sType*: VkStructureType
    pNext*: pointer
    globalPriorityQuery*: VkBool32
    shaderSubgroupRotate*: VkBool32
    shaderSubgroupRotateClustered*: VkBool32
    shaderFloatControls2*: VkBool32
    shaderExpectAssume*: VkBool32
    rectangularLines*: VkBool32
    bresenhamLines*: VkBool32
    smoothLines*: VkBool32
    stippledRectangularLines*: VkBool32
    stippledBresenhamLines*: VkBool32
    stippledSmoothLines*: VkBool32
    vertexAttributeInstanceRateDivisor*: VkBool32
    vertexAttributeInstanceRateZeroDivisor*: VkBool32
    indexTypeUint8*: VkBool32
    dynamicRenderingLocalRead*: VkBool32
    maintenance5*: VkBool32
    maintenance6*: VkBool32
    pipelineProtectedAccess*: VkBool32
    pipelineRobustness*: VkBool32
    hostImageCopy*: VkBool32
    pushDescriptor*: VkBool32

  VkPhysicalDeviceVulkan14Properties* = object
    sType*: VkStructureType
    pNext*: pointer
    lineSubPixelPrecisionBits*: uint32
    maxVertexAttribDivisor*: uint32
    supportsNonZeroFirstInstance*: VkBool32
    maxPushDescriptors*: uint32
    dynamicRenderingLocalReadDepthStencilAttachments*: VkBool32
    dynamicRenderingLocalReadMultisampledAttachments*: VkBool32
    earlyFragmentMultisampleCoverageAfterSampleCounting*: VkBool32
    earlyFragmentSampleMaskTestBeforeSampleCounting*: VkBool32
    depthStencilSwizzleOneSupport*: VkBool32
    polygonModePointSize*: VkBool32
    nonStrictSinglePixelWideLinesUseParallelogram*: VkBool32
    nonStrictWideLinesUseParallelogram*: VkBool32
    blockTexelViewCompatibleMultipleLayers*: VkBool32
    maxCombinedImageSamplerDescriptorCount*: uint32
    fragmentShadingRateClampCombinerInputs*: VkBool32
    defaultRobustnessStorageBuffers*: VkPipelineRobustnessBufferBehavior
    defaultRobustnessUniformBuffers*: VkPipelineRobustnessBufferBehavior
    defaultRobustnessVertexInputs*: VkPipelineRobustnessBufferBehavior
    defaultRobustnessImages*: VkPipelineRobustnessImageBehavior
    copySrcLayoutCount*: uint32
    pCopySrcLayouts*: ptr VkImageLayout
    copyDstLayoutCount*: uint32
    pCopyDstLayouts*: ptr VkImageLayout
    optimalTilingLayoutUUID*: array[VK_UUID_SIZE, uint8]
    identicalMemoryTypeRequirements*: VkBool32

  VkPipelineCompilerControlCreateInfoAMD* = object
    sType*: VkStructureType
    pNext*: pointer
    compilerControlFlags*: VkPipelineCompilerControlFlagsAMD

  VkPhysicalDeviceCoherentMemoryFeaturesAMD* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceCoherentMemory*: VkBool32

  VkFaultData* = object
    sType*: VkStructureType
    pNext*: pointer
    faultLevel*: VkFaultLevel
    faultType*: VkFaultType

  VkFaultCallbackInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    faultCount*: uint32
    pFaults*: ptr VkFaultData
    pfnFaultCallback*: PFN_vkFaultCallbackFunction

  VkPhysicalDeviceToolProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    name*: array[VK_MAX_EXTENSION_NAME_SIZE, char]
    version*: array[VK_MAX_EXTENSION_NAME_SIZE, char]
    purposes*: VkToolPurposeFlags
    description*: array[VK_MAX_DESCRIPTION_SIZE, char]
    layer*: array[VK_MAX_EXTENSION_NAME_SIZE, char]

  VkSamplerCustomBorderColorCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    customBorderColor*: VkClearColorValue
    format*: VkFormat

  VkPhysicalDeviceCustomBorderColorPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    maxCustomBorderColorSamplers*: uint32

  VkPhysicalDeviceCustomBorderColorFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    customBorderColors*: VkBool32
    customBorderColorWithoutFormat*: VkBool32

  VkSamplerBorderColorComponentMappingCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    components*: VkComponentMapping
    srgb*: VkBool32

  VkPhysicalDeviceBorderColorSwizzleFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    borderColorSwizzle*: VkBool32
    borderColorSwizzleFromImage*: VkBool32

  VkDeviceOrHostAddressKHR* {.union.} = object
    deviceAddress*: VkDeviceAddress
    hostAddress*: pointer

  VkDeviceOrHostAddressConstKHR* {.union.} = object
    deviceAddress*: VkDeviceAddress
    hostAddress*: pointer

  VkDeviceOrHostAddressConstAMDX* {.union.} = object
    deviceAddress*: VkDeviceAddress
    hostAddress*: pointer

  VkAccelerationStructureGeometryTrianglesDataKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    vertexFormat*: VkFormat
    vertexData*: VkDeviceOrHostAddressConstKHR
    vertexStride*: VkDeviceSize
    maxVertex*: uint32
    indexType*: VkIndexType
    indexData*: VkDeviceOrHostAddressConstKHR
    transformData*: VkDeviceOrHostAddressConstKHR

  VkAccelerationStructureGeometryAabbsDataKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    data*: VkDeviceOrHostAddressConstKHR
    stride*: VkDeviceSize

  VkAccelerationStructureGeometryInstancesDataKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    arrayOfPointers*: VkBool32
    data*: VkDeviceOrHostAddressConstKHR

  VkAccelerationStructureGeometryLinearSweptSpheresDataNV* = object
    sType*: VkStructureType
    pNext*: pointer
    vertexFormat*: VkFormat
    vertexData*: VkDeviceOrHostAddressConstKHR
    vertexStride*: VkDeviceSize
    radiusFormat*: VkFormat
    radiusData*: VkDeviceOrHostAddressConstKHR
    radiusStride*: VkDeviceSize
    indexType*: VkIndexType
    indexData*: VkDeviceOrHostAddressConstKHR
    indexStride*: VkDeviceSize
    indexingMode*: VkRayTracingLssIndexingModeNV
    endCapsMode*: VkRayTracingLssPrimitiveEndCapsModeNV

  VkAccelerationStructureGeometrySpheresDataNV* = object
    sType*: VkStructureType
    pNext*: pointer
    vertexFormat*: VkFormat
    vertexData*: VkDeviceOrHostAddressConstKHR
    vertexStride*: VkDeviceSize
    radiusFormat*: VkFormat
    radiusData*: VkDeviceOrHostAddressConstKHR
    radiusStride*: VkDeviceSize
    indexType*: VkIndexType
    indexData*: VkDeviceOrHostAddressConstKHR
    indexStride*: VkDeviceSize

  VkAccelerationStructureGeometryDataKHR* {.union.} = object
    triangles*: VkAccelerationStructureGeometryTrianglesDataKHR
    aabbs*: VkAccelerationStructureGeometryAabbsDataKHR
    instances*: VkAccelerationStructureGeometryInstancesDataKHR

  VkAccelerationStructureGeometryKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    geometryType*: VkGeometryTypeKHR
    geometry*: VkAccelerationStructureGeometryDataKHR
    flags*: VkGeometryFlagsKHR

  VkAccelerationStructureBuildGeometryInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    `type`*: VkAccelerationStructureTypeKHR
    flags*: VkBuildAccelerationStructureFlagsKHR
    mode*: VkBuildAccelerationStructureModeKHR
    srcAccelerationStructure*: VkAccelerationStructureKHR
    dstAccelerationStructure*: VkAccelerationStructureKHR
    geometryCount*: uint32
    pGeometries*: ptr VkAccelerationStructureGeometryKHR
    ppGeometries*: ptr ptr VkAccelerationStructureGeometryKHR
    scratchData*: VkDeviceOrHostAddressKHR

  VkAccelerationStructureBuildRangeInfoKHR* = object
    primitiveCount*: uint32
    primitiveOffset*: uint32
    firstVertex*: uint32
    transformOffset*: uint32

  VkAccelerationStructureCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    createFlags*: VkAccelerationStructureCreateFlagsKHR
    buffer*: VkBuffer
    offset*: VkDeviceSize
    size*: VkDeviceSize
    `type`*: VkAccelerationStructureTypeKHR
    deviceAddress*: VkDeviceAddress

  VkAabbPositionsKHR* = object
    minX*: float32
    minY*: float32
    minZ*: float32
    maxX*: float32
    maxY*: float32
    maxZ*: float32

  VkTransformMatrixKHR* = object
    matrix*: array[3, float32]

  VkAccelerationStructureInstanceKHR* = object
    transform*: VkTransformMatrixKHR
    instanceCustomIndex*: uint32
    mask*: uint32
    instanceShaderBindingTableRecordOffset*: uint32
    flags*: VkGeometryInstanceFlagsKHR
    accelerationStructureReference*: uint64

  VkAccelerationStructureDeviceAddressInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    accelerationStructure*: VkAccelerationStructureKHR

  VkAccelerationStructureVersionInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pVersionData*: ptr uint8

  VkCopyAccelerationStructureInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    src*: VkAccelerationStructureKHR
    dst*: VkAccelerationStructureKHR
    mode*: VkCopyAccelerationStructureModeKHR

  VkCopyAccelerationStructureToMemoryInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    src*: VkAccelerationStructureKHR
    dst*: VkDeviceOrHostAddressKHR
    mode*: VkCopyAccelerationStructureModeKHR

  VkCopyMemoryToAccelerationStructureInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    src*: VkDeviceOrHostAddressConstKHR
    dst*: VkAccelerationStructureKHR
    mode*: VkCopyAccelerationStructureModeKHR

  VkRayTracingPipelineInterfaceCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    maxPipelineRayPayloadSize*: uint32
    maxPipelineRayHitAttributeSize*: uint32

  VkPipelineLibraryCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    libraryCount*: uint32
    pLibraries*: ptr VkPipeline

  VkRefreshObjectKHR* = object
    objectType*: VkObjectType
    objectHandle*: uint64
    flags*: VkRefreshObjectFlagsKHR

  VkRefreshObjectListKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    objectCount*: uint32
    pObjects*: ptr VkRefreshObjectKHR

  VkPhysicalDeviceExtendedDynamicStateFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    extendedDynamicState*: VkBool32

  VkPhysicalDeviceExtendedDynamicState2FeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    extendedDynamicState2*: VkBool32
    extendedDynamicState2LogicOp*: VkBool32
    extendedDynamicState2PatchControlPoints*: VkBool32

  VkPhysicalDeviceExtendedDynamicState3FeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    extendedDynamicState3TessellationDomainOrigin*: VkBool32
    extendedDynamicState3DepthClampEnable*: VkBool32
    extendedDynamicState3PolygonMode*: VkBool32
    extendedDynamicState3RasterizationSamples*: VkBool32
    extendedDynamicState3SampleMask*: VkBool32
    extendedDynamicState3AlphaToCoverageEnable*: VkBool32
    extendedDynamicState3AlphaToOneEnable*: VkBool32
    extendedDynamicState3LogicOpEnable*: VkBool32
    extendedDynamicState3ColorBlendEnable*: VkBool32
    extendedDynamicState3ColorBlendEquation*: VkBool32
    extendedDynamicState3ColorWriteMask*: VkBool32
    extendedDynamicState3RasterizationStream*: VkBool32
    extendedDynamicState3ConservativeRasterizationMode*: VkBool32
    extendedDynamicState3ExtraPrimitiveOverestimationSize*: VkBool32
    extendedDynamicState3DepthClipEnable*: VkBool32
    extendedDynamicState3SampleLocationsEnable*: VkBool32
    extendedDynamicState3ColorBlendAdvanced*: VkBool32
    extendedDynamicState3ProvokingVertexMode*: VkBool32
    extendedDynamicState3LineRasterizationMode*: VkBool32
    extendedDynamicState3LineStippleEnable*: VkBool32
    extendedDynamicState3DepthClipNegativeOneToOne*: VkBool32
    extendedDynamicState3ViewportWScalingEnable*: VkBool32
    extendedDynamicState3ViewportSwizzle*: VkBool32
    extendedDynamicState3CoverageToColorEnable*: VkBool32
    extendedDynamicState3CoverageToColorLocation*: VkBool32
    extendedDynamicState3CoverageModulationMode*: VkBool32
    extendedDynamicState3CoverageModulationTableEnable*: VkBool32
    extendedDynamicState3CoverageModulationTable*: VkBool32
    extendedDynamicState3CoverageReductionMode*: VkBool32
    extendedDynamicState3RepresentativeFragmentTestEnable*: VkBool32
    extendedDynamicState3ShadingRateImageEnable*: VkBool32

  VkPhysicalDeviceExtendedDynamicState3PropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    dynamicPrimitiveTopologyUnrestricted*: VkBool32

  VkColorBlendEquationEXT* = object
    srcColorBlendFactor*: VkBlendFactor
    dstColorBlendFactor*: VkBlendFactor
    colorBlendOp*: VkBlendOp
    srcAlphaBlendFactor*: VkBlendFactor
    dstAlphaBlendFactor*: VkBlendFactor
    alphaBlendOp*: VkBlendOp

  VkColorBlendAdvancedEXT* = object
    advancedBlendOp*: VkBlendOp
    srcPremultiplied*: VkBool32
    dstPremultiplied*: VkBool32
    blendOverlap*: VkBlendOverlapEXT
    clampResults*: VkBool32

  VkRenderPassTransformBeginInfoQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    transform*: VkSurfaceTransformFlagBitsKHR

  VkCopyCommandTransformInfoQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    transform*: VkSurfaceTransformFlagBitsKHR

  VkCommandBufferInheritanceRenderPassTransformInfoQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    transform*: VkSurfaceTransformFlagBitsKHR
    renderArea*: VkRect2D

  VkPhysicalDevicePartitionedAccelerationStructureFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    partitionedAccelerationStructure*: VkBool32

  VkPhysicalDevicePartitionedAccelerationStructurePropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    maxPartitionCount*: uint32

  VkBuildPartitionedAccelerationStructureIndirectCommandNV* = object
    opType*: VkPartitionedAccelerationStructureOpTypeNV
    argCount*: uint32
    argData*: VkStridedDeviceAddressNV

  VkPartitionedAccelerationStructureFlagsNV* = object
    sType*: VkStructureType
    pNext*: pointer
    enablePartitionTranslation*: VkBool32

  VkPartitionedAccelerationStructureWriteInstanceDataNV* = object
    transform*: VkTransformMatrixKHR
    explicitAABB*: array[6, float32]
    instanceID*: uint32
    instanceMask*: uint32
    instanceContributionToHitGroupIndex*: uint32
    instanceFlags*: VkPartitionedAccelerationStructureInstanceFlagsNV
    instanceIndex*: uint32
    partitionIndex*: uint32
    accelerationStructure*: VkDeviceAddress

  VkPartitionedAccelerationStructureUpdateInstanceDataNV* = object
    instanceIndex*: uint32
    instanceContributionToHitGroupIndex*: uint32
    accelerationStructure*: VkDeviceAddress

  VkPartitionedAccelerationStructureWritePartitionTranslationDataNV* = object
    partitionIndex*: uint32
    partitionTranslation*: array[3, float32]

  VkWriteDescriptorSetPartitionedAccelerationStructureNV* = object
    sType*: VkStructureType
    pNext*: pointer
    accelerationStructureCount*: uint32
    pAccelerationStructures*: ptr VkDeviceAddress

  VkPartitionedAccelerationStructureInstancesInputNV* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkBuildAccelerationStructureFlagsKHR
    instanceCount*: uint32
    maxInstancePerPartitionCount*: uint32
    partitionCount*: uint32
    maxInstanceInGlobalPartitionCount*: uint32

  VkBuildPartitionedAccelerationStructureInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    input*: VkPartitionedAccelerationStructureInstancesInputNV
    srcAccelerationStructureData*: VkDeviceAddress
    dstAccelerationStructureData*: VkDeviceAddress
    scratchData*: VkDeviceAddress
    srcInfos*: VkDeviceAddress
    srcInfosCount*: VkDeviceAddress

  VkPhysicalDeviceDiagnosticsConfigFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    diagnosticsConfig*: VkBool32

  VkDeviceDiagnosticsConfigCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDeviceDiagnosticsConfigFlagsNV

  VkPipelineOfflineCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineIdentifier*: array[VK_UUID_SIZE, uint8]
    matchControl*: VkPipelineMatchControl
    poolEntrySize*: VkDeviceSize

  VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderZeroInitializeWorkgroupMemory*: VkBool32

  VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderSubgroupUniformControlFlow*: VkBool32

  VkPhysicalDeviceRobustness2FeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    robustBufferAccess2*: VkBool32
    robustImageAccess2*: VkBool32
    nullDescriptor*: VkBool32

  VkPhysicalDeviceRobustness2PropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    robustStorageBufferAccessSizeAlignment*: VkDeviceSize
    robustUniformBufferAccessSizeAlignment*: VkDeviceSize

  VkPhysicalDeviceImageRobustnessFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    robustImageAccess*: VkBool32

  VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    workgroupMemoryExplicitLayout*: VkBool32
    workgroupMemoryExplicitLayoutScalarBlockLayout*: VkBool32
    workgroupMemoryExplicitLayout8BitAccess*: VkBool32
    workgroupMemoryExplicitLayout16BitAccess*: VkBool32

  VkPhysicalDevicePortabilitySubsetFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    constantAlphaColorBlendFactors*: VkBool32
    events*: VkBool32
    imageViewFormatReinterpretation*: VkBool32
    imageViewFormatSwizzle*: VkBool32
    imageView2DOn3DImage*: VkBool32
    multisampleArrayImage*: VkBool32
    mutableComparisonSamplers*: VkBool32
    pointPolygons*: VkBool32
    samplerMipLodBias*: VkBool32
    separateStencilMaskRef*: VkBool32
    shaderSampleRateInterpolationFunctions*: VkBool32
    tessellationIsolines*: VkBool32
    tessellationPointMode*: VkBool32
    triangleFans*: VkBool32
    vertexAttributeAccessBeyondStride*: VkBool32

  VkPhysicalDevicePortabilitySubsetPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    minVertexInputBindingStrideAlignment*: uint32

  VkPhysicalDevice4444FormatsFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    formatA4R4G4B4*: VkBool32
    formatA4B4G4R4*: VkBool32

  VkPhysicalDeviceSubpassShadingFeaturesHUAWEI* = object
    sType*: VkStructureType
    pNext*: pointer
    subpassShading*: VkBool32

  VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI* = object
    sType*: VkStructureType
    pNext*: pointer
    clustercullingShader*: VkBool32
    multiviewClusterCullingShader*: VkBool32

  VkPhysicalDeviceClusterCullingShaderVrsFeaturesHUAWEI* = object
    sType*: VkStructureType
    pNext*: pointer
    clusterShadingRate*: VkBool32

  VkBufferCopy2* = object
    sType*: VkStructureType
    pNext*: pointer
    srcOffset*: VkDeviceSize
    dstOffset*: VkDeviceSize
    size*: VkDeviceSize

  VkImageCopy2* = object
    sType*: VkStructureType
    pNext*: pointer
    srcSubresource*: VkImageSubresourceLayers
    srcOffset*: VkOffset3D
    dstSubresource*: VkImageSubresourceLayers
    dstOffset*: VkOffset3D
    extent*: VkExtent3D

  VkImageBlit2* = object
    sType*: VkStructureType
    pNext*: pointer
    srcSubresource*: VkImageSubresourceLayers
    srcOffsets*: array[2, VkOffset3D]
    dstSubresource*: VkImageSubresourceLayers
    dstOffsets*: array[2, VkOffset3D]

  VkBufferImageCopy2* = object
    sType*: VkStructureType
    pNext*: pointer
    bufferOffset*: VkDeviceSize
    bufferRowLength*: uint32
    bufferImageHeight*: uint32
    imageSubresource*: VkImageSubresourceLayers
    imageOffset*: VkOffset3D
    imageExtent*: VkExtent3D

  VkImageResolve2* = object
    sType*: VkStructureType
    pNext*: pointer
    srcSubresource*: VkImageSubresourceLayers
    srcOffset*: VkOffset3D
    dstSubresource*: VkImageSubresourceLayers
    dstOffset*: VkOffset3D
    extent*: VkExtent3D

  VkCopyBufferInfo2* = object
    sType*: VkStructureType
    pNext*: pointer
    srcBuffer*: VkBuffer
    dstBuffer*: VkBuffer
    regionCount*: uint32
    pRegions*: ptr VkBufferCopy2

  VkCopyImageInfo2* = object
    sType*: VkStructureType
    pNext*: pointer
    srcImage*: VkImage
    srcImageLayout*: VkImageLayout
    dstImage*: VkImage
    dstImageLayout*: VkImageLayout
    regionCount*: uint32
    pRegions*: ptr VkImageCopy2

  VkBlitImageInfo2* = object
    sType*: VkStructureType
    pNext*: pointer
    srcImage*: VkImage
    srcImageLayout*: VkImageLayout
    dstImage*: VkImage
    dstImageLayout*: VkImageLayout
    regionCount*: uint32
    pRegions*: ptr VkImageBlit2
    filter*: VkFilter

  VkCopyBufferToImageInfo2* = object
    sType*: VkStructureType
    pNext*: pointer
    srcBuffer*: VkBuffer
    dstImage*: VkImage
    dstImageLayout*: VkImageLayout
    regionCount*: uint32
    pRegions*: ptr VkBufferImageCopy2

  VkCopyImageToBufferInfo2* = object
    sType*: VkStructureType
    pNext*: pointer
    srcImage*: VkImage
    srcImageLayout*: VkImageLayout
    dstBuffer*: VkBuffer
    regionCount*: uint32
    pRegions*: ptr VkBufferImageCopy2

  VkResolveImageInfo2* = object
    sType*: VkStructureType
    pNext*: pointer
    srcImage*: VkImage
    srcImageLayout*: VkImageLayout
    dstImage*: VkImage
    dstImageLayout*: VkImageLayout
    regionCount*: uint32
    pRegions*: ptr VkImageResolve2

  VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderImageInt64Atomics*: VkBool32
    sparseImageInt64Atomics*: VkBool32

  VkFragmentShadingRateAttachmentInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pFragmentShadingRateAttachment*: ptr VkAttachmentReference2
    shadingRateAttachmentTexelSize*: VkExtent2D

  VkPipelineFragmentShadingRateStateCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    fragmentSize*: VkExtent2D
    combinerOps*: array[2, VkFragmentShadingRateCombinerOpKHR]

  VkPhysicalDeviceFragmentShadingRateFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineFragmentShadingRate*: VkBool32
    primitiveFragmentShadingRate*: VkBool32
    attachmentFragmentShadingRate*: VkBool32

  VkPhysicalDeviceFragmentShadingRatePropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    minFragmentShadingRateAttachmentTexelSize*: VkExtent2D
    maxFragmentShadingRateAttachmentTexelSize*: VkExtent2D
    maxFragmentShadingRateAttachmentTexelSizeAspectRatio*: uint32
    primitiveFragmentShadingRateWithMultipleViewports*: VkBool32
    layeredShadingRateAttachments*: VkBool32
    fragmentShadingRateNonTrivialCombinerOps*: VkBool32
    maxFragmentSize*: VkExtent2D
    maxFragmentSizeAspectRatio*: uint32
    maxFragmentShadingRateCoverageSamples*: uint32
    maxFragmentShadingRateRasterizationSamples*: VkSampleCountFlagBits
    fragmentShadingRateWithShaderDepthStencilWrites*: VkBool32
    fragmentShadingRateWithSampleMask*: VkBool32
    fragmentShadingRateWithShaderSampleMask*: VkBool32
    fragmentShadingRateWithConservativeRasterization*: VkBool32
    fragmentShadingRateWithFragmentShaderInterlock*: VkBool32
    fragmentShadingRateWithCustomSampleLocations*: VkBool32
    fragmentShadingRateStrictMultiplyCombiner*: VkBool32

  VkPhysicalDeviceFragmentShadingRateKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    sampleCounts*: VkSampleCountFlags
    fragmentSize*: VkExtent2D

  VkPhysicalDeviceShaderTerminateInvocationFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderTerminateInvocation*: VkBool32

  VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    fragmentShadingRateEnums*: VkBool32
    supersampleFragmentShadingRates*: VkBool32
    noInvocationFragmentShadingRates*: VkBool32

  VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    maxFragmentShadingRateInvocationCount*: VkSampleCountFlagBits

  VkPipelineFragmentShadingRateEnumStateCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    shadingRateType*: VkFragmentShadingRateTypeNV
    shadingRate*: VkFragmentShadingRateNV
    combinerOps*: array[2, VkFragmentShadingRateCombinerOpKHR]

  VkAccelerationStructureBuildSizesInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    accelerationStructureSize*: VkDeviceSize
    updateScratchSize*: VkDeviceSize
    buildScratchSize*: VkDeviceSize

  VkPhysicalDeviceImage2DViewOf3DFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    image2DViewOf3D*: VkBool32
    sampler2DViewOf3D*: VkBool32

  VkPhysicalDeviceImageSlicedViewOf3DFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    imageSlicedViewOf3D*: VkBool32

  VkPhysicalDeviceAttachmentFeedbackLoopDynamicStateFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    attachmentFeedbackLoopDynamicState*: VkBool32

  VkPhysicalDeviceLegacyVertexAttributesFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    legacyVertexAttributes*: VkBool32

  VkPhysicalDeviceLegacyVertexAttributesPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    nativeUnalignedPerformance*: VkBool32

  VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    mutableDescriptorType*: VkBool32

  VkMutableDescriptorTypeListEXT* = object
    descriptorTypeCount*: uint32
    pDescriptorTypes*: ptr VkDescriptorType

  VkMutableDescriptorTypeCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    mutableDescriptorTypeListCount*: uint32
    pMutableDescriptorTypeLists*: ptr VkMutableDescriptorTypeListEXT

  VkPhysicalDeviceDepthClipControlFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    depthClipControl*: VkBool32

  VkPhysicalDeviceZeroInitializeDeviceMemoryFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    zeroInitializeDeviceMemory*: VkBool32

  VkBeginCustomResolveInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer

  VkPhysicalDeviceCustomResolveFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    customResolve*: VkBool32

  VkCustomResolveCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    customResolve*: VkBool32
    colorAttachmentCount*: uint32
    pColorAttachmentFormats*: ptr VkFormat
    depthAttachmentFormat*: VkFormat
    stencilAttachmentFormat*: VkFormat

  VkPhysicalDeviceDeviceGeneratedCommandsFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceGeneratedCommands*: VkBool32
    dynamicGeneratedPipelineLayout*: VkBool32

  VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    maxIndirectPipelineCount*: uint32
    maxIndirectShaderObjectCount*: uint32
    maxIndirectSequenceCount*: uint32
    maxIndirectCommandsTokenCount*: uint32
    maxIndirectCommandsTokenOffset*: uint32
    maxIndirectCommandsIndirectStride*: uint32
    supportedIndirectCommandsInputModes*: VkIndirectCommandsInputModeFlagsEXT
    supportedIndirectCommandsShaderStages*: VkShaderStageFlags
    supportedIndirectCommandsShaderStagesPipelineBinding*: VkShaderStageFlags
    supportedIndirectCommandsShaderStagesShaderBinding*: VkShaderStageFlags
    deviceGeneratedCommandsTransformFeedback*: VkBool32
    deviceGeneratedCommandsMultiDrawIndirectCount*: VkBool32

  VkGeneratedCommandsPipelineInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    pipeline*: VkPipeline

  VkGeneratedCommandsShaderInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderCount*: uint32
    pShaders*: ptr VkShaderEXT

  VkGeneratedCommandsMemoryRequirementsInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    indirectExecutionSet*: VkIndirectExecutionSetEXT
    indirectCommandsLayout*: VkIndirectCommandsLayoutEXT
    maxSequenceCount*: uint32
    maxDrawCount*: uint32

  VkIndirectExecutionSetPipelineInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    initialPipeline*: VkPipeline
    maxPipelineCount*: uint32

  VkIndirectExecutionSetShaderLayoutInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    setLayoutCount*: uint32
    pSetLayouts*: ptr VkDescriptorSetLayout

  VkIndirectExecutionSetShaderInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderCount*: uint32
    pInitialShaders*: ptr VkShaderEXT
    pSetLayoutInfos*: ptr VkIndirectExecutionSetShaderLayoutInfoEXT
    maxShaderCount*: uint32
    pushConstantRangeCount*: uint32
    pPushConstantRanges*: ptr VkPushConstantRange

  VkIndirectExecutionSetInfoEXT* {.union.} = object
    pPipelineInfo*: ptr VkIndirectExecutionSetPipelineInfoEXT
    pShaderInfo*: ptr VkIndirectExecutionSetShaderInfoEXT

  VkIndirectExecutionSetCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    `type`*: VkIndirectExecutionSetInfoTypeEXT
    info*: VkIndirectExecutionSetInfoEXT

  VkGeneratedCommandsInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderStages*: VkShaderStageFlags
    indirectExecutionSet*: VkIndirectExecutionSetEXT
    indirectCommandsLayout*: VkIndirectCommandsLayoutEXT
    indirectAddress*: VkDeviceAddress
    indirectAddressSize*: VkDeviceSize
    preprocessAddress*: VkDeviceAddress
    preprocessSize*: VkDeviceSize
    maxSequenceCount*: uint32
    sequenceCountAddress*: VkDeviceAddress
    maxDrawCount*: uint32

  VkWriteIndirectExecutionSetPipelineEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    index*: uint32
    pipeline*: VkPipeline

  VkWriteIndirectExecutionSetShaderEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    index*: uint32
    shader*: VkShaderEXT

  VkIndirectCommandsLayoutCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkIndirectCommandsLayoutUsageFlagsEXT
    shaderStages*: VkShaderStageFlags
    indirectStride*: uint32
    pipelineLayout*: VkPipelineLayout
    tokenCount*: uint32
    pTokens*: ptr VkIndirectCommandsLayoutTokenEXT

  VkIndirectCommandsLayoutTokenEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    `type`*: VkIndirectCommandsTokenTypeEXT
    data*: VkIndirectCommandsTokenDataEXT
    offset*: uint32

  VkDrawIndirectCountIndirectCommandEXT* = object
    bufferAddress*: VkDeviceAddress
    stride*: uint32
    commandCount*: uint32

  VkIndirectCommandsVertexBufferTokenEXT* = object
    vertexBindingUnit*: uint32

  VkBindVertexBufferIndirectCommandEXT* = object
    bufferAddress*: VkDeviceAddress
    size*: uint32
    stride*: uint32

  VkIndirectCommandsIndexBufferTokenEXT* = object
    mode*: VkIndirectCommandsInputModeFlagBitsEXT

  VkBindIndexBufferIndirectCommandEXT* = object
    bufferAddress*: VkDeviceAddress
    size*: uint32
    indexType*: VkIndexType

  VkIndirectCommandsPushConstantTokenEXT* = object
    updateRange*: VkPushConstantRange

  VkIndirectCommandsExecutionSetTokenEXT* = object
    `type`*: VkIndirectExecutionSetInfoTypeEXT
    shaderStages*: VkShaderStageFlags

  VkIndirectCommandsTokenDataEXT* {.union.} = object
    pPushConstant*: ptr VkIndirectCommandsPushConstantTokenEXT
    pVertexBuffer*: ptr VkIndirectCommandsVertexBufferTokenEXT
    pIndexBuffer*: ptr VkIndirectCommandsIndexBufferTokenEXT
    pExecutionSet*: ptr VkIndirectCommandsExecutionSetTokenEXT

  VkPipelineViewportDepthClipControlCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    negativeOneToOne*: VkBool32

  VkPhysicalDeviceDepthClampControlFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    depthClampControl*: VkBool32

  VkPipelineViewportDepthClampControlCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    depthClampMode*: VkDepthClampModeEXT
    pDepthClampRange*: ptr VkDepthClampRangeEXT

  VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    vertexInputDynamicState*: VkBool32

  VkPhysicalDeviceExternalMemoryRDMAFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    externalMemoryRDMA*: VkBool32

  VkPhysicalDeviceShaderRelaxedExtendedInstructionFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderRelaxedExtendedInstruction*: VkBool32

  VkVertexInputBindingDescription2EXT* = object
    sType*: VkStructureType
    pNext*: pointer
    binding*: uint32
    stride*: uint32
    inputRate*: VkVertexInputRate
    divisor*: uint32

  VkVertexInputAttributeDescription2EXT* = object
    sType*: VkStructureType
    pNext*: pointer
    location*: uint32
    binding*: uint32
    format*: VkFormat
    offset*: uint32

  VkPhysicalDeviceColorWriteEnableFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    colorWriteEnable*: VkBool32

  VkPipelineColorWriteCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    attachmentCount*: uint32
    pColorWriteEnables*: ptr VkBool32

  VkMemoryBarrier2* = object
    sType*: VkStructureType
    pNext*: pointer
    srcStageMask*: VkPipelineStageFlags2
    srcAccessMask*: VkAccessFlags2
    dstStageMask*: VkPipelineStageFlags2
    dstAccessMask*: VkAccessFlags2

  VkImageMemoryBarrier2* = object
    sType*: VkStructureType
    pNext*: pointer
    srcStageMask*: VkPipelineStageFlags2
    srcAccessMask*: VkAccessFlags2
    dstStageMask*: VkPipelineStageFlags2
    dstAccessMask*: VkAccessFlags2
    oldLayout*: VkImageLayout
    newLayout*: VkImageLayout
    srcQueueFamilyIndex*: uint32
    dstQueueFamilyIndex*: uint32
    image*: VkImage
    subresourceRange*: VkImageSubresourceRange

  VkBufferMemoryBarrier2* = object
    sType*: VkStructureType
    pNext*: pointer
    srcStageMask*: VkPipelineStageFlags2
    srcAccessMask*: VkAccessFlags2
    dstStageMask*: VkPipelineStageFlags2
    dstAccessMask*: VkAccessFlags2
    srcQueueFamilyIndex*: uint32
    dstQueueFamilyIndex*: uint32
    buffer*: VkBuffer
    offset*: VkDeviceSize
    size*: VkDeviceSize

  VkMemoryBarrierAccessFlags3KHR* = object
    sType*: VkStructureType
    pNext*: pointer
    srcAccessMask3*: VkAccessFlags3KHR
    dstAccessMask3*: VkAccessFlags3KHR

  VkDependencyInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    dependencyFlags*: VkDependencyFlags
    memoryBarrierCount*: uint32
    pMemoryBarriers*: ptr VkMemoryBarrier2
    bufferMemoryBarrierCount*: uint32
    pBufferMemoryBarriers*: ptr VkBufferMemoryBarrier2
    imageMemoryBarrierCount*: uint32
    pImageMemoryBarriers*: ptr VkImageMemoryBarrier2

  VkSemaphoreSubmitInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    semaphore*: VkSemaphore
    value*: uint64
    stageMask*: VkPipelineStageFlags2
    deviceIndex*: uint32

  VkCommandBufferSubmitInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    commandBuffer*: VkCommandBuffer
    deviceMask*: uint32

  VkSubmitInfo2* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkSubmitFlags
    waitSemaphoreInfoCount*: uint32
    pWaitSemaphoreInfos*: ptr VkSemaphoreSubmitInfo
    commandBufferInfoCount*: uint32
    pCommandBufferInfos*: ptr VkCommandBufferSubmitInfo
    signalSemaphoreInfoCount*: uint32
    pSignalSemaphoreInfos*: ptr VkSemaphoreSubmitInfo

  VkQueueFamilyCheckpointProperties2NV* = object
    sType*: VkStructureType
    pNext*: pointer
    checkpointExecutionStageMask*: VkPipelineStageFlags2

  VkCheckpointData2NV* = object
    sType*: VkStructureType
    pNext*: pointer
    stage*: VkPipelineStageFlags2
    pCheckpointMarker*: pointer

  VkPhysicalDeviceSynchronization2Features* = object
    sType*: VkStructureType
    pNext*: pointer
    synchronization2*: VkBool32

  VkPhysicalDeviceUnifiedImageLayoutsFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    unifiedImageLayouts*: VkBool32
    unifiedImageLayoutsVideo*: VkBool32

  VkPhysicalDeviceHostImageCopyFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    hostImageCopy*: VkBool32

  VkPhysicalDeviceHostImageCopyProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    copySrcLayoutCount*: uint32
    pCopySrcLayouts*: ptr VkImageLayout
    copyDstLayoutCount*: uint32
    pCopyDstLayouts*: ptr VkImageLayout
    optimalTilingLayoutUUID*: array[VK_UUID_SIZE, uint8]
    identicalMemoryTypeRequirements*: VkBool32

  VkMemoryToImageCopy* = object
    sType*: VkStructureType
    pNext*: pointer
    pHostPointer*: pointer
    memoryRowLength*: uint32
    memoryImageHeight*: uint32
    imageSubresource*: VkImageSubresourceLayers
    imageOffset*: VkOffset3D
    imageExtent*: VkExtent3D

  VkImageToMemoryCopy* = object
    sType*: VkStructureType
    pNext*: pointer
    pHostPointer*: pointer
    memoryRowLength*: uint32
    memoryImageHeight*: uint32
    imageSubresource*: VkImageSubresourceLayers
    imageOffset*: VkOffset3D
    imageExtent*: VkExtent3D

  VkCopyMemoryToImageInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkHostImageCopyFlags
    dstImage*: VkImage
    dstImageLayout*: VkImageLayout
    regionCount*: uint32
    pRegions*: ptr VkMemoryToImageCopy

  VkCopyImageToMemoryInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkHostImageCopyFlags
    srcImage*: VkImage
    srcImageLayout*: VkImageLayout
    regionCount*: uint32
    pRegions*: ptr VkImageToMemoryCopy

  VkCopyImageToImageInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkHostImageCopyFlags
    srcImage*: VkImage
    srcImageLayout*: VkImageLayout
    dstImage*: VkImage
    dstImageLayout*: VkImageLayout
    regionCount*: uint32
    pRegions*: ptr VkImageCopy2

  VkHostImageLayoutTransitionInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    image*: VkImage
    oldLayout*: VkImageLayout
    newLayout*: VkImageLayout
    subresourceRange*: VkImageSubresourceRange

  VkSubresourceHostMemcpySize* = object
    sType*: VkStructureType
    pNext*: pointer
    size*: VkDeviceSize

  VkHostImageCopyDevicePerformanceQuery* = object
    sType*: VkStructureType
    pNext*: pointer
    optimalDeviceAccess*: VkBool32
    identicalMemoryLayout*: VkBool32

  VkPhysicalDeviceVulkanSC10Properties* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceNoDynamicHostAllocations*: VkBool32
    deviceDestroyFreesMemory*: VkBool32
    commandPoolMultipleCommandBuffersRecording*: VkBool32
    commandPoolResetCommandBuffer*: VkBool32
    commandBufferSimultaneousUse*: VkBool32
    secondaryCommandBufferNullOrImagelessFramebuffer*: VkBool32
    recycleDescriptorSetMemory*: VkBool32
    recyclePipelineMemory*: VkBool32
    maxRenderPassSubpasses*: uint32
    maxRenderPassDependencies*: uint32
    maxSubpassInputAttachments*: uint32
    maxSubpassPreserveAttachments*: uint32
    maxFramebufferAttachments*: uint32
    maxDescriptorSetLayoutBindings*: uint32
    maxQueryFaultCount*: uint32
    maxCallbackFaultCount*: uint32
    maxCommandPoolCommandBuffers*: uint32
    maxCommandBufferSize*: VkDeviceSize

  VkPipelinePoolSize* = object
    sType*: VkStructureType
    pNext*: pointer
    poolEntrySize*: VkDeviceSize
    poolEntryCount*: uint32

  VkDeviceObjectReservationCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineCacheCreateInfoCount*: uint32
    pPipelineCacheCreateInfos*: ptr VkPipelineCacheCreateInfo
    pipelinePoolSizeCount*: uint32
    pPipelinePoolSizes*: ptr VkPipelinePoolSize
    semaphoreRequestCount*: uint32
    commandBufferRequestCount*: uint32
    fenceRequestCount*: uint32
    deviceMemoryRequestCount*: uint32
    bufferRequestCount*: uint32
    imageRequestCount*: uint32
    eventRequestCount*: uint32
    queryPoolRequestCount*: uint32
    bufferViewRequestCount*: uint32
    imageViewRequestCount*: uint32
    layeredImageViewRequestCount*: uint32
    pipelineCacheRequestCount*: uint32
    pipelineLayoutRequestCount*: uint32
    renderPassRequestCount*: uint32
    graphicsPipelineRequestCount*: uint32
    computePipelineRequestCount*: uint32
    descriptorSetLayoutRequestCount*: uint32
    samplerRequestCount*: uint32
    descriptorPoolRequestCount*: uint32
    descriptorSetRequestCount*: uint32
    framebufferRequestCount*: uint32
    commandPoolRequestCount*: uint32
    samplerYcbcrConversionRequestCount*: uint32
    surfaceRequestCount*: uint32
    swapchainRequestCount*: uint32
    displayModeRequestCount*: uint32
    subpassDescriptionRequestCount*: uint32
    attachmentDescriptionRequestCount*: uint32
    descriptorSetLayoutBindingRequestCount*: uint32
    descriptorSetLayoutBindingLimit*: uint32
    maxImageViewMipLevels*: uint32
    maxImageViewArrayLayers*: uint32
    maxLayeredImageViewMipLevels*: uint32
    maxOcclusionQueriesPerPool*: uint32
    maxPipelineStatisticsQueriesPerPool*: uint32
    maxTimestampQueriesPerPool*: uint32
    maxImmutableSamplersPerDescriptorSetLayout*: uint32

  VkCommandPoolMemoryReservationCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    commandPoolReservedSize*: VkDeviceSize
    commandPoolMaxCommandBuffers*: uint32

  VkCommandPoolMemoryConsumption* = object
    sType*: VkStructureType
    pNext*: pointer
    commandPoolAllocated*: VkDeviceSize
    commandPoolReservedSize*: VkDeviceSize
    commandBufferAllocated*: VkDeviceSize

  VkPhysicalDeviceVulkanSC10Features* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderAtomicInstructions*: VkBool32

  VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    primitivesGeneratedQuery*: VkBool32
    primitivesGeneratedQueryWithRasterizerDiscard*: VkBool32
    primitivesGeneratedQueryWithNonZeroStreams*: VkBool32

  VkPhysicalDeviceLegacyDitheringFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    legacyDithering*: VkBool32

  VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    multisampledRenderToSingleSampled*: VkBool32

  VkSurfaceCapabilitiesPresentId2KHR* = object
    sType*: VkStructureType
    pNext*: pointer
    presentId2Supported*: VkBool32

  VkSurfaceCapabilitiesPresentWait2KHR* = object
    sType*: VkStructureType
    pNext*: pointer
    presentWait2Supported*: VkBool32

  VkSubpassResolvePerformanceQueryEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    optimal*: VkBool32

  VkMultisampledRenderToSingleSampledInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    multisampledRenderToSingleSampledEnable*: VkBool32
    rasterizationSamples*: VkSampleCountFlagBits

  VkPhysicalDevicePipelineProtectedAccessFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineProtectedAccess*: VkBool32

  VkQueueFamilyVideoPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    videoCodecOperations*: VkVideoCodecOperationFlagsKHR

  VkQueueFamilyQueryResultStatusPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    queryResultStatusSupport*: VkBool32

  VkVideoProfileListInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    profileCount*: uint32
    pProfiles*: ptr VkVideoProfileInfoKHR

  VkPhysicalDeviceVideoFormatInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    imageUsage*: VkImageUsageFlags

  VkVideoFormatPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    format*: VkFormat
    componentMapping*: VkComponentMapping
    imageCreateFlags*: VkImageCreateFlags
    imageType*: VkImageType
    imageTiling*: VkImageTiling
    imageUsageFlags*: VkImageUsageFlags

  VkVideoEncodeQuantizationMapCapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    maxQuantizationMapExtent*: VkExtent2D

  VkVideoEncodeH264QuantizationMapCapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    minQpDelta*: int32
    maxQpDelta*: int32

  VkVideoEncodeH265QuantizationMapCapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    minQpDelta*: int32
    maxQpDelta*: int32

  VkVideoEncodeAV1QuantizationMapCapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    minQIndexDelta*: int32
    maxQIndexDelta*: int32

  VkVideoFormatQuantizationMapPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    quantizationMapTexelSize*: VkExtent2D

  VkVideoFormatH265QuantizationMapPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    compatibleCtbSizes*: VkVideoEncodeH265CtbSizeFlagsKHR

  VkVideoFormatAV1QuantizationMapPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    compatibleSuperblockSizes*: VkVideoEncodeAV1SuperblockSizeFlagsKHR

  VkVideoProfileInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    videoCodecOperation*: VkVideoCodecOperationFlagBitsKHR
    chromaSubsampling*: VkVideoChromaSubsamplingFlagsKHR
    lumaBitDepth*: VkVideoComponentBitDepthFlagsKHR
    chromaBitDepth*: VkVideoComponentBitDepthFlagsKHR

  VkVideoCapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkVideoCapabilityFlagsKHR
    minBitstreamBufferOffsetAlignment*: VkDeviceSize
    minBitstreamBufferSizeAlignment*: VkDeviceSize
    pictureAccessGranularity*: VkExtent2D
    minCodedExtent*: VkExtent2D
    maxCodedExtent*: VkExtent2D
    maxDpbSlots*: uint32
    maxActiveReferencePictures*: uint32
    stdHeaderVersion*: VkExtensionProperties

  VkVideoSessionMemoryRequirementsKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    memoryBindIndex*: uint32
    memoryRequirements*: VkMemoryRequirements

  VkBindVideoSessionMemoryInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    memoryBindIndex*: uint32
    memory*: VkDeviceMemory
    memoryOffset*: VkDeviceSize
    memorySize*: VkDeviceSize

  VkVideoPictureResourceInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    codedOffset*: VkOffset2D
    codedExtent*: VkExtent2D
    baseArrayLayer*: uint32
    imageViewBinding*: VkImageView

  VkVideoReferenceSlotInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    slotIndex*: int32
    pPictureResource*: ptr VkVideoPictureResourceInfoKHR

  VkVideoDecodeCapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkVideoDecodeCapabilityFlagsKHR

  VkVideoDecodeUsageInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    videoUsageHints*: VkVideoDecodeUsageFlagsKHR

  VkVideoDecodeInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkVideoDecodeFlagsKHR
    srcBuffer*: VkBuffer
    srcBufferOffset*: VkDeviceSize
    srcBufferRange*: VkDeviceSize
    dstPictureResource*: VkVideoPictureResourceInfoKHR
    pSetupReferenceSlot*: ptr VkVideoReferenceSlotInfoKHR
    referenceSlotCount*: uint32
    pReferenceSlots*: ptr VkVideoReferenceSlotInfoKHR

  VkPhysicalDeviceVideoMaintenance1FeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    videoMaintenance1*: VkBool32

  VkPhysicalDeviceVideoMaintenance2FeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    videoMaintenance2*: VkBool32

  VkVideoInlineQueryInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    queryPool*: VkQueryPool
    firstQuery*: uint32
    queryCount*: uint32

  VkVideoDecodeH264ProfileInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    stdProfileIdc*: StdVideoH264ProfileIdc
    pictureLayout*: VkVideoDecodeH264PictureLayoutFlagBitsKHR

  VkVideoDecodeH264CapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    maxLevelIdc*: StdVideoH264LevelIdc
    fieldOffsetGranularity*: VkOffset2D

  VkVideoDecodeH264SessionParametersAddInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    stdSPSCount*: uint32
    pStdSPSs*: ptr StdVideoH264SequenceParameterSet
    stdPPSCount*: uint32
    pStdPPSs*: ptr StdVideoH264PictureParameterSet

  VkVideoDecodeH264SessionParametersCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    maxStdSPSCount*: uint32
    maxStdPPSCount*: uint32
    pParametersAddInfo*: ptr VkVideoDecodeH264SessionParametersAddInfoKHR

  VkVideoDecodeH264InlineSessionParametersInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pStdSPS*: ptr StdVideoH264SequenceParameterSet
    pStdPPS*: ptr StdVideoH264PictureParameterSet

  VkVideoDecodeH264PictureInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pStdPictureInfo*: ptr StdVideoDecodeH264PictureInfo
    sliceCount*: uint32
    pSliceOffsets*: ptr uint32

  VkVideoDecodeH264DpbSlotInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pStdReferenceInfo*: ptr StdVideoDecodeH264ReferenceInfo

  VkVideoDecodeH265ProfileInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    stdProfileIdc*: StdVideoH265ProfileIdc

  VkVideoDecodeH265CapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    maxLevelIdc*: StdVideoH265LevelIdc

  VkVideoDecodeH265SessionParametersAddInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    stdVPSCount*: uint32
    pStdVPSs*: ptr StdVideoH265VideoParameterSet
    stdSPSCount*: uint32
    pStdSPSs*: ptr StdVideoH265SequenceParameterSet
    stdPPSCount*: uint32
    pStdPPSs*: ptr StdVideoH265PictureParameterSet

  VkVideoDecodeH265SessionParametersCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    maxStdVPSCount*: uint32
    maxStdSPSCount*: uint32
    maxStdPPSCount*: uint32
    pParametersAddInfo*: ptr VkVideoDecodeH265SessionParametersAddInfoKHR

  VkVideoDecodeH265InlineSessionParametersInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pStdVPS*: ptr StdVideoH265VideoParameterSet
    pStdSPS*: ptr StdVideoH265SequenceParameterSet
    pStdPPS*: ptr StdVideoH265PictureParameterSet

  VkVideoDecodeH265PictureInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pStdPictureInfo*: ptr StdVideoDecodeH265PictureInfo
    sliceSegmentCount*: uint32
    pSliceSegmentOffsets*: ptr uint32

  VkVideoDecodeH265DpbSlotInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pStdReferenceInfo*: ptr StdVideoDecodeH265ReferenceInfo

  VkPhysicalDeviceVideoDecodeVP9FeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    videoDecodeVP9*: VkBool32

  VkVideoDecodeVP9ProfileInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    stdProfile*: StdVideoVP9Profile

  VkVideoDecodeVP9CapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    maxLevel*: StdVideoVP9Level

  VkVideoDecodeVP9PictureInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pStdPictureInfo*: ptr StdVideoDecodeVP9PictureInfo
    referenceNameSlotIndices*: array[VK_MAX_VIDEO_VP9_REFERENCES_PER_FRAME_KHR, int32]
    uncompressedHeaderOffset*: uint32
    compressedHeaderOffset*: uint32
    tilesOffset*: uint32

  VkVideoDecodeAV1ProfileInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    stdProfile*: StdVideoAV1Profile
    filmGrainSupport*: VkBool32

  VkVideoDecodeAV1CapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    maxLevel*: StdVideoAV1Level

  VkVideoDecodeAV1SessionParametersCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pStdSequenceHeader*: ptr StdVideoAV1SequenceHeader

  VkVideoDecodeAV1InlineSessionParametersInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pStdSequenceHeader*: ptr StdVideoAV1SequenceHeader

  VkVideoDecodeAV1PictureInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pStdPictureInfo*: ptr StdVideoDecodeAV1PictureInfo
    referenceNameSlotIndices*: array[VK_MAX_VIDEO_AV1_REFERENCES_PER_FRAME_KHR, int32]
    frameHeaderOffset*: uint32
    tileCount*: uint32
    pTileOffsets*: ptr uint32
    pTileSizes*: ptr uint32

  VkVideoDecodeAV1DpbSlotInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pStdReferenceInfo*: ptr StdVideoDecodeAV1ReferenceInfo

  VkVideoSessionCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    queueFamilyIndex*: uint32
    flags*: VkVideoSessionCreateFlagsKHR
    pVideoProfile*: ptr VkVideoProfileInfoKHR
    pictureFormat*: VkFormat
    maxCodedExtent*: VkExtent2D
    referencePictureFormat*: VkFormat
    maxDpbSlots*: uint32
    maxActiveReferencePictures*: uint32
    pStdHeaderVersion*: ptr VkExtensionProperties

  VkVideoSessionParametersCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkVideoSessionParametersCreateFlagsKHR
    videoSessionParametersTemplate*: VkVideoSessionParametersKHR
    videoSession*: VkVideoSessionKHR

  VkVideoSessionParametersUpdateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    updateSequenceCount*: uint32

  VkVideoEncodeSessionParametersGetInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    videoSessionParameters*: VkVideoSessionParametersKHR

  VkVideoEncodeSessionParametersFeedbackInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    hasOverrides*: VkBool32

  VkVideoBeginCodingInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkVideoBeginCodingFlagsKHR
    videoSession*: VkVideoSessionKHR
    videoSessionParameters*: VkVideoSessionParametersKHR
    referenceSlotCount*: uint32
    pReferenceSlots*: ptr VkVideoReferenceSlotInfoKHR

  VkVideoEndCodingInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkVideoEndCodingFlagsKHR

  VkVideoCodingControlInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkVideoCodingControlFlagsKHR

  VkVideoEncodeUsageInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    videoUsageHints*: VkVideoEncodeUsageFlagsKHR
    videoContentHints*: VkVideoEncodeContentFlagsKHR
    tuningMode*: VkVideoEncodeTuningModeKHR

  VkVideoEncodeInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkVideoEncodeFlagsKHR
    dstBuffer*: VkBuffer
    dstBufferOffset*: VkDeviceSize
    dstBufferRange*: VkDeviceSize
    srcPictureResource*: VkVideoPictureResourceInfoKHR
    pSetupReferenceSlot*: ptr VkVideoReferenceSlotInfoKHR
    referenceSlotCount*: uint32
    pReferenceSlots*: ptr VkVideoReferenceSlotInfoKHR
    precedingExternallyEncodedBytes*: uint32

  VkVideoEncodeQuantizationMapInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    quantizationMap*: VkImageView
    quantizationMapExtent*: VkExtent2D

  VkVideoEncodeQuantizationMapSessionParametersCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    quantizationMapTexelSize*: VkExtent2D

  VkPhysicalDeviceVideoEncodeQuantizationMapFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    videoEncodeQuantizationMap*: VkBool32

  VkQueryPoolVideoEncodeFeedbackCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    encodeFeedbackFlags*: VkVideoEncodeFeedbackFlagsKHR

  VkVideoEncodeQualityLevelInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    qualityLevel*: uint32

  VkPhysicalDeviceVideoEncodeQualityLevelInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pVideoProfile*: ptr VkVideoProfileInfoKHR
    qualityLevel*: uint32

  VkVideoEncodeQualityLevelPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    preferredRateControlMode*: VkVideoEncodeRateControlModeFlagBitsKHR
    preferredRateControlLayerCount*: uint32

  VkVideoEncodeRateControlInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkVideoEncodeRateControlFlagsKHR
    rateControlMode*: VkVideoEncodeRateControlModeFlagBitsKHR
    layerCount*: uint32
    pLayers*: ptr VkVideoEncodeRateControlLayerInfoKHR
    virtualBufferSizeInMs*: uint32
    initialVirtualBufferSizeInMs*: uint32

  VkVideoEncodeRateControlLayerInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    averageBitrate*: uint64
    maxBitrate*: uint64
    frameRateNumerator*: uint32
    frameRateDenominator*: uint32

  VkVideoEncodeCapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkVideoEncodeCapabilityFlagsKHR
    rateControlModes*: VkVideoEncodeRateControlModeFlagsKHR
    maxRateControlLayers*: uint32
    maxBitrate*: uint64
    maxQualityLevels*: uint32
    encodeInputPictureGranularity*: VkExtent2D
    supportedEncodeFeedbackFlags*: VkVideoEncodeFeedbackFlagsKHR

  VkVideoEncodeH264CapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkVideoEncodeH264CapabilityFlagsKHR
    maxLevelIdc*: StdVideoH264LevelIdc
    maxSliceCount*: uint32
    maxPPictureL0ReferenceCount*: uint32
    maxBPictureL0ReferenceCount*: uint32
    maxL1ReferenceCount*: uint32
    maxTemporalLayerCount*: uint32
    expectDyadicTemporalLayerPattern*: VkBool32
    minQp*: int32
    maxQp*: int32
    prefersGopRemainingFrames*: VkBool32
    requiresGopRemainingFrames*: VkBool32
    stdSyntaxFlags*: VkVideoEncodeH264StdFlagsKHR

  VkVideoEncodeH264QualityLevelPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    preferredRateControlFlags*: VkVideoEncodeH264RateControlFlagsKHR
    preferredGopFrameCount*: uint32
    preferredIdrPeriod*: uint32
    preferredConsecutiveBFrameCount*: uint32
    preferredTemporalLayerCount*: uint32
    preferredConstantQp*: VkVideoEncodeH264QpKHR
    preferredMaxL0ReferenceCount*: uint32
    preferredMaxL1ReferenceCount*: uint32
    preferredStdEntropyCodingModeFlag*: VkBool32

  VkVideoEncodeH264SessionCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    useMaxLevelIdc*: VkBool32
    maxLevelIdc*: StdVideoH264LevelIdc

  VkVideoEncodeH264SessionParametersAddInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    stdSPSCount*: uint32
    pStdSPSs*: ptr StdVideoH264SequenceParameterSet
    stdPPSCount*: uint32
    pStdPPSs*: ptr StdVideoH264PictureParameterSet

  VkVideoEncodeH264SessionParametersCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    maxStdSPSCount*: uint32
    maxStdPPSCount*: uint32
    pParametersAddInfo*: ptr VkVideoEncodeH264SessionParametersAddInfoKHR

  VkVideoEncodeH264SessionParametersGetInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    writeStdSPS*: VkBool32
    writeStdPPS*: VkBool32
    stdSPSId*: uint32
    stdPPSId*: uint32

  VkVideoEncodeH264SessionParametersFeedbackInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    hasStdSPSOverrides*: VkBool32
    hasStdPPSOverrides*: VkBool32

  VkVideoEncodeH264DpbSlotInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pStdReferenceInfo*: ptr StdVideoEncodeH264ReferenceInfo

  VkVideoEncodeH264PictureInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    naluSliceEntryCount*: uint32
    pNaluSliceEntries*: ptr VkVideoEncodeH264NaluSliceInfoKHR
    pStdPictureInfo*: ptr StdVideoEncodeH264PictureInfo
    generatePrefixNalu*: VkBool32

  VkVideoEncodeH264ProfileInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    stdProfileIdc*: StdVideoH264ProfileIdc

  VkVideoEncodeH264NaluSliceInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    constantQp*: int32
    pStdSliceHeader*: ptr StdVideoEncodeH264SliceHeader

  VkVideoEncodeH264RateControlInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkVideoEncodeH264RateControlFlagsKHR
    gopFrameCount*: uint32
    idrPeriod*: uint32
    consecutiveBFrameCount*: uint32
    temporalLayerCount*: uint32

  VkVideoEncodeH264QpKHR* = object
    qpI*: int32
    qpP*: int32
    qpB*: int32

  VkVideoEncodeH264FrameSizeKHR* = object
    frameISize*: uint32
    framePSize*: uint32
    frameBSize*: uint32

  VkVideoEncodeH264GopRemainingFrameInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    useGopRemainingFrames*: VkBool32
    gopRemainingI*: uint32
    gopRemainingP*: uint32
    gopRemainingB*: uint32

  VkVideoEncodeH264RateControlLayerInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    useMinQp*: VkBool32
    minQp*: VkVideoEncodeH264QpKHR
    useMaxQp*: VkBool32
    maxQp*: VkVideoEncodeH264QpKHR
    useMaxFrameSize*: VkBool32
    maxFrameSize*: VkVideoEncodeH264FrameSizeKHR

  VkVideoEncodeH265CapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkVideoEncodeH265CapabilityFlagsKHR
    maxLevelIdc*: StdVideoH265LevelIdc
    maxSliceSegmentCount*: uint32
    maxTiles*: VkExtent2D
    ctbSizes*: VkVideoEncodeH265CtbSizeFlagsKHR
    transformBlockSizes*: VkVideoEncodeH265TransformBlockSizeFlagsKHR
    maxPPictureL0ReferenceCount*: uint32
    maxBPictureL0ReferenceCount*: uint32
    maxL1ReferenceCount*: uint32
    maxSubLayerCount*: uint32
    expectDyadicTemporalSubLayerPattern*: VkBool32
    minQp*: int32
    maxQp*: int32
    prefersGopRemainingFrames*: VkBool32
    requiresGopRemainingFrames*: VkBool32
    stdSyntaxFlags*: VkVideoEncodeH265StdFlagsKHR

  VkVideoEncodeH265QualityLevelPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    preferredRateControlFlags*: VkVideoEncodeH265RateControlFlagsKHR
    preferredGopFrameCount*: uint32
    preferredIdrPeriod*: uint32
    preferredConsecutiveBFrameCount*: uint32
    preferredSubLayerCount*: uint32
    preferredConstantQp*: VkVideoEncodeH265QpKHR
    preferredMaxL0ReferenceCount*: uint32
    preferredMaxL1ReferenceCount*: uint32

  VkVideoEncodeH265SessionCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    useMaxLevelIdc*: VkBool32
    maxLevelIdc*: StdVideoH265LevelIdc

  VkVideoEncodeH265SessionParametersAddInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    stdVPSCount*: uint32
    pStdVPSs*: ptr StdVideoH265VideoParameterSet
    stdSPSCount*: uint32
    pStdSPSs*: ptr StdVideoH265SequenceParameterSet
    stdPPSCount*: uint32
    pStdPPSs*: ptr StdVideoH265PictureParameterSet

  VkVideoEncodeH265SessionParametersCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    maxStdVPSCount*: uint32
    maxStdSPSCount*: uint32
    maxStdPPSCount*: uint32
    pParametersAddInfo*: ptr VkVideoEncodeH265SessionParametersAddInfoKHR

  VkVideoEncodeH265SessionParametersGetInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    writeStdVPS*: VkBool32
    writeStdSPS*: VkBool32
    writeStdPPS*: VkBool32
    stdVPSId*: uint32
    stdSPSId*: uint32
    stdPPSId*: uint32

  VkVideoEncodeH265SessionParametersFeedbackInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    hasStdVPSOverrides*: VkBool32
    hasStdSPSOverrides*: VkBool32
    hasStdPPSOverrides*: VkBool32

  VkVideoEncodeH265PictureInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    naluSliceSegmentEntryCount*: uint32
    pNaluSliceSegmentEntries*: ptr VkVideoEncodeH265NaluSliceSegmentInfoKHR
    pStdPictureInfo*: ptr StdVideoEncodeH265PictureInfo

  VkVideoEncodeH265NaluSliceSegmentInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    constantQp*: int32
    pStdSliceSegmentHeader*: ptr StdVideoEncodeH265SliceSegmentHeader

  VkVideoEncodeH265RateControlInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkVideoEncodeH265RateControlFlagsKHR
    gopFrameCount*: uint32
    idrPeriod*: uint32
    consecutiveBFrameCount*: uint32
    subLayerCount*: uint32

  VkVideoEncodeH265QpKHR* = object
    qpI*: int32
    qpP*: int32
    qpB*: int32

  VkVideoEncodeH265FrameSizeKHR* = object
    frameISize*: uint32
    framePSize*: uint32
    frameBSize*: uint32

  VkVideoEncodeH265GopRemainingFrameInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    useGopRemainingFrames*: VkBool32
    gopRemainingI*: uint32
    gopRemainingP*: uint32
    gopRemainingB*: uint32

  VkVideoEncodeH265RateControlLayerInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    useMinQp*: VkBool32
    minQp*: VkVideoEncodeH265QpKHR
    useMaxQp*: VkBool32
    maxQp*: VkVideoEncodeH265QpKHR
    useMaxFrameSize*: VkBool32
    maxFrameSize*: VkVideoEncodeH265FrameSizeKHR

  VkVideoEncodeH265ProfileInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    stdProfileIdc*: StdVideoH265ProfileIdc

  VkVideoEncodeH265DpbSlotInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pStdReferenceInfo*: ptr StdVideoEncodeH265ReferenceInfo

  VkVideoEncodeAV1CapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkVideoEncodeAV1CapabilityFlagsKHR
    maxLevel*: StdVideoAV1Level
    codedPictureAlignment*: VkExtent2D
    maxTiles*: VkExtent2D
    minTileSize*: VkExtent2D
    maxTileSize*: VkExtent2D
    superblockSizes*: VkVideoEncodeAV1SuperblockSizeFlagsKHR
    maxSingleReferenceCount*: uint32
    singleReferenceNameMask*: uint32
    maxUnidirectionalCompoundReferenceCount*: uint32
    maxUnidirectionalCompoundGroup1ReferenceCount*: uint32
    unidirectionalCompoundReferenceNameMask*: uint32
    maxBidirectionalCompoundReferenceCount*: uint32
    maxBidirectionalCompoundGroup1ReferenceCount*: uint32
    maxBidirectionalCompoundGroup2ReferenceCount*: uint32
    bidirectionalCompoundReferenceNameMask*: uint32
    maxTemporalLayerCount*: uint32
    maxSpatialLayerCount*: uint32
    maxOperatingPoints*: uint32
    minQIndex*: uint32
    maxQIndex*: uint32
    prefersGopRemainingFrames*: VkBool32
    requiresGopRemainingFrames*: VkBool32
    stdSyntaxFlags*: VkVideoEncodeAV1StdFlagsKHR

  VkVideoEncodeAV1QualityLevelPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    preferredRateControlFlags*: VkVideoEncodeAV1RateControlFlagsKHR
    preferredGopFrameCount*: uint32
    preferredKeyFramePeriod*: uint32
    preferredConsecutiveBipredictiveFrameCount*: uint32
    preferredTemporalLayerCount*: uint32
    preferredConstantQIndex*: VkVideoEncodeAV1QIndexKHR
    preferredMaxSingleReferenceCount*: uint32
    preferredSingleReferenceNameMask*: uint32
    preferredMaxUnidirectionalCompoundReferenceCount*: uint32
    preferredMaxUnidirectionalCompoundGroup1ReferenceCount*: uint32
    preferredUnidirectionalCompoundReferenceNameMask*: uint32
    preferredMaxBidirectionalCompoundReferenceCount*: uint32
    preferredMaxBidirectionalCompoundGroup1ReferenceCount*: uint32
    preferredMaxBidirectionalCompoundGroup2ReferenceCount*: uint32
    preferredBidirectionalCompoundReferenceNameMask*: uint32

  VkPhysicalDeviceVideoEncodeAV1FeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    videoEncodeAV1*: VkBool32

  VkVideoEncodeAV1SessionCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    useMaxLevel*: VkBool32
    maxLevel*: StdVideoAV1Level

  VkVideoEncodeAV1SessionParametersCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pStdSequenceHeader*: ptr StdVideoAV1SequenceHeader
    pStdDecoderModelInfo*: ptr StdVideoEncodeAV1DecoderModelInfo
    stdOperatingPointCount*: uint32
    pStdOperatingPoints*: ptr StdVideoEncodeAV1OperatingPointInfo

  VkVideoEncodeAV1DpbSlotInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pStdReferenceInfo*: ptr StdVideoEncodeAV1ReferenceInfo

  VkVideoEncodeAV1PictureInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    predictionMode*: VkVideoEncodeAV1PredictionModeKHR
    rateControlGroup*: VkVideoEncodeAV1RateControlGroupKHR
    constantQIndex*: uint32
    pStdPictureInfo*: ptr StdVideoEncodeAV1PictureInfo
    referenceNameSlotIndices*: array[VK_MAX_VIDEO_AV1_REFERENCES_PER_FRAME_KHR, int32]
    primaryReferenceCdfOnly*: VkBool32
    generateObuExtensionHeader*: VkBool32

  VkVideoEncodeAV1ProfileInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    stdProfile*: StdVideoAV1Profile

  VkVideoEncodeAV1RateControlInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkVideoEncodeAV1RateControlFlagsKHR
    gopFrameCount*: uint32
    keyFramePeriod*: uint32
    consecutiveBipredictiveFrameCount*: uint32
    temporalLayerCount*: uint32

  VkVideoEncodeAV1QIndexKHR* = object
    intraQIndex*: uint32
    predictiveQIndex*: uint32
    bipredictiveQIndex*: uint32

  VkVideoEncodeAV1FrameSizeKHR* = object
    intraFrameSize*: uint32
    predictiveFrameSize*: uint32
    bipredictiveFrameSize*: uint32

  VkVideoEncodeAV1GopRemainingFrameInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    useGopRemainingFrames*: VkBool32
    gopRemainingIntra*: uint32
    gopRemainingPredictive*: uint32
    gopRemainingBipredictive*: uint32

  VkVideoEncodeAV1RateControlLayerInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    useMinQIndex*: VkBool32
    minQIndex*: VkVideoEncodeAV1QIndexKHR
    useMaxQIndex*: VkBool32
    maxQIndex*: VkVideoEncodeAV1QIndexKHR
    useMaxFrameSize*: VkBool32
    maxFrameSize*: VkVideoEncodeAV1FrameSizeKHR

  VkPhysicalDeviceInheritedViewportScissorFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    inheritedViewportScissor2D*: VkBool32

  VkCommandBufferInheritanceViewportScissorInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    viewportScissor2D*: VkBool32
    viewportDepthCount*: uint32
    pViewportDepths*: ptr VkViewport

  VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    ycbcr2plane444Formats*: VkBool32

  VkPhysicalDeviceProvokingVertexFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    provokingVertexLast*: VkBool32
    transformFeedbackPreservesProvokingVertex*: VkBool32

  VkPhysicalDeviceProvokingVertexPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    provokingVertexModePerPipeline*: VkBool32
    transformFeedbackPreservesTriangleFanProvokingVertex*: VkBool32

  VkPipelineRasterizationProvokingVertexStateCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    provokingVertexMode*: VkProvokingVertexModeEXT

  VkVideoEncodeIntraRefreshCapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    intraRefreshModes*: VkVideoEncodeIntraRefreshModeFlagsKHR
    maxIntraRefreshCycleDuration*: uint32
    maxIntraRefreshActiveReferencePictures*: uint32
    partitionIndependentIntraRefreshRegions*: VkBool32
    nonRectangularIntraRefreshRegions*: VkBool32

  VkVideoEncodeSessionIntraRefreshCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    intraRefreshMode*: VkVideoEncodeIntraRefreshModeFlagBitsKHR

  VkVideoEncodeIntraRefreshInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    intraRefreshCycleDuration*: uint32
    intraRefreshIndex*: uint32

  VkVideoReferenceIntraRefreshInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    dirtyIntraRefreshRegions*: uint32

  VkPhysicalDeviceVideoEncodeIntraRefreshFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    videoEncodeIntraRefresh*: VkBool32

  VkCuModuleCreateInfoNVX* = object
    sType*: VkStructureType
    pNext*: pointer
    dataSize*: csize_t
    pData*: pointer

  VkCuModuleTexturingModeCreateInfoNVX* = object
    sType*: VkStructureType
    pNext*: pointer
    use64bitTexturing*: VkBool32

  VkCuFunctionCreateInfoNVX* = object
    sType*: VkStructureType
    pNext*: pointer
    module*: VkCuModuleNVX
    pName*: cstring

  VkCuLaunchInfoNVX* = object
    sType*: VkStructureType
    pNext*: pointer
    function*: VkCuFunctionNVX
    gridDimX*: uint32
    gridDimY*: uint32
    gridDimZ*: uint32
    blockDimX*: uint32
    blockDimY*: uint32
    blockDimZ*: uint32
    sharedMemBytes*: uint32
    paramCount*: csize_t
    pParams*: ptr pointer
    extraCount*: csize_t
    pExtras*: ptr pointer

  VkPhysicalDeviceDescriptorBufferFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    descriptorBuffer*: VkBool32
    descriptorBufferCaptureReplay*: VkBool32
    descriptorBufferImageLayoutIgnored*: VkBool32
    descriptorBufferPushDescriptors*: VkBool32

  VkPhysicalDeviceDescriptorBufferPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    combinedImageSamplerDescriptorSingleArray*: VkBool32
    bufferlessPushDescriptors*: VkBool32
    allowSamplerImageViewPostSubmitCreation*: VkBool32
    descriptorBufferOffsetAlignment*: VkDeviceSize
    maxDescriptorBufferBindings*: uint32
    maxResourceDescriptorBufferBindings*: uint32
    maxSamplerDescriptorBufferBindings*: uint32
    maxEmbeddedImmutableSamplerBindings*: uint32
    maxEmbeddedImmutableSamplers*: uint32
    bufferCaptureReplayDescriptorDataSize*: csize_t
    imageCaptureReplayDescriptorDataSize*: csize_t
    imageViewCaptureReplayDescriptorDataSize*: csize_t
    samplerCaptureReplayDescriptorDataSize*: csize_t
    accelerationStructureCaptureReplayDescriptorDataSize*: csize_t
    samplerDescriptorSize*: csize_t
    combinedImageSamplerDescriptorSize*: csize_t
    sampledImageDescriptorSize*: csize_t
    storageImageDescriptorSize*: csize_t
    uniformTexelBufferDescriptorSize*: csize_t
    robustUniformTexelBufferDescriptorSize*: csize_t
    storageTexelBufferDescriptorSize*: csize_t
    robustStorageTexelBufferDescriptorSize*: csize_t
    uniformBufferDescriptorSize*: csize_t
    robustUniformBufferDescriptorSize*: csize_t
    storageBufferDescriptorSize*: csize_t
    robustStorageBufferDescriptorSize*: csize_t
    inputAttachmentDescriptorSize*: csize_t
    accelerationStructureDescriptorSize*: csize_t
    maxSamplerDescriptorBufferRange*: VkDeviceSize
    maxResourceDescriptorBufferRange*: VkDeviceSize
    samplerDescriptorBufferAddressSpaceSize*: VkDeviceSize
    resourceDescriptorBufferAddressSpaceSize*: VkDeviceSize
    descriptorBufferAddressSpaceSize*: VkDeviceSize

  VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    combinedImageSamplerDensityMapDescriptorSize*: csize_t

  VkDescriptorAddressInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    address*: VkDeviceAddress
    range*: VkDeviceSize
    format*: VkFormat

  VkDescriptorBufferBindingInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    address*: VkDeviceAddress
    usage*: VkBufferUsageFlags

  VkDescriptorBufferBindingPushDescriptorBufferHandleEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    buffer*: VkBuffer

  VkDescriptorDataEXT* {.union.} = object
    pSampler*: ptr VkSampler
    pCombinedImageSampler*: ptr VkDescriptorImageInfo
    pInputAttachmentImage*: ptr VkDescriptorImageInfo
    pSampledImage*: ptr VkDescriptorImageInfo
    pStorageImage*: ptr VkDescriptorImageInfo
    pUniformTexelBuffer*: ptr VkDescriptorAddressInfoEXT
    pStorageTexelBuffer*: ptr VkDescriptorAddressInfoEXT
    pUniformBuffer*: ptr VkDescriptorAddressInfoEXT
    pStorageBuffer*: ptr VkDescriptorAddressInfoEXT
    accelerationStructure*: VkDeviceAddress

  VkDescriptorGetInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    `type`*: VkDescriptorType
    data*: VkDescriptorDataEXT

  VkBufferCaptureDescriptorDataInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    buffer*: VkBuffer

  VkImageCaptureDescriptorDataInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    image*: VkImage

  VkImageViewCaptureDescriptorDataInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    imageView*: VkImageView

  VkSamplerCaptureDescriptorDataInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    sampler*: VkSampler

  VkAccelerationStructureCaptureDescriptorDataInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    accelerationStructure*: VkAccelerationStructureKHR
    accelerationStructureNV*: VkAccelerationStructureNV

  VkOpaqueCaptureDescriptorDataCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    opaqueCaptureDescriptorData*: pointer

  VkPhysicalDeviceShaderIntegerDotProductFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderIntegerDotProduct*: VkBool32

  VkPhysicalDeviceShaderIntegerDotProductProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    integerDotProduct8BitUnsignedAccelerated*: VkBool32
    integerDotProduct8BitSignedAccelerated*: VkBool32
    integerDotProduct8BitMixedSignednessAccelerated*: VkBool32
    integerDotProduct4x8BitPackedUnsignedAccelerated*: VkBool32
    integerDotProduct4x8BitPackedSignedAccelerated*: VkBool32
    integerDotProduct4x8BitPackedMixedSignednessAccelerated*: VkBool32
    integerDotProduct16BitUnsignedAccelerated*: VkBool32
    integerDotProduct16BitSignedAccelerated*: VkBool32
    integerDotProduct16BitMixedSignednessAccelerated*: VkBool32
    integerDotProduct32BitUnsignedAccelerated*: VkBool32
    integerDotProduct32BitSignedAccelerated*: VkBool32
    integerDotProduct32BitMixedSignednessAccelerated*: VkBool32
    integerDotProduct64BitUnsignedAccelerated*: VkBool32
    integerDotProduct64BitSignedAccelerated*: VkBool32
    integerDotProduct64BitMixedSignednessAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating8BitUnsignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating8BitSignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating16BitUnsignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating16BitSignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating32BitUnsignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating32BitSignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating64BitUnsignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating64BitSignedAccelerated*: VkBool32
    integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated*: VkBool32

  VkPhysicalDeviceDrmPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    hasPrimary*: VkBool32
    hasRender*: VkBool32
    primaryMajor*: int64
    primaryMinor*: int64
    renderMajor*: int64
    renderMinor*: int64

  VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    fragmentShaderBarycentric*: VkBool32

  VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    triStripVertexOrderIndependentOfProvokingVertex*: VkBool32

  VkPhysicalDeviceShaderFmaFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderFmaFloat16*: VkBool32
    shaderFmaFloat32*: VkBool32
    shaderFmaFloat64*: VkBool32

  VkPhysicalDeviceRayTracingMotionBlurFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    rayTracingMotionBlur*: VkBool32
    rayTracingMotionBlurPipelineTraceRaysIndirect*: VkBool32

  VkPhysicalDeviceRayTracingValidationFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    rayTracingValidation*: VkBool32

  VkPhysicalDeviceRayTracingLinearSweptSpheresFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    spheres*: VkBool32
    linearSweptSpheres*: VkBool32

  VkAccelerationStructureGeometryMotionTrianglesDataNV* = object
    sType*: VkStructureType
    pNext*: pointer
    vertexData*: VkDeviceOrHostAddressConstKHR

  VkAccelerationStructureMotionInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    maxInstances*: uint32
    flags*: VkAccelerationStructureMotionInfoFlagsNV

  VkSRTDataNV* = object
    sx*: float32
    a*: float32
    b*: float32
    pvx*: float32
    sy*: float32
    c*: float32
    pvy*: float32
    sz*: float32
    pvz*: float32
    qx*: float32
    qy*: float32
    qz*: float32
    qw*: float32
    tx*: float32
    ty*: float32
    tz*: float32

  VkAccelerationStructureSRTMotionInstanceNV* = object
    transformT0*: VkSRTDataNV
    transformT1*: VkSRTDataNV
    instanceCustomIndex*: uint32
    mask*: uint32
    instanceShaderBindingTableRecordOffset*: uint32
    flags*: VkGeometryInstanceFlagsKHR
    accelerationStructureReference*: uint64

  VkAccelerationStructureMatrixMotionInstanceNV* = object
    transformT0*: VkTransformMatrixKHR
    transformT1*: VkTransformMatrixKHR
    instanceCustomIndex*: uint32
    mask*: uint32
    instanceShaderBindingTableRecordOffset*: uint32
    flags*: VkGeometryInstanceFlagsKHR
    accelerationStructureReference*: uint64

  VkAccelerationStructureMotionInstanceDataNV* {.union.} = object
    staticInstance*: VkAccelerationStructureInstanceKHR
    matrixMotionInstance*: VkAccelerationStructureMatrixMotionInstanceNV
    srtMotionInstance*: VkAccelerationStructureSRTMotionInstanceNV

  VkAccelerationStructureMotionInstanceNV* = object
    `type`*: VkAccelerationStructureMotionInstanceTypeNV
    flags*: VkAccelerationStructureMotionInstanceFlagsNV
    data*: VkAccelerationStructureMotionInstanceDataNV

  VkMemoryGetRemoteAddressInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    memory*: VkDeviceMemory
    handleType*: VkExternalMemoryHandleTypeFlagBits

  VkImportMemoryBufferCollectionFUCHSIA* = object
    sType*: VkStructureType
    pNext*: pointer
    collection*: VkBufferCollectionFUCHSIA
    index*: uint32

  VkBufferCollectionImageCreateInfoFUCHSIA* = object
    sType*: VkStructureType
    pNext*: pointer
    collection*: VkBufferCollectionFUCHSIA
    index*: uint32

  VkBufferCollectionBufferCreateInfoFUCHSIA* = object
    sType*: VkStructureType
    pNext*: pointer
    collection*: VkBufferCollectionFUCHSIA
    index*: uint32

  VkBufferCollectionCreateInfoFUCHSIA* = object
    sType*: VkStructureType
    pNext*: pointer
    collectionToken*: uint32

  VkBufferCollectionPropertiesFUCHSIA* = object
    sType*: VkStructureType
    pNext*: pointer
    memoryTypeBits*: uint32
    bufferCount*: uint32
    createInfoIndex*: uint32
    sysmemPixelFormat*: uint64
    formatFeatures*: VkFormatFeatureFlags
    sysmemColorSpaceIndex*: VkSysmemColorSpaceFUCHSIA
    samplerYcbcrConversionComponents*: VkComponentMapping
    suggestedYcbcrModel*: VkSamplerYcbcrModelConversion
    suggestedYcbcrRange*: VkSamplerYcbcrRange
    suggestedXChromaOffset*: VkChromaLocation
    suggestedYChromaOffset*: VkChromaLocation

  VkBufferConstraintsInfoFUCHSIA* = object
    sType*: VkStructureType
    pNext*: pointer
    createInfo*: VkBufferCreateInfo
    requiredFormatFeatures*: VkFormatFeatureFlags
    bufferCollectionConstraints*: VkBufferCollectionConstraintsInfoFUCHSIA

  VkSysmemColorSpaceFUCHSIA* = object
    sType*: VkStructureType
    pNext*: pointer
    colorSpace*: uint32

  VkImageFormatConstraintsInfoFUCHSIA* = object
    sType*: VkStructureType
    pNext*: pointer
    imageCreateInfo*: VkImageCreateInfo
    requiredFormatFeatures*: VkFormatFeatureFlags
    flags*: VkImageFormatConstraintsFlagsFUCHSIA
    sysmemPixelFormat*: uint64
    colorSpaceCount*: uint32
    pColorSpaces*: ptr VkSysmemColorSpaceFUCHSIA

  VkImageConstraintsInfoFUCHSIA* = object
    sType*: VkStructureType
    pNext*: pointer
    formatConstraintsCount*: uint32
    pFormatConstraints*: ptr VkImageFormatConstraintsInfoFUCHSIA
    bufferCollectionConstraints*: VkBufferCollectionConstraintsInfoFUCHSIA
    flags*: VkImageConstraintsInfoFlagsFUCHSIA

  VkBufferCollectionConstraintsInfoFUCHSIA* = object
    sType*: VkStructureType
    pNext*: pointer
    minBufferCount*: uint32
    maxBufferCount*: uint32
    minBufferCountForCamping*: uint32
    minBufferCountForDedicatedSlack*: uint32
    minBufferCountForSharedSlack*: uint32

  VkCudaModuleCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    dataSize*: csize_t
    pData*: pointer

  VkCudaFunctionCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    module*: VkCudaModuleNV
    pName*: cstring

  VkCudaLaunchInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    function*: VkCudaFunctionNV
    gridDimX*: uint32
    gridDimY*: uint32
    gridDimZ*: uint32
    blockDimX*: uint32
    blockDimY*: uint32
    blockDimZ*: uint32
    sharedMemBytes*: uint32
    paramCount*: csize_t
    pParams*: ptr pointer
    extraCount*: csize_t
    pExtras*: ptr pointer

  VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    formatRgba10x6WithoutYCbCrSampler*: VkBool32

  VkFormatProperties3* = object
    sType*: VkStructureType
    pNext*: pointer
    linearTilingFeatures*: VkFormatFeatureFlags2
    optimalTilingFeatures*: VkFormatFeatureFlags2
    bufferFeatures*: VkFormatFeatureFlags2

  VkDrmFormatModifierPropertiesList2EXT* = object
    sType*: VkStructureType
    pNext*: pointer
    drmFormatModifierCount*: uint32
    pDrmFormatModifierProperties*: ptr VkDrmFormatModifierProperties2EXT

  VkDrmFormatModifierProperties2EXT* = object
    drmFormatModifier*: uint64
    drmFormatModifierPlaneCount*: uint32
    drmFormatModifierTilingFeatures*: VkFormatFeatureFlags2

  VkAndroidHardwareBufferFormatProperties2ANDROID* = object
    sType*: VkStructureType
    pNext*: pointer
    format*: VkFormat
    externalFormat*: uint64
    formatFeatures*: VkFormatFeatureFlags2
    samplerYcbcrConversionComponents*: VkComponentMapping
    suggestedYcbcrModel*: VkSamplerYcbcrModelConversion
    suggestedYcbcrRange*: VkSamplerYcbcrRange
    suggestedXChromaOffset*: VkChromaLocation
    suggestedYChromaOffset*: VkChromaLocation

  VkPipelineRenderingCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    viewMask*: uint32
    colorAttachmentCount*: uint32
    pColorAttachmentFormats*: ptr VkFormat
    depthAttachmentFormat*: VkFormat
    stencilAttachmentFormat*: VkFormat

  VkRenderingInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkRenderingFlags
    renderArea*: VkRect2D
    layerCount*: uint32
    viewMask*: uint32
    colorAttachmentCount*: uint32
    pColorAttachments*: ptr VkRenderingAttachmentInfo
    pDepthAttachment*: ptr VkRenderingAttachmentInfo
    pStencilAttachment*: ptr VkRenderingAttachmentInfo

  VkRenderingEndInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer

  VkRenderingAttachmentInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    imageView*: VkImageView
    imageLayout*: VkImageLayout
    resolveMode*: VkResolveModeFlagBits
    resolveImageView*: VkImageView
    resolveImageLayout*: VkImageLayout
    loadOp*: VkAttachmentLoadOp
    storeOp*: VkAttachmentStoreOp
    clearValue*: VkClearValue

  VkRenderingFragmentShadingRateAttachmentInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    imageView*: VkImageView
    imageLayout*: VkImageLayout
    shadingRateAttachmentTexelSize*: VkExtent2D

  VkRenderingFragmentDensityMapAttachmentInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    imageView*: VkImageView
    imageLayout*: VkImageLayout

  VkPhysicalDeviceDynamicRenderingFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    dynamicRendering*: VkBool32

  VkCommandBufferInheritanceRenderingInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkRenderingFlags
    viewMask*: uint32
    colorAttachmentCount*: uint32
    pColorAttachmentFormats*: ptr VkFormat
    depthAttachmentFormat*: VkFormat
    stencilAttachmentFormat*: VkFormat
    rasterizationSamples*: VkSampleCountFlagBits

  VkAttachmentSampleCountInfoAMD* = object
    sType*: VkStructureType
    pNext*: pointer
    colorAttachmentCount*: uint32
    pColorAttachmentSamples*: ptr VkSampleCountFlagBits
    depthStencilAttachmentSamples*: VkSampleCountFlagBits

  VkMultiviewPerViewAttributesInfoNVX* = object
    sType*: VkStructureType
    pNext*: pointer
    perViewAttributes*: VkBool32
    perViewAttributesPositionXOnly*: VkBool32

  VkPhysicalDeviceImageViewMinLodFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    minLod*: VkBool32

  VkImageViewMinLodCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    minLod*: float32

  VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    rasterizationOrderColorAttachmentAccess*: VkBool32
    rasterizationOrderDepthAttachmentAccess*: VkBool32
    rasterizationOrderStencilAttachmentAccess*: VkBool32

  VkPhysicalDeviceLinearColorAttachmentFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    linearColorAttachment*: VkBool32

  VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    graphicsPipelineLibrary*: VkBool32

  VkPhysicalDevicePipelineBinaryFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineBinaries*: VkBool32

  VkDevicePipelineBinaryInternalCacheControlKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    disableInternalCache*: VkBool32

  VkPhysicalDevicePipelineBinaryPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineBinaryInternalCache*: VkBool32
    pipelineBinaryInternalCacheControl*: VkBool32
    pipelineBinaryPrefersInternalCache*: VkBool32
    pipelineBinaryPrecompiledInternalCache*: VkBool32
    pipelineBinaryCompressedData*: VkBool32

  VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    graphicsPipelineLibraryFastLinking*: VkBool32
    graphicsPipelineLibraryIndependentInterpolationDecoration*: VkBool32

  VkGraphicsPipelineLibraryCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkGraphicsPipelineLibraryFlagsEXT

  VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE* = object
    sType*: VkStructureType
    pNext*: pointer
    descriptorSetHostMapping*: VkBool32

  VkDescriptorSetBindingReferenceVALVE* = object
    sType*: VkStructureType
    pNext*: pointer
    descriptorSetLayout*: VkDescriptorSetLayout
    binding*: uint32

  VkDescriptorSetLayoutHostMappingInfoVALVE* = object
    sType*: VkStructureType
    pNext*: pointer
    descriptorOffset*: csize_t
    descriptorSize*: uint32

  VkPhysicalDeviceNestedCommandBufferFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    nestedCommandBuffer*: VkBool32
    nestedCommandBufferRendering*: VkBool32
    nestedCommandBufferSimultaneousUse*: VkBool32

  VkPhysicalDeviceNestedCommandBufferPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    maxCommandBufferNestingLevel*: uint32

  VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderModuleIdentifier*: VkBool32

  VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderModuleIdentifierAlgorithmUUID*: array[VK_UUID_SIZE, uint8]

  VkPipelineShaderStageModuleIdentifierCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    identifierSize*: uint32
    pIdentifier*: ptr uint8

  VkShaderModuleIdentifierEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    identifierSize*: uint32
    identifier*: array[VK_MAX_SHADER_MODULE_IDENTIFIER_SIZE_EXT, uint8]

  VkImageCompressionControlEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkImageCompressionFlagsEXT
    compressionControlPlaneCount*: uint32
    pFixedRateFlags*: ptr VkImageCompressionFixedRateFlagsEXT

  VkPhysicalDeviceImageCompressionControlFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    imageCompressionControl*: VkBool32

  VkImageCompressionPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    imageCompressionFlags*: VkImageCompressionFlagsEXT
    imageCompressionFixedRateFlags*: VkImageCompressionFixedRateFlagsEXT

  VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    imageCompressionControlSwapchain*: VkBool32

  VkImageSubresource2* = object
    sType*: VkStructureType
    pNext*: pointer
    imageSubresource*: VkImageSubresource

  VkSubresourceLayout2* = object
    sType*: VkStructureType
    pNext*: pointer
    subresourceLayout*: VkSubresourceLayout

  VkRenderPassCreationControlEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    disallowMerging*: VkBool32

  VkRenderPassCreationFeedbackInfoEXT* = object
    postMergeSubpassCount*: uint32

  VkRenderPassCreationFeedbackCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    pRenderPassFeedback*: ptr VkRenderPassCreationFeedbackInfoEXT

  VkRenderPassSubpassFeedbackInfoEXT* = object
    subpassMergeStatus*: VkSubpassMergeStatusEXT
    description*: array[VK_MAX_DESCRIPTION_SIZE, char]
    postMergeIndex*: uint32

  VkRenderPassSubpassFeedbackCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    pSubpassFeedback*: ptr VkRenderPassSubpassFeedbackInfoEXT

  VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    subpassMergeFeedback*: VkBool32

  VkMicromapBuildInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    `type`*: VkMicromapTypeEXT
    flags*: VkBuildMicromapFlagsEXT
    mode*: VkBuildMicromapModeEXT
    dstMicromap*: VkMicromapEXT
    usageCountsCount*: uint32
    pUsageCounts*: ptr VkMicromapUsageEXT
    ppUsageCounts*: ptr ptr VkMicromapUsageEXT
    data*: VkDeviceOrHostAddressConstKHR
    scratchData*: VkDeviceOrHostAddressKHR
    triangleArray*: VkDeviceOrHostAddressConstKHR
    triangleArrayStride*: VkDeviceSize

  VkMicromapCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    createFlags*: VkMicromapCreateFlagsEXT
    buffer*: VkBuffer
    offset*: VkDeviceSize
    size*: VkDeviceSize
    `type`*: VkMicromapTypeEXT
    deviceAddress*: VkDeviceAddress

  VkMicromapVersionInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    pVersionData*: ptr uint8

  VkCopyMicromapInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    src*: VkMicromapEXT
    dst*: VkMicromapEXT
    mode*: VkCopyMicromapModeEXT

  VkCopyMicromapToMemoryInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    src*: VkMicromapEXT
    dst*: VkDeviceOrHostAddressKHR
    mode*: VkCopyMicromapModeEXT

  VkCopyMemoryToMicromapInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    src*: VkDeviceOrHostAddressConstKHR
    dst*: VkMicromapEXT
    mode*: VkCopyMicromapModeEXT

  VkMicromapBuildSizesInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    micromapSize*: VkDeviceSize
    buildScratchSize*: VkDeviceSize
    discardable*: VkBool32

  VkMicromapUsageEXT* = object
    count*: uint32
    subdivisionLevel*: uint32
    format*: uint32

  VkMicromapTriangleEXT* = object
    dataOffset*: uint32
    subdivisionLevel*: uint16
    format*: uint16

  VkPhysicalDeviceOpacityMicromapFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    micromap*: VkBool32
    micromapCaptureReplay*: VkBool32
    micromapHostCommands*: VkBool32

  VkPhysicalDeviceOpacityMicromapPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    maxOpacity2StateSubdivisionLevel*: uint32
    maxOpacity4StateSubdivisionLevel*: uint32

  VkAccelerationStructureTrianglesOpacityMicromapEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    indexType*: VkIndexType
    indexBuffer*: VkDeviceOrHostAddressConstKHR
    indexStride*: VkDeviceSize
    baseTriangle*: uint32
    usageCountsCount*: uint32
    pUsageCounts*: ptr VkMicromapUsageEXT
    ppUsageCounts*: ptr ptr VkMicromapUsageEXT
    micromap*: VkMicromapEXT

  VkPhysicalDeviceDisplacementMicromapFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    displacementMicromap*: VkBool32

  VkPhysicalDeviceDisplacementMicromapPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    maxDisplacementMicromapSubdivisionLevel*: uint32

  VkAccelerationStructureTrianglesDisplacementMicromapNV* = object
    sType*: VkStructureType
    pNext*: pointer
    displacementBiasAndScaleFormat*: VkFormat
    displacementVectorFormat*: VkFormat
    displacementBiasAndScaleBuffer*: VkDeviceOrHostAddressConstKHR
    displacementBiasAndScaleStride*: VkDeviceSize
    displacementVectorBuffer*: VkDeviceOrHostAddressConstKHR
    displacementVectorStride*: VkDeviceSize
    displacedMicromapPrimitiveFlags*: VkDeviceOrHostAddressConstKHR
    displacedMicromapPrimitiveFlagsStride*: VkDeviceSize
    indexType*: VkIndexType
    indexBuffer*: VkDeviceOrHostAddressConstKHR
    indexStride*: VkDeviceSize
    baseTriangle*: uint32
    usageCountsCount*: uint32
    pUsageCounts*: ptr VkMicromapUsageEXT
    ppUsageCounts*: ptr ptr VkMicromapUsageEXT
    micromap*: VkMicromapEXT

  VkPipelinePropertiesIdentifierEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineIdentifier*: array[VK_UUID_SIZE, uint8]

  VkPhysicalDevicePipelinePropertiesFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelinePropertiesIdentifier*: VkBool32

  VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderEarlyAndLateFragmentTests*: VkBool32

  VkExternalMemoryAcquireUnmodifiedEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    acquireUnmodifiedMemory*: VkBool32

  VkExportMetalObjectCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    exportObjectType*: VkExportMetalObjectTypeFlagBitsEXT

  VkExportMetalObjectsInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer

  VkExportMetalDeviceInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    mtlDevice*: pointer

  VkExportMetalCommandQueueInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    queue*: VkQueue
    mtlCommandQueue*: pointer

  VkExportMetalBufferInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    memory*: VkDeviceMemory
    mtlBuffer*: pointer

  VkImportMetalBufferInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    mtlBuffer*: pointer

  VkExportMetalTextureInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    image*: VkImage
    imageView*: VkImageView
    bufferView*: VkBufferView
    plane*: VkImageAspectFlagBits
    mtlTexture*: pointer

  VkImportMetalTextureInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    plane*: VkImageAspectFlagBits
    mtlTexture*: pointer

  VkExportMetalIOSurfaceInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    image*: VkImage
    ioSurface*: pointer

  VkImportMetalIOSurfaceInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    ioSurface*: pointer

  VkExportMetalSharedEventInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    semaphore*: VkSemaphore
    event*: VkEvent
    mtlSharedEvent*: pointer

  VkImportMetalSharedEventInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    mtlSharedEvent*: pointer

  VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    nonSeamlessCubeMap*: VkBool32

  VkPhysicalDevicePipelineRobustnessFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineRobustness*: VkBool32

  VkPipelineRobustnessCreateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    storageBuffers*: VkPipelineRobustnessBufferBehavior
    uniformBuffers*: VkPipelineRobustnessBufferBehavior
    vertexInputs*: VkPipelineRobustnessBufferBehavior
    images*: VkPipelineRobustnessImageBehavior

  VkPhysicalDevicePipelineRobustnessProperties* = object
    sType*: VkStructureType
    pNext*: pointer
    defaultRobustnessStorageBuffers*: VkPipelineRobustnessBufferBehavior
    defaultRobustnessUniformBuffers*: VkPipelineRobustnessBufferBehavior
    defaultRobustnessVertexInputs*: VkPipelineRobustnessBufferBehavior
    defaultRobustnessImages*: VkPipelineRobustnessImageBehavior

  VkImageViewSampleWeightCreateInfoQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    filterCenter*: VkOffset2D
    filterSize*: VkExtent2D
    numPhases*: uint32

  VkPhysicalDeviceImageProcessingFeaturesQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    textureSampleWeighted*: VkBool32
    textureBoxFilter*: VkBool32
    textureBlockMatch*: VkBool32

  VkPhysicalDeviceImageProcessingPropertiesQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    maxWeightFilterPhases*: uint32
    maxWeightFilterDimension*: VkExtent2D
    maxBlockMatchRegion*: VkExtent2D
    maxBoxFilterBlockSize*: VkExtent2D

  VkPhysicalDeviceTilePropertiesFeaturesQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    tileProperties*: VkBool32

  VkTilePropertiesQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    tileSize*: VkExtent3D
    apronSize*: VkExtent2D
    origin*: VkOffset2D

  VkTileMemoryBindInfoQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    memory*: VkDeviceMemory

  VkPhysicalDeviceAmigoProfilingFeaturesSEC* = object
    sType*: VkStructureType
    pNext*: pointer
    amigoProfiling*: VkBool32

  VkAmigoProfilingSubmitInfoSEC* = object
    sType*: VkStructureType
    pNext*: pointer
    firstDrawTimestamp*: uint64
    swapBufferTimestamp*: uint64

  VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    attachmentFeedbackLoopLayout*: VkBool32

  VkAttachmentFeedbackLoopInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    feedbackLoopEnable*: VkBool32

  VkPhysicalDeviceAddressBindingReportFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    reportAddressBinding*: VkBool32

  VkRenderingAttachmentFlagsInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkRenderingAttachmentFlagsKHR

  VkResolveImageModeInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkResolveImageFlagsKHR
    resolveMode*: VkResolveModeFlagBits
    stencilResolveMode*: VkResolveModeFlagBits

  VkDeviceAddressBindingCallbackDataEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDeviceAddressBindingFlagsEXT
    baseAddress*: VkDeviceAddress
    size*: VkDeviceSize
    bindingType*: VkDeviceAddressBindingTypeEXT

  VkPhysicalDeviceOpticalFlowFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    opticalFlow*: VkBool32

  VkPhysicalDeviceOpticalFlowPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    supportedOutputGridSizes*: VkOpticalFlowGridSizeFlagsNV
    supportedHintGridSizes*: VkOpticalFlowGridSizeFlagsNV
    hintSupported*: VkBool32
    costSupported*: VkBool32
    bidirectionalFlowSupported*: VkBool32
    globalFlowSupported*: VkBool32
    minWidth*: uint32
    minHeight*: uint32
    maxWidth*: uint32
    maxHeight*: uint32
    maxNumRegionsOfInterest*: uint32

  VkOpticalFlowImageFormatInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    usage*: VkOpticalFlowUsageFlagsNV

  VkOpticalFlowImageFormatPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    format*: VkFormat

  VkOpticalFlowSessionCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    width*: uint32
    height*: uint32
    imageFormat*: VkFormat
    flowVectorFormat*: VkFormat
    costFormat*: VkFormat
    outputGridSize*: VkOpticalFlowGridSizeFlagsNV
    hintGridSize*: VkOpticalFlowGridSizeFlagsNV
    performanceLevel*: VkOpticalFlowPerformanceLevelNV
    flags*: VkOpticalFlowSessionCreateFlagsNV

  VkOpticalFlowSessionCreatePrivateDataInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    id*: uint32
    size*: uint32
    pPrivateData*: pointer

  VkOpticalFlowExecuteInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkOpticalFlowExecuteFlagsNV
    regionCount*: uint32
    pRegions*: ptr VkRect2D

  VkPhysicalDeviceFaultFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceFault*: VkBool32
    deviceFaultVendorBinary*: VkBool32

  VkDeviceFaultAddressInfoEXT* = object
    addressType*: VkDeviceFaultAddressTypeEXT
    reportedAddress*: VkDeviceAddress
    addressPrecision*: VkDeviceSize

  VkDeviceFaultVendorInfoEXT* = object
    description*: array[VK_MAX_DESCRIPTION_SIZE, char]
    vendorFaultCode*: uint64
    vendorFaultData*: uint64

  VkDeviceFaultCountsEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    addressInfoCount*: uint32
    vendorInfoCount*: uint32
    vendorBinarySize*: VkDeviceSize

  VkDeviceFaultInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    description*: array[VK_MAX_DESCRIPTION_SIZE, char]
    pAddressInfos*: ptr VkDeviceFaultAddressInfoEXT
    pVendorInfos*: ptr VkDeviceFaultVendorInfoEXT
    pVendorBinaryData*: pointer

  VkDeviceFaultVendorBinaryHeaderVersionOneEXT* = object
    headerSize*: uint32
    headerVersion*: VkDeviceFaultVendorBinaryHeaderVersionEXT
    vendorID*: uint32
    deviceID*: uint32
    driverVersion*: uint32
    pipelineCacheUUID*: array[VK_UUID_SIZE, uint8]
    applicationNameOffset*: uint32
    applicationVersion*: uint32
    engineNameOffset*: uint32
    engineVersion*: uint32
    apiVersion*: uint32

  VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineLibraryGroupHandles*: VkBool32

  VkDepthBiasInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    depthBiasConstantFactor*: float32
    depthBiasClamp*: float32
    depthBiasSlopeFactor*: float32

  VkDepthBiasRepresentationInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    depthBiasRepresentation*: VkDepthBiasRepresentationEXT
    depthBiasExact*: VkBool32

  VkDecompressMemoryRegionNV* = object
    srcAddress*: VkDeviceAddress
    dstAddress*: VkDeviceAddress
    compressedSize*: VkDeviceSize
    decompressedSize*: VkDeviceSize
    decompressionMethod*: VkMemoryDecompressionMethodFlagsNV

  VkDecompressMemoryRegionEXT* = object
    srcAddress*: VkDeviceAddress
    dstAddress*: VkDeviceAddress
    compressedSize*: VkDeviceSize
    decompressedSize*: VkDeviceSize

  VkDecompressMemoryInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    decompressionMethod*: VkMemoryDecompressionMethodFlagsEXT
    regionCount*: uint32
    pRegions*: ptr VkDecompressMemoryRegionEXT

  VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderCoreMask*: uint64
    shaderCoreCount*: uint32
    shaderWarpsPerCore*: uint32

  VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderCoreBuiltins*: VkBool32

  VkFrameBoundaryEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkFrameBoundaryFlagsEXT
    frameID*: uint64
    imageCount*: uint32
    pImages*: ptr VkImage
    bufferCount*: uint32
    pBuffers*: ptr VkBuffer
    tagName*: uint64
    tagSize*: csize_t
    pTag*: pointer

  VkPhysicalDeviceFrameBoundaryFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    frameBoundary*: VkBool32

  VkPhysicalDeviceDynamicRenderingUnusedAttachmentsFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    dynamicRenderingUnusedAttachments*: VkBool32

  VkPhysicalDeviceInternallySynchronizedQueuesFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    internallySynchronizedQueues*: VkBool32

  VkSurfacePresentModeKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    presentMode*: VkPresentModeKHR

  VkSurfacePresentScalingCapabilitiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    supportedPresentScaling*: VkPresentScalingFlagsKHR
    supportedPresentGravityX*: VkPresentGravityFlagsKHR
    supportedPresentGravityY*: VkPresentGravityFlagsKHR
    minScaledImageExtent*: VkExtent2D
    maxScaledImageExtent*: VkExtent2D

  VkSurfacePresentModeCompatibilityKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    presentModeCount*: uint32
    pPresentModes*: ptr VkPresentModeKHR

  VkPhysicalDeviceSwapchainMaintenance1FeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    swapchainMaintenance1*: VkBool32

  VkSwapchainPresentFenceInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    swapchainCount*: uint32
    pFences*: ptr VkFence

  VkSwapchainPresentModesCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    presentModeCount*: uint32
    pPresentModes*: ptr VkPresentModeKHR

  VkSwapchainPresentModeInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    swapchainCount*: uint32
    pPresentModes*: ptr VkPresentModeKHR

  VkSwapchainPresentScalingCreateInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    scalingBehavior*: VkPresentScalingFlagsKHR
    presentGravityX*: VkPresentGravityFlagsKHR
    presentGravityY*: VkPresentGravityFlagsKHR

  VkReleaseSwapchainImagesInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    swapchain*: VkSwapchainKHR
    imageIndexCount*: uint32
    pImageIndices*: ptr uint32

  VkPhysicalDeviceDepthBiasControlFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    depthBiasControl*: VkBool32
    leastRepresentableValueForceUnormRepresentation*: VkBool32
    floatRepresentation*: VkBool32
    depthBiasExact*: VkBool32

  VkPhysicalDeviceRayTracingInvocationReorderFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    rayTracingInvocationReorder*: VkBool32

  VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    rayTracingInvocationReorder*: VkBool32

  VkPhysicalDeviceRayTracingInvocationReorderPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    rayTracingInvocationReorderReorderingHint*: VkRayTracingInvocationReorderModeEXT
    maxShaderBindingTableRecordIndex*: uint32

  VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    rayTracingInvocationReorderReorderingHint*: VkRayTracingInvocationReorderModeEXT

  VkPhysicalDeviceExtendedSparseAddressSpaceFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    extendedSparseAddressSpace*: VkBool32

  VkPhysicalDeviceExtendedSparseAddressSpacePropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    extendedSparseAddressSpaceSize*: VkDeviceSize
    extendedSparseImageUsageFlags*: VkImageUsageFlags
    extendedSparseBufferUsageFlags*: VkBufferUsageFlags

  VkDirectDriverLoadingInfoLUNARG* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDirectDriverLoadingFlagsLUNARG
    pfnGetInstanceProcAddr*: PFN_vkGetInstanceProcAddrLUNARG

  VkDirectDriverLoadingListLUNARG* = object
    sType*: VkStructureType
    pNext*: pointer
    mode*: VkDirectDriverLoadingModeLUNARG
    driverCount*: uint32
    pDrivers*: ptr VkDirectDriverLoadingInfoLUNARG

  VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    multiviewPerViewViewports*: VkBool32

  VkPhysicalDeviceRayTracingPositionFetchFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    rayTracingPositionFetch*: VkBool32

  VkDeviceImageSubresourceInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    pCreateInfo*: ptr VkImageCreateInfo
    pSubresource*: ptr VkImageSubresource2

  VkPhysicalDeviceShaderCorePropertiesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    pixelRate*: uint32
    texelRate*: uint32
    fmaRate*: uint32

  VkPhysicalDeviceMultiviewPerViewRenderAreasFeaturesQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    multiviewPerViewRenderAreas*: VkBool32

  VkMultiviewPerViewRenderAreasRenderPassBeginInfoQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    perViewRenderAreaCount*: uint32
    pPerViewRenderAreas*: ptr VkRect2D

  VkQueryLowLatencySupportNV* = object
    sType*: VkStructureType
    pNext*: pointer
    pQueriedLowLatencyData*: pointer

  VkMemoryMapInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkMemoryMapFlags
    memory*: VkDeviceMemory
    offset*: VkDeviceSize
    size*: VkDeviceSize

  VkMemoryUnmapInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkMemoryUnmapFlags
    memory*: VkDeviceMemory

  VkPhysicalDeviceShaderObjectFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderObject*: VkBool32

  VkPhysicalDeviceShaderObjectPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderBinaryUUID*: array[VK_UUID_SIZE, uint8]
    shaderBinaryVersion*: uint32

  VkShaderCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkShaderCreateFlagsEXT
    stage*: VkShaderStageFlagBits
    nextStage*: VkShaderStageFlags
    codeType*: VkShaderCodeTypeEXT
    codeSize*: csize_t
    pCode*: pointer
    pName*: cstring
    setLayoutCount*: uint32
    pSetLayouts*: ptr VkDescriptorSetLayout
    pushConstantRangeCount*: uint32
    pPushConstantRanges*: ptr VkPushConstantRange
    pSpecializationInfo*: ptr VkSpecializationInfo

  VkPhysicalDeviceShaderTileImageFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderTileImageColorReadAccess*: VkBool32
    shaderTileImageDepthReadAccess*: VkBool32
    shaderTileImageStencilReadAccess*: VkBool32

  VkPhysicalDeviceShaderTileImagePropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderTileImageCoherentReadAccelerated*: VkBool32
    shaderTileImageReadSampleFromPixelRateInvocation*: VkBool32
    shaderTileImageReadFromHelperInvocation*: VkBool32

  VkImportScreenBufferInfoQNX* = object
    sType*: VkStructureType
    pNext*: pointer
    buffer*: pointer

  VkScreenBufferPropertiesQNX* = object
    sType*: VkStructureType
    pNext*: pointer
    allocationSize*: VkDeviceSize
    memoryTypeBits*: uint32

  VkScreenBufferFormatPropertiesQNX* = object
    sType*: VkStructureType
    pNext*: pointer
    format*: VkFormat
    externalFormat*: uint64
    screenUsage*: uint64
    formatFeatures*: VkFormatFeatureFlags
    samplerYcbcrConversionComponents*: VkComponentMapping
    suggestedYcbcrModel*: VkSamplerYcbcrModelConversion
    suggestedYcbcrRange*: VkSamplerYcbcrRange
    suggestedXChromaOffset*: VkChromaLocation
    suggestedYChromaOffset*: VkChromaLocation

  VkExternalFormatQNX* = object
    sType*: VkStructureType
    pNext*: pointer
    externalFormat*: uint64

  VkPhysicalDeviceExternalMemoryScreenBufferFeaturesQNX* = object
    sType*: VkStructureType
    pNext*: pointer
    screenBufferImport*: VkBool32

  VkPhysicalDeviceCooperativeMatrixFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    cooperativeMatrix*: VkBool32
    cooperativeMatrixRobustBufferAccess*: VkBool32

  VkCooperativeMatrixPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    MSize*: uint32
    NSize*: uint32
    KSize*: uint32
    AType*: VkComponentTypeKHR
    BType*: VkComponentTypeKHR
    CType*: VkComponentTypeKHR
    ResultType*: VkComponentTypeKHR
    saturatingAccumulation*: VkBool32
    scope*: VkScopeKHR

  VkPhysicalDeviceCooperativeMatrixPropertiesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    cooperativeMatrixSupportedStages*: VkShaderStageFlags

  VkPhysicalDeviceCooperativeMatrixConversionFeaturesQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    cooperativeMatrixConversion*: VkBool32

  VkPhysicalDeviceShaderEnqueuePropertiesAMDX* = object
    sType*: VkStructureType
    pNext*: pointer
    maxExecutionGraphDepth*: uint32
    maxExecutionGraphShaderOutputNodes*: uint32
    maxExecutionGraphShaderPayloadSize*: uint32
    maxExecutionGraphShaderPayloadCount*: uint32
    executionGraphDispatchAddressAlignment*: uint32
    maxExecutionGraphWorkgroupCount*: array[3, uint32]
    maxExecutionGraphWorkgroups*: uint32

  VkPhysicalDeviceShaderEnqueueFeaturesAMDX* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderEnqueue*: VkBool32
    shaderMeshEnqueue*: VkBool32

  VkExecutionGraphPipelineCreateInfoAMDX* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineCreateFlags
    stageCount*: uint32
    pStages*: ptr VkPipelineShaderStageCreateInfo
    pLibraryInfo*: ptr VkPipelineLibraryCreateInfoKHR
    layout*: VkPipelineLayout
    basePipelineHandle*: VkPipeline
    basePipelineIndex*: int32

  VkPipelineShaderStageNodeCreateInfoAMDX* = object
    sType*: VkStructureType
    pNext*: pointer
    pName*: cstring
    index*: uint32

  VkExecutionGraphPipelineScratchSizeAMDX* = object
    sType*: VkStructureType
    pNext*: pointer
    minSize*: VkDeviceSize
    maxSize*: VkDeviceSize
    sizeGranularity*: VkDeviceSize

  VkDispatchGraphInfoAMDX* = object
    nodeIndex*: uint32
    payloadCount*: uint32
    payloads*: VkDeviceOrHostAddressConstAMDX
    payloadStride*: uint64

  VkDispatchGraphCountInfoAMDX* = object
    count*: uint32
    infos*: VkDeviceOrHostAddressConstAMDX
    stride*: uint64

  VkPhysicalDeviceAntiLagFeaturesAMD* = object
    sType*: VkStructureType
    pNext*: pointer
    antiLag*: VkBool32

  VkAntiLagDataAMD* = object
    sType*: VkStructureType
    pNext*: pointer
    mode*: VkAntiLagModeAMD
    maxFPS*: uint32
    pPresentationInfo*: ptr VkAntiLagPresentationInfoAMD

  VkAntiLagPresentationInfoAMD* = object
    sType*: VkStructureType
    pNext*: pointer
    stage*: VkAntiLagStageAMD
    frameIndex*: uint64

  VkBindMemoryStatus* = object
    sType*: VkStructureType
    pNext*: pointer
    pResult*: ptr VkResult

  VkPhysicalDeviceTileMemoryHeapFeaturesQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    tileMemoryHeap*: VkBool32

  VkPhysicalDeviceTileMemoryHeapPropertiesQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    queueSubmitBoundary*: VkBool32
    tileBufferTransfers*: VkBool32

  VkTileMemorySizeInfoQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    size*: VkDeviceSize

  VkTileMemoryRequirementsQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    size*: VkDeviceSize
    alignment*: VkDeviceSize

  VkBindDescriptorSetsInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    stageFlags*: VkShaderStageFlags
    layout*: VkPipelineLayout
    firstSet*: uint32
    descriptorSetCount*: uint32
    pDescriptorSets*: ptr VkDescriptorSet
    dynamicOffsetCount*: uint32
    pDynamicOffsets*: ptr uint32

  VkPushConstantsInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    layout*: VkPipelineLayout
    stageFlags*: VkShaderStageFlags
    offset*: uint32
    size*: uint32
    pValues*: pointer

  VkPushDescriptorSetInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    stageFlags*: VkShaderStageFlags
    layout*: VkPipelineLayout
    set*: uint32
    descriptorWriteCount*: uint32
    pDescriptorWrites*: ptr VkWriteDescriptorSet

  VkPushDescriptorSetWithTemplateInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    descriptorUpdateTemplate*: VkDescriptorUpdateTemplate
    layout*: VkPipelineLayout
    set*: uint32
    pData*: pointer

  VkSetDescriptorBufferOffsetsInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    stageFlags*: VkShaderStageFlags
    layout*: VkPipelineLayout
    firstSet*: uint32
    setCount*: uint32
    pBufferIndices*: ptr uint32
    pOffsets*: ptr VkDeviceSize

  VkBindDescriptorBufferEmbeddedSamplersInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    stageFlags*: VkShaderStageFlags
    layout*: VkPipelineLayout
    set*: uint32

  VkPhysicalDeviceCubicClampFeaturesQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    cubicRangeClamp*: VkBool32

  VkPhysicalDeviceYcbcrDegammaFeaturesQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    ycbcrDegamma*: VkBool32

  VkSamplerYcbcrConversionYcbcrDegammaCreateInfoQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    enableYDegamma*: VkBool32
    enableCbCrDegamma*: VkBool32

  VkPhysicalDeviceCubicWeightsFeaturesQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    selectableCubicWeights*: VkBool32

  VkSamplerCubicWeightsCreateInfoQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    cubicWeights*: VkCubicFilterWeightsQCOM

  VkBlitImageCubicWeightsInfoQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    cubicWeights*: VkCubicFilterWeightsQCOM

  VkPhysicalDeviceImageProcessing2FeaturesQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    textureBlockMatch2*: VkBool32

  VkPhysicalDeviceImageProcessing2PropertiesQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    maxBlockMatchWindow*: VkExtent2D

  VkSamplerBlockMatchWindowCreateInfoQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    windowExtent*: VkExtent2D
    windowCompareMode*: VkBlockMatchWindowCompareModeQCOM

  VkPhysicalDeviceDescriptorPoolOverallocationFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    descriptorPoolOverallocation*: VkBool32

  VkPhysicalDeviceLayeredDriverPropertiesMSFT* = object
    sType*: VkStructureType
    pNext*: pointer
    underlyingAPI*: VkLayeredDriverUnderlyingApiMSFT

  VkPhysicalDevicePerStageDescriptorSetFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    perStageDescriptorSet*: VkBool32
    dynamicPipelineLayout*: VkBool32

  VkPhysicalDeviceExternalFormatResolveFeaturesANDROID* = object
    sType*: VkStructureType
    pNext*: pointer
    externalFormatResolve*: VkBool32

  VkPhysicalDeviceExternalFormatResolvePropertiesANDROID* = object
    sType*: VkStructureType
    pNext*: pointer
    nullColorAttachmentWithExternalFormatResolve*: VkBool32
    externalFormatResolveChromaOffsetX*: VkChromaLocation
    externalFormatResolveChromaOffsetY*: VkChromaLocation

  VkAndroidHardwareBufferFormatResolvePropertiesANDROID* = object
    sType*: VkStructureType
    pNext*: pointer
    colorAttachmentFormat*: VkFormat

  VkLatencySleepModeInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    lowLatencyMode*: VkBool32
    lowLatencyBoost*: VkBool32
    minimumIntervalUs*: uint32

  VkLatencySleepInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    signalSemaphore*: VkSemaphore
    value*: uint64

  VkSetLatencyMarkerInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    presentID*: uint64
    marker*: VkLatencyMarkerNV

  VkGetLatencyMarkerInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    timingCount*: uint32
    pTimings*: ptr VkLatencyTimingsFrameReportNV

  VkLatencyTimingsFrameReportNV* = object
    sType*: VkStructureType
    pNext*: pointer
    presentID*: uint64
    inputSampleTimeUs*: uint64
    simStartTimeUs*: uint64
    simEndTimeUs*: uint64
    renderSubmitStartTimeUs*: uint64
    renderSubmitEndTimeUs*: uint64
    presentStartTimeUs*: uint64
    presentEndTimeUs*: uint64
    driverStartTimeUs*: uint64
    driverEndTimeUs*: uint64
    osRenderQueueStartTimeUs*: uint64
    osRenderQueueEndTimeUs*: uint64
    gpuRenderStartTimeUs*: uint64
    gpuRenderEndTimeUs*: uint64

  VkOutOfBandQueueTypeInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    queueType*: VkOutOfBandQueueTypeNV

  VkLatencySubmissionPresentIdNV* = object
    sType*: VkStructureType
    pNext*: pointer
    presentID*: uint64

  VkSwapchainLatencyCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    latencyModeEnable*: VkBool32

  VkLatencySurfaceCapabilitiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    presentModeCount*: uint32
    pPresentModes*: ptr VkPresentModeKHR

  VkPhysicalDeviceCudaKernelLaunchFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    cudaKernelLaunchFeatures*: VkBool32

  VkPhysicalDeviceCudaKernelLaunchPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    computeCapabilityMinor*: uint32
    computeCapabilityMajor*: uint32

  VkDeviceQueueShaderCoreControlCreateInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderCoreCount*: uint32

  VkPhysicalDeviceSchedulingControlsFeaturesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    schedulingControls*: VkBool32

  VkPhysicalDeviceSchedulingControlsPropertiesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    schedulingControlsFlags*: VkPhysicalDeviceSchedulingControlsFlagsARM

  VkPhysicalDeviceRelaxedLineRasterizationFeaturesIMG* = object
    sType*: VkStructureType
    pNext*: pointer
    relaxedLineRasterization*: VkBool32

  VkPhysicalDeviceRenderPassStripedFeaturesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    renderPassStriped*: VkBool32

  VkPhysicalDeviceRenderPassStripedPropertiesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    renderPassStripeGranularity*: VkExtent2D
    maxRenderPassStripes*: uint32

  VkRenderPassStripeInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    stripeArea*: VkRect2D

  VkRenderPassStripeBeginInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    stripeInfoCount*: uint32
    pStripeInfos*: ptr VkRenderPassStripeInfoARM

  VkRenderPassStripeSubmitInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    stripeSemaphoreInfoCount*: uint32
    pStripeSemaphoreInfos*: ptr VkSemaphoreSubmitInfo

  VkPhysicalDevicePipelineOpacityMicromapFeaturesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineOpacityMicromap*: VkBool32

  VkPhysicalDeviceShaderMaximalReconvergenceFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderMaximalReconvergence*: VkBool32

  VkPhysicalDeviceShaderSubgroupRotateFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderSubgroupRotate*: VkBool32
    shaderSubgroupRotateClustered*: VkBool32

  VkPhysicalDeviceShaderExpectAssumeFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderExpectAssume*: VkBool32

  VkPhysicalDeviceShaderFloatControls2Features* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderFloatControls2*: VkBool32

  VkPhysicalDeviceDynamicRenderingLocalReadFeatures* = object
    sType*: VkStructureType
    pNext*: pointer
    dynamicRenderingLocalRead*: VkBool32

  VkRenderingAttachmentLocationInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    colorAttachmentCount*: uint32
    pColorAttachmentLocations*: ptr uint32

  VkRenderingInputAttachmentIndexInfo* = object
    sType*: VkStructureType
    pNext*: pointer
    colorAttachmentCount*: uint32
    pColorAttachmentInputIndices*: ptr uint32
    pDepthInputAttachmentIndex*: ptr uint32
    pStencilInputAttachmentIndex*: ptr uint32

  VkPhysicalDeviceShaderQuadControlFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderQuadControl*: VkBool32

  VkPhysicalDeviceShaderAtomicFloat16VectorFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderFloat16VectorAtomics*: VkBool32

  VkPhysicalDeviceMapMemoryPlacedFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    memoryMapPlaced*: VkBool32
    memoryMapRangePlaced*: VkBool32
    memoryUnmapReserve*: VkBool32

  VkPhysicalDeviceMapMemoryPlacedPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    minPlacedMemoryMapAlignment*: VkDeviceSize

  VkMemoryMapPlacedInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    pPlacedAddress*: pointer

  VkPhysicalDeviceShaderBfloat16FeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderBFloat16Type*: VkBool32
    shaderBFloat16DotProduct*: VkBool32
    shaderBFloat16CooperativeMatrix*: VkBool32

  VkPhysicalDeviceRawAccessChainsFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderRawAccessChains*: VkBool32

  VkPhysicalDeviceCommandBufferInheritanceFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    commandBufferInheritance*: VkBool32

  VkPhysicalDeviceImageAlignmentControlFeaturesMESA* = object
    sType*: VkStructureType
    pNext*: pointer
    imageAlignmentControl*: VkBool32

  VkPhysicalDeviceImageAlignmentControlPropertiesMESA* = object
    sType*: VkStructureType
    pNext*: pointer
    supportedImageAlignmentMask*: uint32

  VkImageAlignmentControlCreateInfoMESA* = object
    sType*: VkStructureType
    pNext*: pointer
    maximumRequestedAlignment*: uint32

  VkPhysicalDeviceShaderReplicatedCompositesFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderReplicatedComposites*: VkBool32

  VkPhysicalDevicePresentModeFifoLatestReadyFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    presentModeFifoLatestReady*: VkBool32

  VkDepthClampRangeEXT* = object
    minDepthClamp*: float32
    maxDepthClamp*: float32

  VkPhysicalDeviceCooperativeMatrix2FeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    cooperativeMatrixWorkgroupScope*: VkBool32
    cooperativeMatrixFlexibleDimensions*: VkBool32
    cooperativeMatrixReductions*: VkBool32
    cooperativeMatrixConversions*: VkBool32
    cooperativeMatrixPerElementOperations*: VkBool32
    cooperativeMatrixTensorAddressing*: VkBool32
    cooperativeMatrixBlockLoads*: VkBool32

  VkPhysicalDeviceCooperativeMatrix2PropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    cooperativeMatrixWorkgroupScopeMaxWorkgroupSize*: uint32
    cooperativeMatrixFlexibleDimensionsMaxDimension*: uint32
    cooperativeMatrixWorkgroupScopeReservedSharedMemory*: uint32

  VkCooperativeMatrixFlexibleDimensionsPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    MGranularity*: uint32
    NGranularity*: uint32
    KGranularity*: uint32
    AType*: VkComponentTypeKHR
    BType*: VkComponentTypeKHR
    CType*: VkComponentTypeKHR
    ResultType*: VkComponentTypeKHR
    saturatingAccumulation*: VkBool32
    scope*: VkScopeKHR
    workgroupInvocations*: uint32

  VkPhysicalDeviceHdrVividFeaturesHUAWEI* = object
    sType*: VkStructureType
    pNext*: pointer
    hdrVivid*: VkBool32

  VkPhysicalDeviceVertexAttributeRobustnessFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    vertexAttributeRobustness*: VkBool32

  VkPhysicalDeviceDenseGeometryFormatFeaturesAMDX* = object
    sType*: VkStructureType
    pNext*: pointer
    denseGeometryFormat*: VkBool32

  VkAccelerationStructureDenseGeometryFormatTrianglesDataAMDX* = object
    sType*: VkStructureType
    pNext*: pointer
    compressedData*: VkDeviceOrHostAddressConstKHR
    dataSize*: VkDeviceSize
    numTriangles*: uint32
    numVertices*: uint32
    maxPrimitiveIndex*: uint32
    maxGeometryIndex*: uint32
    format*: VkCompressedTriangleFormatAMDX

  VkPhysicalDeviceDepthClampZeroOneFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    depthClampZeroOne*: VkBool32

  VkPhysicalDeviceCooperativeVectorFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    cooperativeVector*: VkBool32
    cooperativeVectorTraining*: VkBool32

  VkCooperativeVectorPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    inputType*: VkComponentTypeKHR
    inputInterpretation*: VkComponentTypeKHR
    matrixInterpretation*: VkComponentTypeKHR
    biasInterpretation*: VkComponentTypeKHR
    resultType*: VkComponentTypeKHR
    transpose*: VkBool32

  VkPhysicalDeviceCooperativeVectorPropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    cooperativeVectorSupportedStages*: VkShaderStageFlags
    cooperativeVectorTrainingFloat16Accumulation*: VkBool32
    cooperativeVectorTrainingFloat32Accumulation*: VkBool32
    maxCooperativeVectorComponents*: uint32

  VkConvertCooperativeVectorMatrixInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    srcSize*: csize_t
    srcData*: VkDeviceOrHostAddressConstKHR
    pDstSize*: ptr csize_t
    dstData*: VkDeviceOrHostAddressKHR
    srcComponentType*: VkComponentTypeKHR
    dstComponentType*: VkComponentTypeKHR
    numRows*: uint32
    numColumns*: uint32
    srcLayout*: VkCooperativeVectorMatrixLayoutNV
    srcStride*: csize_t
    dstLayout*: VkCooperativeVectorMatrixLayoutNV
    dstStride*: csize_t

  VkPhysicalDeviceTileShadingFeaturesQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    tileShading*: VkBool32
    tileShadingFragmentStage*: VkBool32
    tileShadingColorAttachments*: VkBool32
    tileShadingDepthAttachments*: VkBool32
    tileShadingStencilAttachments*: VkBool32
    tileShadingInputAttachments*: VkBool32
    tileShadingSampledAttachments*: VkBool32
    tileShadingPerTileDraw*: VkBool32
    tileShadingPerTileDispatch*: VkBool32
    tileShadingDispatchTile*: VkBool32
    tileShadingApron*: VkBool32
    tileShadingAnisotropicApron*: VkBool32
    tileShadingAtomicOps*: VkBool32
    tileShadingImageProcessing*: VkBool32

  VkPhysicalDeviceTileShadingPropertiesQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    maxApronSize*: uint32
    preferNonCoherent*: VkBool32
    tileGranularity*: VkExtent2D
    maxTileShadingRate*: VkExtent2D

  VkRenderPassTileShadingCreateInfoQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkTileShadingRenderPassFlagsQCOM
    tileApronSize*: VkExtent2D

  VkPerTileBeginInfoQCOM* = object
    sType*: VkStructureType
    pNext*: pointer

  VkPerTileEndInfoQCOM* = object
    sType*: VkStructureType
    pNext*: pointer

  VkDispatchTileInfoQCOM* = object
    sType*: VkStructureType
    pNext*: pointer

  VkPhysicalDeviceFragmentDensityMapLayeredPropertiesVALVE* = object
    sType*: VkStructureType
    pNext*: pointer
    maxFragmentDensityMapLayers*: uint32

  VkPhysicalDeviceFragmentDensityMapLayeredFeaturesVALVE* = object
    sType*: VkStructureType
    pNext*: pointer
    fragmentDensityMapLayered*: VkBool32

  VkPipelineFragmentDensityMapLayeredCreateInfoVALVE* = object
    sType*: VkStructureType
    pNext*: pointer
    maxFragmentDensityMapLayers*: uint32

  VkSetPresentConfigNV* = object
    sType*: VkStructureType
    pNext*: pointer
    numFramesPerBatch*: uint32
    presentConfigFeedback*: uint32

  VkPhysicalDevicePresentMeteringFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    presentMetering*: VkBool32

  VkExternalComputeQueueDeviceCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    reservedExternalQueues*: uint32

  VkExternalComputeQueueCreateInfoNV* = object
    sType*: VkStructureType
    pNext*: pointer
    preferredQueue*: VkQueue

  VkExternalComputeQueueDataParamsNV* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceIndex*: uint32

  VkPhysicalDeviceExternalComputeQueuePropertiesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    externalDataSize*: uint32
    maxExternalQueues*: uint32

  VkPhysicalDeviceShaderUniformBufferUnsizedArrayFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderUniformBufferUnsizedArray*: VkBool32

  VkPhysicalDeviceShaderMixedFloatDotProductFeaturesVALVE* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderMixedFloatDotProductFloat16AccFloat32*: VkBool32
    shaderMixedFloatDotProductFloat16AccFloat16*: VkBool32
    shaderMixedFloatDotProductBFloat16Acc*: VkBool32
    shaderMixedFloatDotProductFloat8AccFloat32*: VkBool32

  VkPhysicalDeviceFormatPackFeaturesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    formatPack*: VkBool32

  VkTensorDescriptionARM* = object
    sType*: VkStructureType
    pNext*: pointer
    tiling*: VkTensorTilingARM
    format*: VkFormat
    dimensionCount*: uint32
    pDimensions*: ptr int64
    pStrides*: ptr int64
    usage*: VkTensorUsageFlagsARM

  VkTensorCreateInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkTensorCreateFlagsARM
    pDescription*: ptr VkTensorDescriptionARM
    sharingMode*: VkSharingMode
    queueFamilyIndexCount*: uint32
    pQueueFamilyIndices*: ptr uint32

  VkTensorViewCreateInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkTensorViewCreateFlagsARM
    tensor*: VkTensorARM
    format*: VkFormat

  VkTensorMemoryRequirementsInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    tensor*: VkTensorARM

  VkBindTensorMemoryInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    tensor*: VkTensorARM
    memory*: VkDeviceMemory
    memoryOffset*: VkDeviceSize

  VkWriteDescriptorSetTensorARM* = object
    sType*: VkStructureType
    pNext*: pointer
    tensorViewCount*: uint32
    pTensorViews*: ptr VkTensorViewARM

  VkTensorFormatPropertiesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    optimalTilingTensorFeatures*: VkFormatFeatureFlags2
    linearTilingTensorFeatures*: VkFormatFeatureFlags2

  VkPhysicalDeviceTensorPropertiesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    maxTensorDimensionCount*: uint32
    maxTensorElements*: uint64
    maxPerDimensionTensorElements*: uint64
    maxTensorStride*: int64
    maxTensorSize*: uint64
    maxTensorShaderAccessArrayLength*: uint32
    maxTensorShaderAccessSize*: uint32
    maxDescriptorSetStorageTensors*: uint32
    maxPerStageDescriptorSetStorageTensors*: uint32
    maxDescriptorSetUpdateAfterBindStorageTensors*: uint32
    maxPerStageDescriptorUpdateAfterBindStorageTensors*: uint32
    shaderStorageTensorArrayNonUniformIndexingNative*: VkBool32
    shaderTensorSupportedStages*: VkShaderStageFlags

  VkTensorMemoryBarrierARM* = object
    sType*: VkStructureType
    pNext*: pointer
    srcStageMask*: VkPipelineStageFlags2
    srcAccessMask*: VkAccessFlags2
    dstStageMask*: VkPipelineStageFlags2
    dstAccessMask*: VkAccessFlags2
    srcQueueFamilyIndex*: uint32
    dstQueueFamilyIndex*: uint32
    tensor*: VkTensorARM

  VkTensorDependencyInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    tensorMemoryBarrierCount*: uint32
    pTensorMemoryBarriers*: ptr VkTensorMemoryBarrierARM

  VkPhysicalDeviceTensorFeaturesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    tensorNonPacked*: VkBool32
    shaderTensorAccess*: VkBool32
    shaderStorageTensorArrayDynamicIndexing*: VkBool32
    shaderStorageTensorArrayNonUniformIndexing*: VkBool32
    descriptorBindingStorageTensorUpdateAfterBind*: VkBool32
    tensors*: VkBool32

  VkDeviceTensorMemoryRequirementsARM* = object
    sType*: VkStructureType
    pNext*: pointer
    pCreateInfo*: ptr VkTensorCreateInfoARM

  VkCopyTensorInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    srcTensor*: VkTensorARM
    dstTensor*: VkTensorARM
    regionCount*: uint32
    pRegions*: ptr VkTensorCopyARM

  VkTensorCopyARM* = object
    sType*: VkStructureType
    pNext*: pointer
    dimensionCount*: uint32
    pSrcOffset*: ptr uint64
    pDstOffset*: ptr uint64
    pExtent*: ptr uint64

  VkMemoryDedicatedAllocateInfoTensorARM* = object
    sType*: VkStructureType
    pNext*: pointer
    tensor*: VkTensorARM

  VkPhysicalDeviceDescriptorBufferTensorPropertiesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    tensorCaptureReplayDescriptorDataSize*: csize_t
    tensorViewCaptureReplayDescriptorDataSize*: csize_t
    tensorDescriptorSize*: csize_t

  VkPhysicalDeviceDescriptorBufferTensorFeaturesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    descriptorBufferTensorDescriptors*: VkBool32

  VkTensorCaptureDescriptorDataInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    tensor*: VkTensorARM

  VkTensorViewCaptureDescriptorDataInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    tensorView*: VkTensorViewARM

  VkDescriptorGetTensorInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    tensorView*: VkTensorViewARM

  VkFrameBoundaryTensorsARM* = object
    sType*: VkStructureType
    pNext*: pointer
    tensorCount*: uint32
    pTensors*: ptr VkTensorARM

  VkPhysicalDeviceExternalTensorInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkTensorCreateFlagsARM
    pDescription*: ptr VkTensorDescriptionARM
    handleType*: VkExternalMemoryHandleTypeFlagBits

  VkExternalTensorPropertiesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    externalMemoryProperties*: VkExternalMemoryProperties

  VkExternalMemoryTensorCreateInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    handleTypes*: VkExternalMemoryHandleTypeFlags

  VkPhysicalDeviceShaderFloat8FeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderFloat8*: VkBool32
    shaderFloat8CooperativeMatrix*: VkBool32

  VkSurfaceCreateInfoOHOS* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkSurfaceCreateFlagsOHOS
    window*: pointer

  VkPhysicalDeviceDataGraphFeaturesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    dataGraph*: VkBool32
    dataGraphUpdateAfterBind*: VkBool32
    dataGraphSpecializationConstants*: VkBool32
    dataGraphDescriptorBuffer*: VkBool32
    dataGraphShaderModule*: VkBool32

  VkDataGraphPipelineConstantTensorSemiStructuredSparsityInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    dimension*: uint32
    zeroCount*: uint32
    groupSize*: uint32

  VkDataGraphPipelineConstantARM* = object
    sType*: VkStructureType
    pNext*: pointer
    id*: uint32
    pConstantData*: pointer

  VkDataGraphPipelineResourceInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    descriptorSet*: uint32
    binding*: uint32
    arrayElement*: uint32

  VkDataGraphPipelineCompilerControlCreateInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    pVendorOptions*: cstring

  VkDataGraphPipelineCreateInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPipelineCreateFlags2KHR
    layout*: VkPipelineLayout
    resourceInfoCount*: uint32
    pResourceInfos*: ptr VkDataGraphPipelineResourceInfoARM

  VkDataGraphPipelineShaderModuleCreateInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    module*: VkShaderModule
    pName*: cstring
    pSpecializationInfo*: ptr VkSpecializationInfo
    constantCount*: uint32
    pConstants*: ptr VkDataGraphPipelineConstantARM

  VkDataGraphPipelineSessionCreateInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDataGraphPipelineSessionCreateFlagsARM
    dataGraphPipeline*: VkPipeline

  VkDataGraphPipelineSessionBindPointRequirementsInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    session*: VkDataGraphPipelineSessionARM

  VkDataGraphPipelineSessionBindPointRequirementARM* = object
    sType*: VkStructureType
    pNext*: pointer
    bindPoint*: VkDataGraphPipelineSessionBindPointARM
    bindPointType*: VkDataGraphPipelineSessionBindPointTypeARM
    numObjects*: uint32

  VkDataGraphPipelineSessionMemoryRequirementsInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    session*: VkDataGraphPipelineSessionARM
    bindPoint*: VkDataGraphPipelineSessionBindPointARM
    objectIndex*: uint32

  VkBindDataGraphPipelineSessionMemoryInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    session*: VkDataGraphPipelineSessionARM
    bindPoint*: VkDataGraphPipelineSessionBindPointARM
    objectIndex*: uint32
    memory*: VkDeviceMemory
    memoryOffset*: VkDeviceSize

  VkDataGraphPipelineInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    dataGraphPipeline*: VkPipeline

  VkDataGraphPipelinePropertyQueryResultARM* = object
    sType*: VkStructureType
    pNext*: pointer
    property*: VkDataGraphPipelinePropertyARM
    isText*: VkBool32
    dataSize*: csize_t
    pData*: pointer

  VkDataGraphPipelineIdentifierCreateInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    identifierSize*: uint32
    pIdentifier*: ptr uint8

  VkDataGraphPipelineDispatchInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkDataGraphPipelineDispatchFlagsARM

  VkPhysicalDeviceDataGraphProcessingEngineARM* = object
    `type`*: VkPhysicalDeviceDataGraphProcessingEngineTypeARM
    isForeign*: VkBool32

  VkPhysicalDeviceDataGraphOperationSupportARM* = object
    operationType*: VkPhysicalDeviceDataGraphOperationTypeARM
    name*: array[VK_MAX_PHYSICAL_DEVICE_DATA_GRAPH_OPERATION_SET_NAME_SIZE_ARM, char]
    version*: uint32

  VkQueueFamilyDataGraphPropertiesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    engine*: VkPhysicalDeviceDataGraphProcessingEngineARM
    operation*: VkPhysicalDeviceDataGraphOperationSupportARM

  VkPhysicalDeviceQueueFamilyDataGraphProcessingEngineInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    queueFamilyIndex*: uint32
    engineType*: VkPhysicalDeviceDataGraphProcessingEngineTypeARM

  VkQueueFamilyDataGraphProcessingEnginePropertiesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    foreignSemaphoreHandleTypes*: VkExternalSemaphoreHandleTypeFlags
    foreignMemoryHandleTypes*: VkExternalMemoryHandleTypeFlags

  VkDataGraphProcessingEngineCreateInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    processingEngineCount*: uint32
    pProcessingEngines*: ptr VkPhysicalDeviceDataGraphProcessingEngineARM

  VkPhysicalDevicePipelineCacheIncrementalModeFeaturesSEC* = object
    sType*: VkStructureType
    pNext*: pointer
    pipelineCacheIncrementalMode*: VkBool32

  VkDataGraphPipelineBuiltinModelCreateInfoQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    pOperation*: ptr VkPhysicalDeviceDataGraphOperationSupportARM

  VkPhysicalDeviceDataGraphModelFeaturesQCOM* = object
    sType*: VkStructureType
    pNext*: pointer
    dataGraphModel*: VkBool32

  VkPhysicalDeviceShaderUntypedPointersFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderUntypedPointers*: VkBool32

  VkNativeBufferOHOS* = object
    sType*: VkStructureType
    pNext*: pointer
    handle*: pointer

  VkSwapchainImageCreateInfoOHOS* = object
    sType*: VkStructureType
    pNext*: pointer
    usage*: VkSwapchainImageUsageFlagsOHOS

  VkPhysicalDevicePresentationPropertiesOHOS* = object
    sType*: VkStructureType
    pNext*: pointer
    sharedImage*: VkBool32

  VkPhysicalDeviceVideoEncodeRgbConversionFeaturesVALVE* = object
    sType*: VkStructureType
    pNext*: pointer
    videoEncodeRgbConversion*: VkBool32

  VkVideoEncodeRgbConversionCapabilitiesVALVE* = object
    sType*: VkStructureType
    pNext*: pointer
    rgbModels*: VkVideoEncodeRgbModelConversionFlagsVALVE
    rgbRanges*: VkVideoEncodeRgbRangeCompressionFlagsVALVE
    xChromaOffsets*: VkVideoEncodeRgbChromaOffsetFlagsVALVE
    yChromaOffsets*: VkVideoEncodeRgbChromaOffsetFlagsVALVE

  VkVideoEncodeProfileRgbConversionInfoVALVE* = object
    sType*: VkStructureType
    pNext*: pointer
    performEncodeRgbConversion*: VkBool32

  VkVideoEncodeSessionRgbConversionCreateInfoVALVE* = object
    sType*: VkStructureType
    pNext*: pointer
    rgbModel*: VkVideoEncodeRgbModelConversionFlagBitsVALVE
    rgbRange*: VkVideoEncodeRgbRangeCompressionFlagBitsVALVE
    xChromaOffset*: VkVideoEncodeRgbChromaOffsetFlagBitsVALVE
    yChromaOffset*: VkVideoEncodeRgbChromaOffsetFlagBitsVALVE

  VkPhysicalDeviceShader64BitIndexingFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    shader64BitIndexing*: VkBool32

  VkNativeBufferUsageOHOS* = object
    sType*: VkStructureType
    pNext*: pointer
    OHOSNativeBufferUsage*: uint64

  VkNativeBufferPropertiesOHOS* = object
    sType*: VkStructureType
    pNext*: pointer
    allocationSize*: VkDeviceSize
    memoryTypeBits*: uint32

  VkNativeBufferFormatPropertiesOHOS* = object
    sType*: VkStructureType
    pNext*: pointer
    format*: VkFormat
    externalFormat*: uint64
    formatFeatures*: VkFormatFeatureFlags
    samplerYcbcrConversionComponents*: VkComponentMapping
    suggestedYcbcrModel*: VkSamplerYcbcrModelConversion
    suggestedYcbcrRange*: VkSamplerYcbcrRange
    suggestedXChromaOffset*: VkChromaLocation
    suggestedYChromaOffset*: VkChromaLocation

  VkImportNativeBufferInfoOHOS* = object
    sType*: VkStructureType
    pNext*: pointer
    buffer*: pointer

  VkMemoryGetNativeBufferInfoOHOS* = object
    sType*: VkStructureType
    pNext*: pointer
    memory*: VkDeviceMemory

  VkExternalFormatOHOS* = object
    sType*: VkStructureType
    pNext*: pointer
    externalFormat*: uint64

  VkPhysicalDevicePerformanceCountersByRegionFeaturesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    performanceCountersByRegion*: VkBool32

  VkPhysicalDevicePerformanceCountersByRegionPropertiesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    maxPerRegionPerformanceCounters*: uint32
    performanceCounterRegionSize*: VkExtent2D
    rowStrideAlignment*: uint32
    regionAlignment*: uint32
    identityTransformOrder*: VkBool32

  VkPerformanceCounterARM* = object
    sType*: VkStructureType
    pNext*: pointer
    counterID*: uint32

  VkPerformanceCounterDescriptionARM* = object
    sType*: VkStructureType
    pNext*: pointer
    flags*: VkPerformanceCounterDescriptionFlagsARM
    name*: array[VK_MAX_DESCRIPTION_SIZE, char]

  VkRenderPassPerformanceCountersByRegionBeginInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer
    counterAddressCount*: uint32
    pCounterAddresses*: ptr VkDeviceAddress
    serializeRegions*: VkBool32
    counterIndexCount*: uint32
    pCounterIndices*: ptr uint32

  VkComputeOccupancyPriorityParametersNV* = object
    sType*: VkStructureType
    pNext*: pointer
    occupancyPriority*: float32
    occupancyThrottling*: float32

  VkPhysicalDeviceComputeOccupancyPriorityFeaturesNV* = object
    sType*: VkStructureType
    pNext*: pointer
    computeOccupancyPriority*: VkBool32

  VkPhysicalDeviceShaderLongVectorFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    longVector*: VkBool32

  VkPhysicalDeviceShaderLongVectorPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    maxVectorComponents*: uint32

  VkPhysicalDeviceTextureCompressionASTC3DFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    textureCompressionASTC_3D*: VkBool32

  VkPhysicalDeviceShaderSubgroupPartitionedFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderSubgroupPartitioned*: VkBool32

  VkHostAddressRangeEXT* = object
    address*: pointer
    size*: csize_t

  VkHostAddressRangeConstEXT* = object
    address*: pointer
    size*: csize_t

  VkTexelBufferDescriptorInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    format*: VkFormat
    addressRange*: VkDeviceAddressRangeKHR

  VkImageDescriptorInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    pView*: ptr VkImageViewCreateInfo
    layout*: VkImageLayout

  VkResourceDescriptorDataEXT* {.union.} = object
    pImage*: ptr VkImageDescriptorInfoEXT
    pTexelBuffer*: ptr VkTexelBufferDescriptorInfoEXT
    pAddressRange*: ptr VkDeviceAddressRangeKHR
    pTensorARM*: ptr VkTensorViewCreateInfoARM

  VkResourceDescriptorInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    `type`*: VkDescriptorType
    data*: VkResourceDescriptorDataEXT

  VkBindHeapInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    heapRange*: VkDeviceAddressRangeKHR
    reservedRangeOffset*: VkDeviceSize
    reservedRangeSize*: VkDeviceSize

  VkPushDataInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    offset*: uint32
    data*: VkHostAddressRangeConstEXT

  VkDescriptorMappingSourceConstantOffsetEXT* = object
    heapOffset*: uint32
    heapArrayStride*: uint32
    pEmbeddedSampler*: ptr VkSamplerCreateInfo
    samplerHeapOffset*: uint32
    samplerHeapArrayStride*: uint32

  VkDescriptorMappingSourcePushIndexEXT* = object
    heapOffset*: uint32
    pushOffset*: uint32
    heapIndexStride*: uint32
    heapArrayStride*: uint32
    pEmbeddedSampler*: ptr VkSamplerCreateInfo
    useCombinedImageSamplerIndex*: VkBool32
    samplerHeapOffset*: uint32
    samplerPushOffset*: uint32
    samplerHeapIndexStride*: uint32
    samplerHeapArrayStride*: uint32

  VkDescriptorMappingSourceIndirectIndexEXT* = object
    heapOffset*: uint32
    pushOffset*: uint32
    addressOffset*: uint32
    heapIndexStride*: uint32
    heapArrayStride*: uint32
    pEmbeddedSampler*: ptr VkSamplerCreateInfo
    useCombinedImageSamplerIndex*: VkBool32
    samplerHeapOffset*: uint32
    samplerPushOffset*: uint32
    samplerAddressOffset*: uint32
    samplerHeapIndexStride*: uint32
    samplerHeapArrayStride*: uint32

  VkDescriptorMappingSourceIndirectIndexArrayEXT* = object
    heapOffset*: uint32
    pushOffset*: uint32
    addressOffset*: uint32
    heapIndexStride*: uint32
    pEmbeddedSampler*: ptr VkSamplerCreateInfo
    useCombinedImageSamplerIndex*: VkBool32
    samplerHeapOffset*: uint32
    samplerPushOffset*: uint32
    samplerAddressOffset*: uint32
    samplerHeapIndexStride*: uint32

  VkDescriptorMappingSourceHeapDataEXT* = object
    heapOffset*: uint32
    pushOffset*: uint32

  VkDescriptorMappingSourceShaderRecordIndexEXT* = object
    heapOffset*: uint32
    shaderRecordOffset*: uint32
    heapIndexStride*: uint32
    heapArrayStride*: uint32
    pEmbeddedSampler*: ptr VkSamplerCreateInfo
    useCombinedImageSamplerIndex*: VkBool32
    samplerHeapOffset*: uint32
    samplerShaderRecordOffset*: uint32
    samplerHeapIndexStride*: uint32
    samplerHeapArrayStride*: uint32

  VkDescriptorMappingSourceIndirectAddressEXT* = object
    pushOffset*: uint32
    addressOffset*: uint32

  VkDescriptorMappingSourceDataEXT* {.union.} = object
    constantOffset*: VkDescriptorMappingSourceConstantOffsetEXT
    pushIndex*: VkDescriptorMappingSourcePushIndexEXT
    indirectIndex*: VkDescriptorMappingSourceIndirectIndexEXT
    indirectIndexArray*: VkDescriptorMappingSourceIndirectIndexArrayEXT
    heapData*: VkDescriptorMappingSourceHeapDataEXT
    pushDataOffset*: uint32
    pushAddressOffset*: uint32
    indirectAddress*: VkDescriptorMappingSourceIndirectAddressEXT
    shaderRecordIndex*: VkDescriptorMappingSourceShaderRecordIndexEXT
    shaderRecordDataOffset*: uint32
    shaderRecordAddressOffset*: uint32

  VkDescriptorSetAndBindingMappingEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    descriptorSet*: uint32
    firstBinding*: uint32
    bindingCount*: uint32
    resourceMask*: VkSpirvResourceTypeFlagsEXT
    source*: VkDescriptorMappingSourceEXT
    sourceData*: VkDescriptorMappingSourceDataEXT

  VkShaderDescriptorSetAndBindingMappingInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    mappingCount*: uint32
    pMappings*: ptr VkDescriptorSetAndBindingMappingEXT

  VkSamplerCustomBorderColorIndexCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    index*: uint32

  VkOpaqueCaptureDataCreateInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    pData*: ptr VkHostAddressRangeConstEXT

  VkIndirectCommandsLayoutPushDataTokenNV* = object
    sType*: VkStructureType
    pNext*: pointer
    pushDataOffset*: uint32
    pushDataSize*: uint32

  VkSubsampledImageFormatPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    subsampledImageDescriptorCount*: uint32

  VkPhysicalDeviceDescriptorHeapFeaturesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    descriptorHeap*: VkBool32
    descriptorHeapCaptureReplay*: VkBool32

  VkPhysicalDeviceDescriptorHeapPropertiesEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    samplerHeapAlignment*: VkDeviceSize
    resourceHeapAlignment*: VkDeviceSize
    maxSamplerHeapSize*: VkDeviceSize
    maxResourceHeapSize*: VkDeviceSize
    minSamplerHeapReservedRange*: VkDeviceSize
    minSamplerHeapReservedRangeWithEmbedded*: VkDeviceSize
    minResourceHeapReservedRange*: VkDeviceSize
    samplerDescriptorSize*: VkDeviceSize
    imageDescriptorSize*: VkDeviceSize
    bufferDescriptorSize*: VkDeviceSize
    samplerDescriptorAlignment*: VkDeviceSize
    imageDescriptorAlignment*: VkDeviceSize
    bufferDescriptorAlignment*: VkDeviceSize
    maxPushDataSize*: VkDeviceSize
    imageCaptureReplayOpaqueDataSize*: csize_t
    maxDescriptorHeapEmbeddedSamplers*: uint32
    samplerYcbcrConversionCount*: uint32
    sparseDescriptorHeaps*: VkBool32
    protectedDescriptorHeaps*: VkBool32

  VkCommandBufferInheritanceDescriptorHeapInfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    pSamplerHeapBindInfo*: ptr VkBindHeapInfoEXT
    pResourceHeapBindInfo*: ptr VkBindHeapInfoEXT

  VkPhysicalDeviceDescriptorHeapTensorPropertiesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    tensorDescriptorSize*: VkDeviceSize
    tensorDescriptorAlignment*: VkDeviceSize
    tensorCaptureReplayOpaqueDataSize*: csize_t

  VkPhysicalDeviceShaderInstrumentationFeaturesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    shaderInstrumentation*: VkBool32

  VkPhysicalDeviceShaderInstrumentationPropertiesARM* = object
    sType*: VkStructureType
    pNext*: pointer
    numMetrics*: uint32
    perBasicBlockGranularity*: VkBool32

  VkShaderInstrumentationCreateInfoARM* = object
    sType*: VkStructureType
    pNext*: pointer

  VkShaderInstrumentationMetricDescriptionARM* = object
    sType*: VkStructureType
    pNext*: pointer
    name*: array[VK_MAX_DESCRIPTION_SIZE, char]
    description*: array[VK_MAX_DESCRIPTION_SIZE, char]

  VkShaderInstrumentationMetricDataHeaderARM* = object
    resultIndex*: uint32
    resultSubIndex*: uint32
    stages*: VkShaderStageFlags
    basicBlockIndex*: uint32

  VkDeviceAddressRangeKHR* = object
    address*: VkDeviceAddress
    size*: VkDeviceSize

  VkDeviceMemoryCopyKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    srcRange*: VkDeviceAddressRangeKHR
    srcFlags*: VkAddressCommandFlagsKHR
    dstRange*: VkDeviceAddressRangeKHR
    dstFlags*: VkAddressCommandFlagsKHR

  VkCopyDeviceMemoryInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    regionCount*: uint32
    pRegions*: ptr VkDeviceMemoryCopyKHR

  VkDeviceMemoryImageCopyKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    addressRange*: VkDeviceAddressRangeKHR
    addressFlags*: VkAddressCommandFlagsKHR
    addressRowLength*: uint32
    addressImageHeight*: uint32
    imageSubresource*: VkImageSubresourceLayers
    imageLayout*: VkImageLayout
    imageOffset*: VkOffset3D
    imageExtent*: VkExtent3D

  VkCopyDeviceMemoryImageInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    image*: VkImage
    regionCount*: uint32
    pRegions*: ptr VkDeviceMemoryImageCopyKHR

  VkMemoryRangeBarriersInfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    memoryRangeBarrierCount*: uint32
    pMemoryRangeBarriers*: ptr VkMemoryRangeBarrierKHR

  VkMemoryRangeBarrierKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    srcStageMask*: VkPipelineStageFlags2
    srcAccessMask*: VkAccessFlags2
    dstStageMask*: VkPipelineStageFlags2
    dstAccessMask*: VkAccessFlags2
    srcQueueFamilyIndex*: uint32
    dstQueueFamilyIndex*: uint32
    addressRange*: VkDeviceAddressRangeKHR
    addressFlags*: VkAddressCommandFlagsKHR

  VkPhysicalDeviceDeviceAddressCommandsFeaturesKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    deviceAddressCommands*: VkBool32

  VkConditionalRenderingBeginInfo2EXT* = object
    sType*: VkStructureType
    pNext*: pointer
    addressRange*: VkDeviceAddressRangeKHR
    addressFlags*: VkAddressCommandFlagsKHR
    flags*: VkConditionalRenderingFlagsEXT

  VkAccelerationStructureCreateInfo2KHR* = object
    sType*: VkStructureType
    pNext*: pointer
    createFlags*: VkAccelerationStructureCreateFlagsKHR
    addressRange*: VkDeviceAddressRangeKHR
    addressFlags*: VkAddressCommandFlagsKHR
    `type`*: VkAccelerationStructureTypeKHR

  VkBindIndexBuffer3InfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    addressRange*: VkDeviceAddressRangeKHR
    addressFlags*: VkAddressCommandFlagsKHR
    indexType*: VkIndexType

  VkBindVertexBuffer3InfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    setStride*: VkBool32
    addressRange*: VkStridedDeviceAddressRangeKHR
    addressFlags*: VkAddressCommandFlagsKHR

  VkDrawIndirect2InfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    addressRange*: VkStridedDeviceAddressRangeKHR
    addressFlags*: VkAddressCommandFlagsKHR
    drawCount*: uint32

  VkDrawIndirectCount2InfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    addressRange*: VkStridedDeviceAddressRangeKHR
    addressFlags*: VkAddressCommandFlagsKHR
    countAddressRange*: VkDeviceAddressRangeKHR
    countAddressFlags*: VkAddressCommandFlagsKHR
    maxDrawCount*: uint32

  VkDispatchIndirect2InfoKHR* = object
    sType*: VkStructureType
    pNext*: pointer
    addressRange*: VkDeviceAddressRangeKHR
    addressFlags*: VkAddressCommandFlagsKHR

  VkBindTransformFeedbackBuffer2InfoEXT* = object
    sType*: VkStructureType
    pNext*: pointer
    addressRange*: VkDeviceAddressRangeKHR
    addressFlags*: VkAddressCommandFlagsKHR

  VkMemoryMarkerInfoAMD* = object
    sType*: VkStructureType
    pNext*: pointer
    stage*: VkPipelineStageFlags2KHR
    dstRange*: VkDeviceAddressRangeKHR
    dstFlags*: VkAddressCommandFlagsKHR
    marker*: uint32

type VkBufferUsageFlags2CreateInfoKHR* = VkBufferUsageFlags2CreateInfo
type VkCopyMemoryIndirectCommandNV* = VkCopyMemoryIndirectCommandKHR
type VkCopyMemoryToImageIndirectCommandNV* = VkCopyMemoryToImageIndirectCommandKHR
type VkPipelineCreateFlags2CreateInfoKHR* = VkPipelineCreateFlags2CreateInfo
type VkPhysicalDeviceExternalSciBufFeaturesNV* = VkPhysicalDeviceExternalMemorySciBufFeaturesNV
type VkDevicePrivateDataCreateInfoEXT* = VkDevicePrivateDataCreateInfo
type VkPrivateDataSlotCreateInfoEXT* = VkPrivateDataSlotCreateInfo
type VkPhysicalDevicePrivateDataFeaturesEXT* = VkPhysicalDevicePrivateDataFeatures
type VkPhysicalDeviceFeatures2KHR* = VkPhysicalDeviceFeatures2
type VkPhysicalDeviceProperties2KHR* = VkPhysicalDeviceProperties2
type VkFormatProperties2KHR* = VkFormatProperties2
type VkImageFormatProperties2KHR* = VkImageFormatProperties2
type VkPhysicalDeviceImageFormatInfo2KHR* = VkPhysicalDeviceImageFormatInfo2
type VkQueueFamilyProperties2KHR* = VkQueueFamilyProperties2
type VkPhysicalDeviceMemoryProperties2KHR* = VkPhysicalDeviceMemoryProperties2
type VkSparseImageFormatProperties2KHR* = VkSparseImageFormatProperties2
type VkPhysicalDeviceSparseImageFormatInfo2KHR* = VkPhysicalDeviceSparseImageFormatInfo2
type VkPhysicalDevicePushDescriptorPropertiesKHR* = VkPhysicalDevicePushDescriptorProperties
type VkConformanceVersionKHR* = VkConformanceVersion
type VkPhysicalDeviceDriverPropertiesKHR* = VkPhysicalDeviceDriverProperties
type VkPhysicalDeviceVariablePointersFeaturesKHR* = VkPhysicalDeviceVariablePointersFeatures
type VkPhysicalDeviceVariablePointerFeaturesKHR* = VkPhysicalDeviceVariablePointersFeatures
type VkPhysicalDeviceVariablePointerFeatures* = VkPhysicalDeviceVariablePointersFeatures
type VkExternalMemoryPropertiesKHR* = VkExternalMemoryProperties
type VkPhysicalDeviceExternalImageFormatInfoKHR* = VkPhysicalDeviceExternalImageFormatInfo
type VkExternalImageFormatPropertiesKHR* = VkExternalImageFormatProperties
type VkPhysicalDeviceExternalBufferInfoKHR* = VkPhysicalDeviceExternalBufferInfo
type VkExternalBufferPropertiesKHR* = VkExternalBufferProperties
type VkPhysicalDeviceIDPropertiesKHR* = VkPhysicalDeviceIDProperties
type VkExternalMemoryImageCreateInfoKHR* = VkExternalMemoryImageCreateInfo
type VkExternalMemoryBufferCreateInfoKHR* = VkExternalMemoryBufferCreateInfo
type VkExportMemoryAllocateInfoKHR* = VkExportMemoryAllocateInfo
type VkPhysicalDeviceExternalSemaphoreInfoKHR* = VkPhysicalDeviceExternalSemaphoreInfo
type VkExternalSemaphorePropertiesKHR* = VkExternalSemaphoreProperties
type VkExportSemaphoreCreateInfoKHR* = VkExportSemaphoreCreateInfo
type VkPhysicalDeviceExternalFenceInfoKHR* = VkPhysicalDeviceExternalFenceInfo
type VkExternalFencePropertiesKHR* = VkExternalFenceProperties
type VkExportFenceCreateInfoKHR* = VkExportFenceCreateInfo
type VkPhysicalDeviceMultiviewFeaturesKHR* = VkPhysicalDeviceMultiviewFeatures
type VkPhysicalDeviceMultiviewPropertiesKHR* = VkPhysicalDeviceMultiviewProperties
type VkRenderPassMultiviewCreateInfoKHR* = VkRenderPassMultiviewCreateInfo
type VkPhysicalDeviceGroupPropertiesKHR* = VkPhysicalDeviceGroupProperties
type VkMemoryAllocateFlagsInfoKHR* = VkMemoryAllocateFlagsInfo
type VkBindBufferMemoryInfoKHR* = VkBindBufferMemoryInfo
type VkBindBufferMemoryDeviceGroupInfoKHR* = VkBindBufferMemoryDeviceGroupInfo
type VkBindImageMemoryInfoKHR* = VkBindImageMemoryInfo
type VkBindImageMemoryDeviceGroupInfoKHR* = VkBindImageMemoryDeviceGroupInfo
type VkDeviceGroupRenderPassBeginInfoKHR* = VkDeviceGroupRenderPassBeginInfo
type VkDeviceGroupCommandBufferBeginInfoKHR* = VkDeviceGroupCommandBufferBeginInfo
type VkDeviceGroupSubmitInfoKHR* = VkDeviceGroupSubmitInfo
type VkDeviceGroupBindSparseInfoKHR* = VkDeviceGroupBindSparseInfo
type VkDeviceGroupDeviceCreateInfoKHR* = VkDeviceGroupDeviceCreateInfo
type VkDescriptorUpdateTemplateEntryKHR* = VkDescriptorUpdateTemplateEntry
type VkDescriptorUpdateTemplateCreateInfoKHR* = VkDescriptorUpdateTemplateCreateInfo
type VkInputAttachmentAspectReferenceKHR* = VkInputAttachmentAspectReference
type VkRenderPassInputAttachmentAspectCreateInfoKHR* = VkRenderPassInputAttachmentAspectCreateInfo
type VkPhysicalDevice16BitStorageFeaturesKHR* = VkPhysicalDevice16BitStorageFeatures
type VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR* = VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures
type VkBufferMemoryRequirementsInfo2KHR* = VkBufferMemoryRequirementsInfo2
type VkDeviceBufferMemoryRequirementsKHR* = VkDeviceBufferMemoryRequirements
type VkImageMemoryRequirementsInfo2KHR* = VkImageMemoryRequirementsInfo2
type VkImageSparseMemoryRequirementsInfo2KHR* = VkImageSparseMemoryRequirementsInfo2
type VkDeviceImageMemoryRequirementsKHR* = VkDeviceImageMemoryRequirements
type VkMemoryRequirements2KHR* = VkMemoryRequirements2
type VkSparseImageMemoryRequirements2KHR* = VkSparseImageMemoryRequirements2
type VkPhysicalDevicePointClippingPropertiesKHR* = VkPhysicalDevicePointClippingProperties
type VkMemoryDedicatedRequirementsKHR* = VkMemoryDedicatedRequirements
type VkMemoryDedicatedAllocateInfoKHR* = VkMemoryDedicatedAllocateInfo
type VkImageViewUsageCreateInfoKHR* = VkImageViewUsageCreateInfo
type VkPipelineTessellationDomainOriginStateCreateInfoKHR* = VkPipelineTessellationDomainOriginStateCreateInfo
type VkSamplerYcbcrConversionInfoKHR* = VkSamplerYcbcrConversionInfo
type VkSamplerYcbcrConversionCreateInfoKHR* = VkSamplerYcbcrConversionCreateInfo
type VkBindImagePlaneMemoryInfoKHR* = VkBindImagePlaneMemoryInfo
type VkImagePlaneMemoryRequirementsInfoKHR* = VkImagePlaneMemoryRequirementsInfo
type VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR* = VkPhysicalDeviceSamplerYcbcrConversionFeatures
type VkSamplerYcbcrConversionImageFormatPropertiesKHR* = VkSamplerYcbcrConversionImageFormatProperties
type VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT* = VkPhysicalDeviceSamplerFilterMinmaxProperties
type VkSamplerReductionModeCreateInfoEXT* = VkSamplerReductionModeCreateInfo
type VkPhysicalDeviceInlineUniformBlockFeaturesEXT* = VkPhysicalDeviceInlineUniformBlockFeatures
type VkPhysicalDeviceInlineUniformBlockPropertiesEXT* = VkPhysicalDeviceInlineUniformBlockProperties
type VkWriteDescriptorSetInlineUniformBlockEXT* = VkWriteDescriptorSetInlineUniformBlock
type VkDescriptorPoolInlineUniformBlockCreateInfoEXT* = VkDescriptorPoolInlineUniformBlockCreateInfo
type VkImageFormatListCreateInfoKHR* = VkImageFormatListCreateInfo
type VkPhysicalDeviceMaintenance3PropertiesKHR* = VkPhysicalDeviceMaintenance3Properties
type VkPhysicalDeviceMaintenance4FeaturesKHR* = VkPhysicalDeviceMaintenance4Features
type VkPhysicalDeviceMaintenance4PropertiesKHR* = VkPhysicalDeviceMaintenance4Properties
type VkPhysicalDeviceMaintenance5FeaturesKHR* = VkPhysicalDeviceMaintenance5Features
type VkPhysicalDeviceMaintenance5PropertiesKHR* = VkPhysicalDeviceMaintenance5Properties
type VkPhysicalDeviceMaintenance6FeaturesKHR* = VkPhysicalDeviceMaintenance6Features
type VkPhysicalDeviceMaintenance6PropertiesKHR* = VkPhysicalDeviceMaintenance6Properties
type VkRenderingAreaInfoKHR* = VkRenderingAreaInfo
type VkDescriptorSetLayoutSupportKHR* = VkDescriptorSetLayoutSupport
type VkPhysicalDeviceShaderDrawParameterFeatures* = VkPhysicalDeviceShaderDrawParametersFeatures
type VkPhysicalDeviceShaderFloat16Int8FeaturesKHR* = VkPhysicalDeviceShaderFloat16Int8Features
type VkPhysicalDeviceFloat16Int8FeaturesKHR* = VkPhysicalDeviceShaderFloat16Int8Features
type VkPhysicalDeviceFloatControlsPropertiesKHR* = VkPhysicalDeviceFloatControlsProperties
type VkPhysicalDeviceHostQueryResetFeaturesEXT* = VkPhysicalDeviceHostQueryResetFeatures
type VkDeviceQueueGlobalPriorityCreateInfoKHR* = VkDeviceQueueGlobalPriorityCreateInfo
type VkDeviceQueueGlobalPriorityCreateInfoEXT* = VkDeviceQueueGlobalPriorityCreateInfo
type VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR* = VkPhysicalDeviceGlobalPriorityQueryFeatures
type VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT* = VkPhysicalDeviceGlobalPriorityQueryFeatures
type VkQueueFamilyGlobalPriorityPropertiesKHR* = VkQueueFamilyGlobalPriorityProperties
type VkQueueFamilyGlobalPriorityPropertiesEXT* = VkQueueFamilyGlobalPriorityProperties
type VkCalibratedTimestampInfoEXT* = VkCalibratedTimestampInfoKHR
type VkPhysicalDeviceDescriptorIndexingFeaturesEXT* = VkPhysicalDeviceDescriptorIndexingFeatures
type VkPhysicalDeviceDescriptorIndexingPropertiesEXT* = VkPhysicalDeviceDescriptorIndexingProperties
type VkDescriptorSetLayoutBindingFlagsCreateInfoEXT* = VkDescriptorSetLayoutBindingFlagsCreateInfo
type VkDescriptorSetVariableDescriptorCountAllocateInfoEXT* = VkDescriptorSetVariableDescriptorCountAllocateInfo
type VkDescriptorSetVariableDescriptorCountLayoutSupportEXT* = VkDescriptorSetVariableDescriptorCountLayoutSupport
type VkAttachmentDescription2KHR* = VkAttachmentDescription2
type VkAttachmentReference2KHR* = VkAttachmentReference2
type VkSubpassDescription2KHR* = VkSubpassDescription2
type VkSubpassDependency2KHR* = VkSubpassDependency2
type VkRenderPassCreateInfo2KHR* = VkRenderPassCreateInfo2
type VkSubpassBeginInfoKHR* = VkSubpassBeginInfo
type VkSubpassEndInfoKHR* = VkSubpassEndInfo
type VkPhysicalDeviceTimelineSemaphoreFeaturesKHR* = VkPhysicalDeviceTimelineSemaphoreFeatures
type VkPhysicalDeviceTimelineSemaphorePropertiesKHR* = VkPhysicalDeviceTimelineSemaphoreProperties
type VkSemaphoreTypeCreateInfoKHR* = VkSemaphoreTypeCreateInfo
type VkTimelineSemaphoreSubmitInfoKHR* = VkTimelineSemaphoreSubmitInfo
type VkSemaphoreWaitInfoKHR* = VkSemaphoreWaitInfo
type VkSemaphoreSignalInfoKHR* = VkSemaphoreSignalInfo
type VkVertexInputBindingDivisorDescriptionKHR* = VkVertexInputBindingDivisorDescription
type VkVertexInputBindingDivisorDescriptionEXT* = VkVertexInputBindingDivisorDescription
type VkPipelineVertexInputDivisorStateCreateInfoKHR* = VkPipelineVertexInputDivisorStateCreateInfo
type VkPipelineVertexInputDivisorStateCreateInfoEXT* = VkPipelineVertexInputDivisorStateCreateInfo
type VkPhysicalDeviceVertexAttributeDivisorPropertiesKHR* = VkPhysicalDeviceVertexAttributeDivisorProperties
type VkPhysicalDevice8BitStorageFeaturesKHR* = VkPhysicalDevice8BitStorageFeatures
type VkPhysicalDeviceVulkanMemoryModelFeaturesKHR* = VkPhysicalDeviceVulkanMemoryModelFeatures
type VkPhysicalDeviceShaderAtomicInt64FeaturesKHR* = VkPhysicalDeviceShaderAtomicInt64Features
type VkPhysicalDeviceVertexAttributeDivisorFeaturesKHR* = VkPhysicalDeviceVertexAttributeDivisorFeatures
type VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT* = VkPhysicalDeviceVertexAttributeDivisorFeatures
type VkPhysicalDeviceDepthStencilResolvePropertiesKHR* = VkPhysicalDeviceDepthStencilResolveProperties
type VkSubpassDescriptionDepthStencilResolveKHR* = VkSubpassDescriptionDepthStencilResolve
type VkPhysicalDeviceComputeShaderDerivativesFeaturesNV* = VkPhysicalDeviceComputeShaderDerivativesFeaturesKHR
type VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV* = VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR
type VkPhysicalDeviceCopyMemoryIndirectPropertiesNV* = VkPhysicalDeviceCopyMemoryIndirectPropertiesKHR
type VkPhysicalDeviceMemoryDecompressionFeaturesNV* = VkPhysicalDeviceMemoryDecompressionFeaturesEXT
type VkPhysicalDeviceMemoryDecompressionPropertiesNV* = VkPhysicalDeviceMemoryDecompressionPropertiesEXT
type VkImageStencilUsageCreateInfoEXT* = VkImageStencilUsageCreateInfo
type VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM* = VkPhysicalDeviceFragmentDensityMapOffsetFeaturesEXT
type VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM* = VkPhysicalDeviceFragmentDensityMapOffsetPropertiesEXT
type VkSubpassFragmentDensityMapOffsetEndInfoQCOM* = VkRenderPassFragmentDensityMapOffsetEndInfoEXT
type VkPhysicalDeviceScalarBlockLayoutFeaturesEXT* = VkPhysicalDeviceScalarBlockLayoutFeatures
type VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR* = VkPhysicalDeviceUniformBufferStandardLayoutFeatures
type VkPhysicalDeviceBufferDeviceAddressFeaturesKHR* = VkPhysicalDeviceBufferDeviceAddressFeatures
type VkPhysicalDeviceBufferAddressFeaturesEXT* = VkPhysicalDeviceBufferDeviceAddressFeaturesEXT
type VkBufferDeviceAddressInfoKHR* = VkBufferDeviceAddressInfo
type VkBufferDeviceAddressInfoEXT* = VkBufferDeviceAddressInfo
type VkBufferOpaqueCaptureAddressCreateInfoKHR* = VkBufferOpaqueCaptureAddressCreateInfo
type VkPhysicalDeviceImagelessFramebufferFeaturesKHR* = VkPhysicalDeviceImagelessFramebufferFeatures
type VkFramebufferAttachmentsCreateInfoKHR* = VkFramebufferAttachmentsCreateInfo
type VkFramebufferAttachmentImageInfoKHR* = VkFramebufferAttachmentImageInfo
type VkRenderPassAttachmentBeginInfoKHR* = VkRenderPassAttachmentBeginInfo
type VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT* = VkPhysicalDeviceTextureCompressionASTCHDRFeatures
type VkPipelineCreationFeedbackEXT* = VkPipelineCreationFeedback
type VkPipelineCreationFeedbackCreateInfoEXT* = VkPipelineCreationFeedbackCreateInfo
type VkQueryPoolCreateInfoINTEL* = VkQueryPoolPerformanceQueryCreateInfoINTEL
type VkPhysicalDeviceIndexTypeUint8FeaturesKHR* = VkPhysicalDeviceIndexTypeUint8Features
type VkPhysicalDeviceIndexTypeUint8FeaturesEXT* = VkPhysicalDeviceIndexTypeUint8Features
type VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR* = VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures
type VkAttachmentReferenceStencilLayoutKHR* = VkAttachmentReferenceStencilLayout
type VkAttachmentDescriptionStencilLayoutKHR* = VkAttachmentDescriptionStencilLayout
type VkPipelineInfoEXT* = VkPipelineInfoKHR
type VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT* = VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures
type VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT* = VkPhysicalDeviceTexelBufferAlignmentProperties
type VkPhysicalDeviceSubgroupSizeControlFeaturesEXT* = VkPhysicalDeviceSubgroupSizeControlFeatures
type VkPhysicalDeviceSubgroupSizeControlPropertiesEXT* = VkPhysicalDeviceSubgroupSizeControlProperties
type VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT* = VkPipelineShaderStageRequiredSubgroupSizeCreateInfo
type VkShaderRequiredSubgroupSizeCreateInfoEXT* = VkPipelineShaderStageRequiredSubgroupSizeCreateInfo
type VkMemoryOpaqueCaptureAddressAllocateInfoKHR* = VkMemoryOpaqueCaptureAddressAllocateInfo
type VkDeviceMemoryOpaqueCaptureAddressInfoKHR* = VkDeviceMemoryOpaqueCaptureAddressInfo
type VkPhysicalDeviceLineRasterizationFeaturesKHR* = VkPhysicalDeviceLineRasterizationFeatures
type VkPhysicalDeviceLineRasterizationFeaturesEXT* = VkPhysicalDeviceLineRasterizationFeatures
type VkPhysicalDeviceLineRasterizationPropertiesKHR* = VkPhysicalDeviceLineRasterizationProperties
type VkPhysicalDeviceLineRasterizationPropertiesEXT* = VkPhysicalDeviceLineRasterizationProperties
type VkPipelineRasterizationLineStateCreateInfoKHR* = VkPipelineRasterizationLineStateCreateInfo
type VkPipelineRasterizationLineStateCreateInfoEXT* = VkPipelineRasterizationLineStateCreateInfo
type VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT* = VkPhysicalDevicePipelineCreationCacheControlFeatures
type VkPhysicalDeviceToolPropertiesEXT* = VkPhysicalDeviceToolProperties
type VkAabbPositionsNV* = VkAabbPositionsKHR
type VkTransformMatrixNV* = VkTransformMatrixKHR
type VkAccelerationStructureInstanceNV* = VkAccelerationStructureInstanceKHR
type VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR* = VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures
type VkPhysicalDeviceRobustness2FeaturesEXT* = VkPhysicalDeviceRobustness2FeaturesKHR
type VkPhysicalDeviceRobustness2PropertiesEXT* = VkPhysicalDeviceRobustness2PropertiesKHR
type VkPhysicalDeviceImageRobustnessFeaturesEXT* = VkPhysicalDeviceImageRobustnessFeatures
type VkBufferCopy2KHR* = VkBufferCopy2
type VkImageCopy2KHR* = VkImageCopy2
type VkImageBlit2KHR* = VkImageBlit2
type VkBufferImageCopy2KHR* = VkBufferImageCopy2
type VkImageResolve2KHR* = VkImageResolve2
type VkCopyBufferInfo2KHR* = VkCopyBufferInfo2
type VkCopyImageInfo2KHR* = VkCopyImageInfo2
type VkBlitImageInfo2KHR* = VkBlitImageInfo2
type VkCopyBufferToImageInfo2KHR* = VkCopyBufferToImageInfo2
type VkCopyImageToBufferInfo2KHR* = VkCopyImageToBufferInfo2
type VkResolveImageInfo2KHR* = VkResolveImageInfo2
type VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR* = VkPhysicalDeviceShaderTerminateInvocationFeatures
type VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE* = VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT
type VkMutableDescriptorTypeListVALVE* = VkMutableDescriptorTypeListEXT
type VkMutableDescriptorTypeCreateInfoVALVE* = VkMutableDescriptorTypeCreateInfoEXT
type VkMemoryBarrier2KHR* = VkMemoryBarrier2
type VkImageMemoryBarrier2KHR* = VkImageMemoryBarrier2
type VkBufferMemoryBarrier2KHR* = VkBufferMemoryBarrier2
type VkDependencyInfoKHR* = VkDependencyInfo
type VkSemaphoreSubmitInfoKHR* = VkSemaphoreSubmitInfo
type VkCommandBufferSubmitInfoKHR* = VkCommandBufferSubmitInfo
type VkSubmitInfo2KHR* = VkSubmitInfo2
type VkPhysicalDeviceSynchronization2FeaturesKHR* = VkPhysicalDeviceSynchronization2Features
type VkPhysicalDeviceHostImageCopyFeaturesEXT* = VkPhysicalDeviceHostImageCopyFeatures
type VkPhysicalDeviceHostImageCopyPropertiesEXT* = VkPhysicalDeviceHostImageCopyProperties
type VkMemoryToImageCopyEXT* = VkMemoryToImageCopy
type VkImageToMemoryCopyEXT* = VkImageToMemoryCopy
type VkCopyMemoryToImageInfoEXT* = VkCopyMemoryToImageInfo
type VkCopyImageToMemoryInfoEXT* = VkCopyImageToMemoryInfo
type VkCopyImageToImageInfoEXT* = VkCopyImageToImageInfo
type VkHostImageLayoutTransitionInfoEXT* = VkHostImageLayoutTransitionInfo
type VkSubresourceHostMemcpySizeEXT* = VkSubresourceHostMemcpySize
type VkHostImageCopyDevicePerformanceQueryEXT* = VkHostImageCopyDevicePerformanceQuery
type VkPhysicalDevicePipelineProtectedAccessFeaturesEXT* = VkPhysicalDevicePipelineProtectedAccessFeatures
type VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR* = VkPhysicalDeviceShaderIntegerDotProductFeatures
type VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR* = VkPhysicalDeviceShaderIntegerDotProductProperties
type VkFormatProperties3KHR* = VkFormatProperties3
type VkPipelineRenderingCreateInfoKHR* = VkPipelineRenderingCreateInfo
type VkRenderingInfoKHR* = VkRenderingInfo
type VkRenderingEndInfoEXT* = VkRenderingEndInfoKHR
type VkRenderingAttachmentInfoKHR* = VkRenderingAttachmentInfo
type VkPhysicalDeviceDynamicRenderingFeaturesKHR* = VkPhysicalDeviceDynamicRenderingFeatures
type VkCommandBufferInheritanceRenderingInfoKHR* = VkCommandBufferInheritanceRenderingInfo
type VkAttachmentSampleCountInfoNV* = VkAttachmentSampleCountInfoAMD
type VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM* = VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT
type VkImageSubresource2KHR* = VkImageSubresource2
type VkImageSubresource2EXT* = VkImageSubresource2
type VkSubresourceLayout2KHR* = VkSubresourceLayout2
type VkSubresourceLayout2EXT* = VkSubresourceLayout2
type VkPhysicalDevicePipelineRobustnessFeaturesEXT* = VkPhysicalDevicePipelineRobustnessFeatures
type VkPipelineRobustnessCreateInfoEXT* = VkPipelineRobustnessCreateInfo
type VkPhysicalDevicePipelineRobustnessPropertiesEXT* = VkPhysicalDevicePipelineRobustnessProperties
type VkPhysicalDeviceDepthClampZeroOneFeaturesEXT* = VkPhysicalDeviceDepthClampZeroOneFeaturesKHR
type VkSurfacePresentModeEXT* = VkSurfacePresentModeKHR
type VkSurfacePresentScalingCapabilitiesEXT* = VkSurfacePresentScalingCapabilitiesKHR
type VkSurfacePresentModeCompatibilityEXT* = VkSurfacePresentModeCompatibilityKHR
type VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT* = VkPhysicalDeviceSwapchainMaintenance1FeaturesKHR
type VkSwapchainPresentFenceInfoEXT* = VkSwapchainPresentFenceInfoKHR
type VkSwapchainPresentModesCreateInfoEXT* = VkSwapchainPresentModesCreateInfoKHR
type VkSwapchainPresentModeInfoEXT* = VkSwapchainPresentModeInfoKHR
type VkSwapchainPresentScalingCreateInfoEXT* = VkSwapchainPresentScalingCreateInfoKHR
type VkReleaseSwapchainImagesInfoEXT* = VkReleaseSwapchainImagesInfoKHR
type VkDeviceImageSubresourceInfoKHR* = VkDeviceImageSubresourceInfo
type VkMemoryMapInfoKHR* = VkMemoryMapInfo
type VkMemoryUnmapInfoKHR* = VkMemoryUnmapInfo
type VkBindMemoryStatusKHR* = VkBindMemoryStatus
type VkBindDescriptorSetsInfoKHR* = VkBindDescriptorSetsInfo
type VkPushConstantsInfoKHR* = VkPushConstantsInfo
type VkPushDescriptorSetInfoKHR* = VkPushDescriptorSetInfo
type VkPushDescriptorSetWithTemplateInfoKHR* = VkPushDescriptorSetWithTemplateInfo
type VkPhysicalDeviceShaderSubgroupRotateFeaturesKHR* = VkPhysicalDeviceShaderSubgroupRotateFeatures
type VkPhysicalDeviceShaderExpectAssumeFeaturesKHR* = VkPhysicalDeviceShaderExpectAssumeFeatures
type VkPhysicalDeviceShaderFloatControls2FeaturesKHR* = VkPhysicalDeviceShaderFloatControls2Features
type VkPhysicalDeviceDynamicRenderingLocalReadFeaturesKHR* = VkPhysicalDeviceDynamicRenderingLocalReadFeatures
type VkRenderingAttachmentLocationInfoKHR* = VkRenderingAttachmentLocationInfo
type VkRenderingInputAttachmentIndexInfoKHR* = VkRenderingInputAttachmentIndexInfo
type VkPhysicalDevicePresentModeFifoLatestReadyFeaturesEXT* = VkPhysicalDevicePresentModeFifoLatestReadyFeaturesKHR
type VkDeviceAddressRangeEXT* = VkDeviceAddressRangeKHR
