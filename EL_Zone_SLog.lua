{
	Tools = ordered() {
		ELZone = GroupOperator {
			CtrlWZoom = false,
			NameSet = true,
			Inputs = ordered() {
				Input1 = InstanceInput {
					SourceOp = "ColorSpaceTransform1",
					Source = "Source",
				},
			},
			Outputs = {
				Output1 = InstanceOutput {
					SourceOp = "ColorSpaceTransform2",
					Source = "Output",
				}
			},
			ViewInfo = GroupInfo {
				Pos = { 202.917, 210.545 },
				Flags = {
					AllowPan = false,
					AutoSnap = true,
					RemoveRouters = true
				},
				Size = { 493, 68.1826, 246.5, 24.2424 },
				Direction = "Horizontal",
				PipeStyle = "Direct",
				Scale = 1,
				Offset = { -400.25, -306.909 }
			},
			Tools = ordered() {
				ColorSpaceTransform1 = ofx.com.blackmagicdesign.resolvefx.ColorSpaceTransformV2 {
					Inputs = {
						colorSpaceTransformGroup = Input { Value = 1, },
						inputColorSpace = Input { Value = FuID { "SGAMUT_COLORSPACE" }, },
						inputGamma = Input { Value = FuID { "SONY_SLOG_GAMMA" }, },
						outputColorSpace = Input { Value = FuID { "SGAMUT_COLORSPACE" }, },
						outputGamma = Input { Value = FuID { "LINEAR_GAMMA" }, },
						isRec2390ScalingEnabled = Input { Value = 0, },
						toneMappingGroup = Input { Value = 1, },
						tmType = Input { Value = FuID { "TM_NONE" }, },
						isSrcLumMaxCustomEnabled = Input {
							Value = 0,
							Disabled = true,
						},
						srcLumMax = Input {
							Value = 100,
							Disabled = true,
						},
						isDstLumMaxCustomEnabled = Input {
							Value = 0,
							Disabled = true,
						},
						dstLumMax = Input {
							Value = 100,
							Disabled = true,
						},
						srcLumAvg = Input {
							Value = 9,
							Disabled = true,
						},
						satRolloffStart = Input { Value = 100, },
						satRolloffLimit = Input { Value = 10000, },
						gamutMappingGroup = Input { Value = 1, },
						gmType = Input { Value = FuID { "GM_NONE" }, },
						satKnee = Input {
							Value = 0.899999976158142,
							Disabled = true,
						},
						satMax = Input {
							Value = 1,
							Disabled = true,
						},
						advancedGroup = Input { Value = 1, },
						doFwdOOTF = Input { Value = 0, },
						doInvOOTF = Input { Value = 0, },
						doCAT = Input { Value = 0, },
						blendGroup = Input { Value = 0, },
						blendIn = Input { Value = 1, },
						blend = Input { Value = 0, },
						ignoreContentShape = Input { Value = 0, },
						legacyIsProcessRGBOnly = Input { Value = 0, },
						refreshTrigger = Input { Value = 1, },
						resolvefxVersion = Input { Value = "1.1", },
					},
					ViewInfo = OperatorInfo { Pos = { 216.75, 317.364 } },
				},
				ColorGain1 = ColorGain {
					Inputs = {
						LockRGB = Input { Value = 1, },
						GainRed = Input { Expression = "ISO/BaseISO", },
						ColorRanges = Input {
							Value = ColorCurves {
								Curves = {
									{
										Points = {
											{ 0, 1 },
											{ 0.125, 0.75 },
											{ 0.375, 0.25 },
											{ 0.5, 0 }
										}
									},
									{
										Points = {
											{ 0.5, 0 },
											{ 0.625, 0.25 },
											{ 0.875, 0.75 },
											{ 1, 1 }
										}
									}
								}
							},
						},
						Input = Input {
							SourceOp = "ColorSpaceTransform1",
							Source = "Output",
						},
					},
					ViewInfo = OperatorInfo { Pos = { 326.75, 317.364 } },
				},
				Group1 = GroupOperator {
					Inputs = ordered() {
						Input1 = InstanceInput {
							SourceOp = "CustomTool1_1",
							Source = "Image1",
						}
					},
					Outputs = {
						Output1 = InstanceOutput {
							SourceOp = "Merge7",
							Source = "Output",
						}
					},
					ViewInfo = GroupInfo {
						Pos = { 452, 316.621 },
						Flags = {
							AllowPan = false,
							AutoSnap = true,
							RemoveRouters = true
						},
						Size = { 660.5, 652.713, 330.25, 24.2424 },
						Direction = "Horizontal",
						PipeStyle = "Direct",
						Scale = 1,
						Offset = { -519.334, 171.258 }
					},
					Tools = ordered() {
						Merge7 = Merge {
							CtrlWShown = false,
							Inputs = {
								Background = Input {
									SourceOp = "Merge6",
									Source = "Output",
								},
								Foreground = Input {
									SourceOp = "ColorGenerator4_1_1_1_1",
									Source = "Output",
								},
								SubtractiveAdditive = Input { Value = 0, },
								PerformDepthMerge = Input { Value = 0, },
							},
							ViewInfo = OperatorInfo { Pos = { 779.25, 423.728 } },
						},
						ex6 = Custom {
							CtrlWShown = false,
							NameSet = true,
							Inputs = {
								LUTIn1 = Input {
									SourceOp = "ex5_1LUTIn1",
									Source = "Value",
								},
								LUTIn2 = Input {
									SourceOp = "ex5_1LUTIn2",
									Source = "Value",
								},
								LUTIn3 = Input {
									SourceOp = "ex5_1LUTIn3",
									Source = "Value",
								},
								LUTIn4 = Input {
									SourceOp = "ex5_1LUTIn4",
									Source = "Value",
								},
								AlphaExpression = Input { Value = "if(r1>11.52, 1.0, 0.0)\n", },
								Image1 = Input {
									SourceOp = "CustomTool1_1",
									Source = "Output",
								},
							},
							ViewInfo = OperatorInfo { Pos = { 527.584, 422.516 } },
						},
						ColorGenerator4_1_1_1_1 = ofx.com.blackmagicdesign.openfx.ColorGeneratorPlugin {
							CtrlWShown = false,
							NameSet = true,
							Inputs = {
								Source = Input {
									SourceOp = "ex6",
									Source = "Output",
								},
								cColorRed = Input { Value = 1, },
								cColorGreen = Input { Value = 1, },
								cColorBlue = Input { Value = 1, },
								blendGroup = Input { Value = 0, },
								blendIn = Input { Value = 1, },
								blend = Input { Value = 0, },
								ignoreContentShape = Input { Value = 0, },
								legacyIsProcessRGBOnly = Input { Value = 0, },
								refreshTrigger = Input { Value = 1, },
								resolvefxVersion = Input { Value = "1.0", },
							},
							ViewInfo = OperatorInfo { Pos = { 652.919, 423.728 } },
						},
						ColorGenerator4_1_1_1 = ofx.com.blackmagicdesign.openfx.ColorGeneratorPlugin {
							CtrlWShown = false,
							NameSet = true,
							Inputs = {
								Source = Input {
									SourceOp = "ex5",
									Source = "Output",
								},
								cColorRed = Input { Value = 1, },
								cColorGreen = Input { Value = 0.313725490196078, },
								cColorBlue = Input { Value = 0.313725490196078, },
								blendGroup = Input { Value = 0, },
								blendIn = Input { Value = 1, },
								blend = Input { Value = 0, },
								ignoreContentShape = Input { Value = 0, },
								legacyIsProcessRGBOnly = Input { Value = 0, },
								refreshTrigger = Input { Value = 1, },
								resolvefxVersion = Input { Value = "1.0", },
							},
							ViewInfo = OperatorInfo { Pos = { 654.919, 383.728 } },
						},
						Merge6 = Merge {
							CtrlWShown = false,
							Inputs = {
								Background = Input {
									SourceOp = "Merge5",
									Source = "Output",
								},
								Foreground = Input {
									SourceOp = "ColorGenerator4_1_1_1",
									Source = "Output",
								},
								SubtractiveAdditive = Input { Value = 0, },
								PerformDepthMerge = Input { Value = 0, },
							},
							ViewInfo = OperatorInfo { Pos = { 779.25, 383.728 } },
						},
						ex5 = Custom {
							CtrlWShown = false,
							NameSet = true,
							Inputs = {
								LUTIn1 = Input {
									SourceOp = "ex5LUTIn1",
									Source = "Value",
								},
								LUTIn2 = Input {
									SourceOp = "ex5LUTIn2",
									Source = "Value",
								},
								LUTIn3 = Input {
									SourceOp = "ex5LUTIn3",
									Source = "Value",
								},
								LUTIn4 = Input {
									SourceOp = "ex5LUTIn4",
									Source = "Value",
								},
								AlphaExpression = Input { Value = "if(r1>5.76, 1.0, 0.0)\n", },
								Image1 = Input {
									SourceOp = "CustomTool1_1",
									Source = "Output",
								},
							},
							ViewInfo = OperatorInfo { Pos = { 529.584, 382.516 } },
						},
						Merge5 = Merge {
							CtrlWShown = false,
							Inputs = {
								Background = Input {
									SourceOp = "Merge4",
									Source = "Output",
								},
								Foreground = Input {
									SourceOp = "ColorGenerator4_1_1",
									Source = "Output",
								},
								SubtractiveAdditive = Input { Value = 0, },
								PerformDepthMerge = Input { Value = 0, },
							},
							ViewInfo = OperatorInfo { Pos = { 779.25, 334.031 } },
						},
						ColorGenerator4_1_1 = ofx.com.blackmagicdesign.openfx.ColorGeneratorPlugin {
							CtrlWShown = false,
							NameSet = true,
							Inputs = {
								Source = Input {
									SourceOp = "ex4",
									Source = "Output",
								},
								cColorRed = Input { Value = 0.996078431372549, },
								cColorGreen = Input { Value = 0, },
								cColorBlue = Input { Value = 0, },
								blendGroup = Input { Value = 0, },
								blendIn = Input { Value = 1, },
								blend = Input { Value = 0, },
								ignoreContentShape = Input { Value = 0, },
								legacyIsProcessRGBOnly = Input { Value = 0, },
								refreshTrigger = Input { Value = 1, },
								resolvefxVersion = Input { Value = "1.0", },
							},
							ViewInfo = OperatorInfo { Pos = { 652.917, 334.031 } },
						},
						ex4 = Custom {
							CtrlWShown = false,
							NameSet = true,
							Inputs = {
								LUTIn1 = Input {
									SourceOp = "ex4LUTIn1",
									Source = "Value",
								},
								LUTIn2 = Input {
									SourceOp = "ex4LUTIn2",
									Source = "Value",
								},
								LUTIn3 = Input {
									SourceOp = "ex4LUTIn3",
									Source = "Value",
								},
								LUTIn4 = Input {
									SourceOp = "ex4LUTIn4",
									Source = "Value",
								},
								AlphaExpression = Input { Value = "if(r1>2.88, 1.0, 0.0)\n", },
								Image1 = Input {
									SourceOp = "CustomTool1_1",
									Source = "Output",
								},
							},
							ViewInfo = OperatorInfo { Pos = { 527.583, 332.819 } },
						},
						Merge14 = Merge {
							CtrlWShown = false,
							Inputs = {
								Background = Input {
									SourceOp = "ColorGenerator1",
									Source = "Output",
								},
								Foreground = Input {
									SourceOp = "ColorGenerator1_1_1_1_1_1_1_1",
									Source = "Output",
								},
								SubtractiveAdditive = Input { Value = 0, },
								PerformDepthMerge = Input { Value = 0, },
							},
							ViewInfo = OperatorInfo { Pos = { 786.249, -120.514 } },
						},
						Merge11 = Merge {
							CtrlWShown = false,
							Inputs = {
								Background = Input {
									SourceOp = "Merge12",
									Source = "Output",
								},
								Foreground = Input {
									SourceOp = "ColorGenerator1_1_1_1_1",
									Source = "Output",
								},
								SubtractiveAdditive = Input { Value = 0, },
								PerformDepthMerge = Input { Value = 0, },
							},
							ViewInfo = OperatorInfo { Pos = { 783.917, 0.69812 } },
						},
						Merge13 = Merge {
							CtrlWShown = false,
							Inputs = {
								Background = Input {
									SourceOp = "Merge14",
									Source = "Output",
								},
								Foreground = Input {
									SourceOp = "ColorGenerator1_1_1_1_1_1_1",
									Source = "Output",
								},
								SubtractiveAdditive = Input { Value = 0, },
								PerformDepthMerge = Input { Value = 0, },
							},
							ViewInfo = OperatorInfo { Pos = { 786.583, -76.8773 } },
						},
						Merge1 = Merge {
							CtrlWShown = false,
							Inputs = {
								Background = Input {
									SourceOp = "Merge9_1",
									Source = "Output",
								},
								Foreground = Input {
									SourceOp = "ColorGenerator2",
									Source = "Output",
								},
								SubtractiveAdditive = Input { Value = 0, },
								PerformDepthMerge = Input { Value = 0, },
							},
							ViewInfo = OperatorInfo { Pos = { 782.917, 147.97 } },
						},
						Merge12 = Merge {
							CtrlWShown = false,
							Inputs = {
								Background = Input {
									SourceOp = "Merge13",
									Source = "Output",
								},
								Foreground = Input {
									SourceOp = "ColorGenerator1_1_1_1_1_1",
									Source = "Output",
								},
								SubtractiveAdditive = Input { Value = 0, },
								PerformDepthMerge = Input { Value = 0, },
							},
							ViewInfo = OperatorInfo { Pos = { 784.583, -37.4833 } },
						},
						Merge10 = Merge {
							CtrlWShown = false,
							Inputs = {
								Background = Input {
									SourceOp = "Merge11",
									Source = "Output",
								},
								Foreground = Input {
									SourceOp = "ColorGenerator1_1_1_1",
									Source = "Output",
								},
								SubtractiveAdditive = Input { Value = 0, },
								PerformDepthMerge = Input { Value = 0, },
							},
							ViewInfo = OperatorInfo { Pos = { 781.917, 35.8496 } },
						},
						Merge2 = Merge {
							CtrlWShown = false,
							Inputs = {
								Background = Input {
									SourceOp = "Merge1",
									Source = "Output",
								},
								Foreground = Input {
									SourceOp = "ColorGenerator3",
									Source = "Output",
								},
								SubtractiveAdditive = Input { Value = 0, },
								PerformDepthMerge = Input { Value = 0, },
							},
							ViewInfo = OperatorInfo { Pos = { 781.917, 192.531 } },
						},
						Merge3 = Merge {
							CtrlWShown = false,
							Inputs = {
								Background = Input {
									SourceOp = "Merge2",
									Source = "Output",
								},
								Foreground = Input {
									SourceOp = "ColorGenerator4",
									Source = "Output",
								},
								SubtractiveAdditive = Input { Value = 0, },
								PerformDepthMerge = Input { Value = 0, },
							},
							ViewInfo = OperatorInfo { Pos = { 781.25, 242.834 } },
						},
						Merge9 = Merge {
							CtrlWShown = false,
							Inputs = {
								Background = Input {
									SourceOp = "Merge10",
									Source = "Output",
								},
								Foreground = Input {
									SourceOp = "ColorGenerator1_1_1",
									Source = "Output",
								},
								SubtractiveAdditive = Input { Value = 0, },
								PerformDepthMerge = Input { Value = 0, },
							},
							ViewInfo = OperatorInfo { Pos = { 781.25, 70.395 } },
						},
						Merge9_1 = Merge {
							CtrlWShown = false,
							Inputs = {
								Background = Input {
									SourceOp = "Merge9",
									Source = "Output",
								},
								Foreground = Input {
									SourceOp = "ColorGenerator1_1",
									Source = "Output",
								},
								SubtractiveAdditive = Input { Value = 0, },
								PerformDepthMerge = Input { Value = 0, },
							},
							ViewInfo = OperatorInfo { Pos = { 778.916, 101.911 } },
						},
						Merge4 = Merge {
							CtrlWShown = false,
							Inputs = {
								Background = Input {
									SourceOp = "Merge3",
									Source = "Output",
								},
								Foreground = Input {
									SourceOp = "ColorGenerator4_1",
									Source = "Output",
								},
								SubtractiveAdditive = Input { Value = 0, },
								PerformDepthMerge = Input { Value = 0, },
							},
							ViewInfo = OperatorInfo { Pos = { 779.917, 287.97 } },
						},
						ColorGenerator4_1 = ofx.com.blackmagicdesign.openfx.ColorGeneratorPlugin {
							CtrlWShown = false,
							Inputs = {
								Source = Input {
									SourceOp = "ex3",
									Source = "Output",
								},
								cColorRed = Input { Value = 0.996078431372549, },
								cColorGreen = Input { Value = 0.619607843137255, },
								cColorBlue = Input { Value = 0.0313725490196078, },
								blendGroup = Input { Value = 0, },
								blendIn = Input { Value = 1, },
								blend = Input { Value = 0, },
								ignoreContentShape = Input { Value = 0, },
								legacyIsProcessRGBOnly = Input { Value = 0, },
								refreshTrigger = Input { Value = 1, },
								resolvefxVersion = Input { Value = "1.0", },
							},
							ViewInfo = OperatorInfo { Pos = { 652.251, 287.97 } },
						},
						ex3 = Custom {
							CtrlWShown = false,
							NameSet = true,
							Inputs = {
								LUTIn1 = Input {
									SourceOp = "CustomTool3_1_1_1LUTIn1",
									Source = "Value",
								},
								LUTIn2 = Input {
									SourceOp = "CustomTool3_1_1_1LUTIn2",
									Source = "Value",
								},
								LUTIn3 = Input {
									SourceOp = "CustomTool3_1_1_1LUTIn3",
									Source = "Value",
								},
								LUTIn4 = Input {
									SourceOp = "CustomTool3_1_1_1LUTIn4",
									Source = "Value",
								},
								AlphaExpression = Input { Value = "if(r1>1.44, 1.0, 0.0)\n", },
								Image1 = Input {
									SourceOp = "CustomTool1_1",
									Source = "Output",
								},
							},
							ViewInfo = OperatorInfo { Pos = { 530.917, 286.758 } },
						},
						ColorGenerator4 = ofx.com.blackmagicdesign.openfx.ColorGeneratorPlugin {
							CtrlWShown = false,
							Inputs = {
								Source = Input {
									SourceOp = "ex2",
									Source = "Output",
								},
								cColorRed = Input { Value = 0.992156862745098, },
								cColorGreen = Input { Value = 0.549019607843137, },
								cColorBlue = Input { Value = 0.0588235294117647, },
								blendGroup = Input { Value = 0, },
								blendIn = Input { Value = 1, },
								blend = Input { Value = 0, },
								ignoreContentShape = Input { Value = 0, },
								legacyIsProcessRGBOnly = Input { Value = 0, },
								refreshTrigger = Input { Value = 1, },
								resolvefxVersion = Input { Value = "1.0", },
							},
							ViewInfo = OperatorInfo { Pos = { 647.25, 242.228 } },
						},
						ex2 = Custom {
							CtrlWShown = false,
							NameSet = true,
							Inputs = {
								LUTIn1 = Input {
									SourceOp = "ex2LUTIn1",
									Source = "Value",
								},
								LUTIn2 = Input {
									SourceOp = "ex2LUTIn2",
									Source = "Value",
								},
								LUTIn3 = Input {
									SourceOp = "ex2LUTIn3",
									Source = "Value",
								},
								LUTIn4 = Input {
									SourceOp = "ex2LUTIn4",
									Source = "Value",
								},
								AlphaExpression = Input { Value = "if(r1>0.72, 1.0, 0.0)\n", },
								Image1 = Input {
									SourceOp = "CustomTool1_1",
									Source = "Output",
								},
							},
							ViewInfo = OperatorInfo { Pos = { 525.917, 241.016 } },
						},
						CustomTool1_1 = Custom {
							CtrlWShown = false,
							Inputs = {
								LUTIn1 = Input {
									SourceOp = "CustomTool1_1LUTIn1",
									Source = "Value",
								},
								LUTIn2 = Input {
									SourceOp = "CustomTool1_1LUTIn2",
									Source = "Value",
								},
								LUTIn3 = Input {
									SourceOp = "CustomTool1_1LUTIn3",
									Source = "Value",
								},
								LUTIn4 = Input {
									SourceOp = "CustomTool1_1LUTIn4",
									Source = "Value",
								},
								RedExpression = Input { Value = "max(max(r1,g1),b1)", },
								GreenExpression = Input { Value = "max(max(r1,g1),b1)", },
								BlueExpression = Input { Value = "max(max(r1,g1),b1)", },
								Image1 = Input {
									SourceOp = "ColorGain1",
									Source = "Output",
								},
							},
							ViewInfo = OperatorInfo { Pos = { 252.084, 205.857 } },
						},
						ex1 = Custom {
							CtrlWShown = false,
							NameSet = true,
							Inputs = {
								LUTIn1 = Input {
									SourceOp = "CustomTool3_1LUTIn1",
									Source = "Value",
								},
								LUTIn2 = Input {
									SourceOp = "CustomTool3_1LUTIn2",
									Source = "Value",
								},
								LUTIn3 = Input {
									SourceOp = "CustomTool3_1LUTIn3",
									Source = "Value",
								},
								LUTIn4 = Input {
									SourceOp = "CustomTool3_1LUTIn4",
									Source = "Value",
								},
								AlphaExpression = Input { Value = "if(r1>0.36, 1.0, 0.0)\n", },
								Image1 = Input {
									SourceOp = "CustomTool1_1",
									Source = "Output",
								},
							},
							ViewInfo = OperatorInfo { Pos = { 533.25, 191.925 } },
						},
						ColorGenerator3 = ofx.com.blackmagicdesign.openfx.ColorGeneratorPlugin {
							CtrlWShown = false,
							Inputs = {
								Source = Input {
									SourceOp = "ex1",
									Source = "Output",
								},
								cColorRed = Input { Value = 1, },
								cColorGreen = Input { Value = 0.976470588235294, },
								cColorBlue = Input { Value = 0.482352941176471, },
								blendGroup = Input { Value = 0, },
								blendIn = Input { Value = 1, },
								blend = Input { Value = 0, },
								ignoreContentShape = Input { Value = 0, },
								legacyIsProcessRGBOnly = Input { Value = 0, },
								refreshTrigger = Input { Value = 1, },
								resolvefxVersion = Input { Value = "1.0", },
							},
							ViewInfo = OperatorInfo { Pos = { 643.25, 191.925 } },
						},
						ColorGenerator1_1_1_1_1_1_1_1 = ofx.com.blackmagicdesign.openfx.ColorGeneratorPlugin {
							CtrlWShown = false,
							Inputs = {
								Source = Input {
									SourceOp = "ex_05",
									Source = "Output",
								},
								cColorRed = Input { Value = 0, },
								cColorGreen = Input { Value = 1, },
								cColorBlue = Input { Value = 0.0313725490196078, },
								blendGroup = Input { Value = 0, },
								blendIn = Input { Value = 1, },
								blend = Input { Value = 0, },
								ignoreContentShape = Input { Value = 0, },
								legacyIsProcessRGBOnly = Input { Value = 0, },
								refreshTrigger = Input { Value = 1, },
								resolvefxVersion = Input { Value = "1.0", },
							},
							ViewInfo = OperatorInfo { Pos = { 665.582, -119.908 } },
						},
						ColorGenerator1_1_1_1_1_1 = ofx.com.blackmagicdesign.openfx.ColorGeneratorPlugin {
							CtrlWShown = false,
							Inputs = {
								Source = Input {
									SourceOp = "ex_2",
									Source = "Output",
								},
								cColorRed = Input { Value = 0.129411764705882, },
								cColorGreen = Input { Value = 0.666666666666667, },
								cColorBlue = Input { Value = 0.105882352941176, },
								blendGroup = Input { Value = 0, },
								blendIn = Input { Value = 1, },
								blend = Input { Value = 0, },
								ignoreContentShape = Input { Value = 0, },
								legacyIsProcessRGBOnly = Input { Value = 0, },
								refreshTrigger = Input { Value = 1, },
								resolvefxVersion = Input { Value = "1.0", },
							},
							ViewInfo = OperatorInfo { Pos = { 660.582, -37.4833 } },
						},
						ColorGenerator1_1_1 = ofx.com.blackmagicdesign.openfx.ColorGeneratorPlugin {
							CtrlWShown = false,
							Inputs = {
								Source = Input {
									SourceOp = "ex_5",
									Source = "Output",
								},
								cColorRed = Input { Value = 0.466666666666667, },
								cColorGreen = Input { Value = 0.231372549019608, },
								cColorBlue = Input { Value = 0.647058823529412, },
								blendGroup = Input { Value = 0, },
								blendIn = Input { Value = 1, },
								blend = Input { Value = 0, },
								ignoreContentShape = Input { Value = 0, },
								legacyIsProcessRGBOnly = Input { Value = 0, },
								refreshTrigger = Input { Value = 1, },
								resolvefxVersion = Input { Value = "1.0", },
							},
							ViewInfo = OperatorInfo { Pos = { 658.583, 70.395 } },
						},
						ColorGenerator1_1_1_1_1 = ofx.com.blackmagicdesign.openfx.ColorGeneratorPlugin {
							CtrlWShown = false,
							Inputs = {
								Source = Input {
									SourceOp = "ex_3",
									Source = "Output",
								},
								cColorRed = Input { Value = 0.0313725490196078, },
								cColorGreen = Input { Value = 0.705882352941177, },
								cColorBlue = Input { Value = 0.949019607843137, },
								blendGroup = Input { Value = 0, },
								blendIn = Input { Value = 1, },
								blend = Input { Value = 0, },
								ignoreContentShape = Input { Value = 0, },
								legacyIsProcessRGBOnly = Input { Value = 0, },
								refreshTrigger = Input { Value = 1, },
								resolvefxVersion = Input { Value = "1.0", },
							},
							ViewInfo = OperatorInfo { Pos = { 659.25, -0.514099 } },
						},
						ColorGenerator1_1_1_1 = ofx.com.blackmagicdesign.openfx.ColorGeneratorPlugin {
							CtrlWShown = false,
							Inputs = {
								Source = Input {
									SourceOp = "ex_4",
									Source = "Output",
								},
								cColorRed = Input { Value = 0, },
								cColorGreen = Input { Value = 0.470588235294118, },
								cColorBlue = Input { Value = 0.768627450980392, },
								blendGroup = Input { Value = 0, },
								blendIn = Input { Value = 1, },
								blend = Input { Value = 0, },
								ignoreContentShape = Input { Value = 0, },
								legacyIsProcessRGBOnly = Input { Value = 0, },
								refreshTrigger = Input { Value = 1, },
								resolvefxVersion = Input { Value = "1.0", },
							},
							ViewInfo = OperatorInfo { Pos = { 659.25, 35.8496 } },
						},
						ColorGenerator1_1 = ofx.com.blackmagicdesign.openfx.ColorGeneratorPlugin {
							CtrlWShown = false,
							Inputs = {
								Source = Input {
									SourceOp = "ex_6",
									Source = "Output",
								},
								cColorRed = Input { Value = 0, },
								cColorGreen = Input { Value = 0, },
								cColorBlue = Input { Value = 0, },
								blendGroup = Input { Value = 0, },
								blendIn = Input { Value = 1, },
								blend = Input { Value = 0, },
								ignoreContentShape = Input { Value = 0, },
								legacyIsProcessRGBOnly = Input { Value = 0, },
								refreshTrigger = Input { Value = 1, },
								resolvefxVersion = Input { Value = "1.0", },
							},
							ViewInfo = OperatorInfo { Pos = { 653.25, 103.122 } },
						},
						ColorGenerator2 = ofx.com.blackmagicdesign.openfx.ColorGeneratorPlugin {
							CtrlWShown = false,
							Inputs = {
								Source = Input {
									SourceOp = "ex05",
									Source = "Output",
								},
								cColorRed = Input { Value = 1, },
								cColorGreen = Input { Value = 0.976470588235294, },
								cColorBlue = Input { Value = 0, },
								blendGroup = Input { Value = 0, },
								blendIn = Input { Value = 1, },
								blend = Input { Value = 0, },
								ignoreContentShape = Input { Value = 0, },
								legacyIsProcessRGBOnly = Input { Value = 0, },
								refreshTrigger = Input { Value = 1, },
								resolvefxVersion = Input { Value = "1.0", },
							},
							ViewInfo = OperatorInfo { Pos = { 637.25, 144.652 } },
						},
						ex05 = Custom {
							CtrlWShown = false,
							NameSet = true,
							Inputs = {
								LUTIn1 = Input {
									SourceOp = "ex05LUTIn1",
									Source = "Value",
								},
								LUTIn2 = Input {
									SourceOp = "ex05LUTIn2",
									Source = "Value",
								},
								LUTIn3 = Input {
									SourceOp = "ex05LUTIn3",
									Source = "Value",
								},
								LUTIn4 = Input {
									SourceOp = "ex05LUTIn4",
									Source = "Value",
								},
								AlphaExpression = Input { Value = "if(r1>0.254558441227157, 1.0, 0.0)\n", },
								Image1 = Input {
									SourceOp = "CustomTool1_1",
									Source = "Output",
								},
							},
							ViewInfo = OperatorInfo { Pos = { 527.25, 144.652 } },
						},
						ColorGenerator1_1_1_1_1_1_1 = ofx.com.blackmagicdesign.openfx.ColorGeneratorPlugin {
							CtrlWShown = false,
							Inputs = {
								Source = Input {
									SourceOp = "ex_1",
									Source = "Output",
								},
								cColorRed = Input { Value = 0.235294117647059, },
								cColorGreen = Input { Value = 0.882352941176471, },
								cColorBlue = Input { Value = 0.188235294117647, },
								blendGroup = Input { Value = 0, },
								blendIn = Input { Value = 1, },
								blend = Input { Value = 0, },
								ignoreContentShape = Input { Value = 0, },
								legacyIsProcessRGBOnly = Input { Value = 0, },
								refreshTrigger = Input { Value = 1, },
								resolvefxVersion = Input { Value = "1.0", },
							},
							ViewInfo = OperatorInfo { Pos = { 661.25, -76.8773 } },
						},
						ex_6 = Custom {
							CtrlWShown = false,
							NameSet = true,
							Inputs = {
								LUTIn1 = Input {
									SourceOp = "ex18_1LUTIn1",
									Source = "Value",
								},
								LUTIn2 = Input {
									SourceOp = "ex18_1LUTIn2",
									Source = "Value",
								},
								LUTIn3 = Input {
									SourceOp = "ex18_1LUTIn3",
									Source = "Value",
								},
								LUTIn4 = Input {
									SourceOp = "ex18_1LUTIn4",
									Source = "Value",
								},
								AlphaExpression = Input { Value = "if(r1<0.0028125, 1.0, 0.0)", },
								Image1 = Input {
									SourceOp = "CustomTool1_1",
									Source = "Output",
								},
							},
							ViewInfo = OperatorInfo { Pos = { 529.582, 103.122 } },
						},
						ex_05 = Custom {
							CtrlWShown = false,
							NameSet = true,
							Inputs = {
								LUTIn1 = Input {
									SourceOp = "ex_1_1LUTIn1",
									Source = "Value",
								},
								LUTIn2 = Input {
									SourceOp = "ex_1_1LUTIn2",
									Source = "Value",
								},
								LUTIn3 = Input {
									SourceOp = "ex_1_1LUTIn3",
									Source = "Value",
								},
								LUTIn4 = Input {
									SourceOp = "ex_1_1LUTIn4",
									Source = "Value",
								},
								AlphaExpression = Input { Value = "if(r1<0.127279220613579, 1.0, 0.0)", },
								Image1 = Input {
									SourceOp = "CustomTool1_1",
									Source = "Output",
								},
							},
							ViewInfo = OperatorInfo { Pos = { 537.248, -120.514 } },
						},
						ex_5 = Custom {
							CtrlWShown = false,
							NameSet = true,
							Inputs = {
								LUTIn1 = Input {
									SourceOp = "ex_6_1LUTIn1",
									Source = "Value",
								},
								LUTIn2 = Input {
									SourceOp = "ex_6_1LUTIn2",
									Source = "Value",
								},
								LUTIn3 = Input {
									SourceOp = "ex_6_1LUTIn3",
									Source = "Value",
								},
								LUTIn4 = Input {
									SourceOp = "ex_6_1LUTIn4",
									Source = "Value",
								},
								AlphaExpression = Input { Value = "if(r1<0.005625, 1.0, 0.0)", },
								Image1 = Input {
									SourceOp = "CustomTool1_1",
									Source = "Output",
								},
							},
							ViewInfo = OperatorInfo { Pos = { 530.25, 69.7886 } },
						},
						ex_2 = Custom {
							CtrlWShown = false,
							NameSet = true,
							Inputs = {
								LUTIn1 = Input {
									SourceOp = "ex_3_1LUTIn1",
									Source = "Value",
								},
								LUTIn2 = Input {
									SourceOp = "ex_3_1LUTIn2",
									Source = "Value",
								},
								LUTIn3 = Input {
									SourceOp = "ex_3_1LUTIn3",
									Source = "Value",
								},
								LUTIn4 = Input {
									SourceOp = "ex_3_1LUTIn4",
									Source = "Value",
								},
								AlphaExpression = Input { Value = "if(r1<0.045, 1.0, 0.0)", },
								Image1 = Input {
									SourceOp = "CustomTool1_1",
									Source = "Output",
								},
							},
							ViewInfo = OperatorInfo { Pos = { 532.248, -38.0893 } },
						},
						ex_3 = Custom {
							CtrlWShown = false,
							NameSet = true,
							Inputs = {
								LUTIn1 = Input {
									SourceOp = "ex_3LUTIn1",
									Source = "Value",
								},
								LUTIn2 = Input {
									SourceOp = "ex_3LUTIn2",
									Source = "Value",
								},
								LUTIn3 = Input {
									SourceOp = "ex_3LUTIn3",
									Source = "Value",
								},
								LUTIn4 = Input {
									SourceOp = "ex_3LUTIn4",
									Source = "Value",
								},
								AlphaExpression = Input { Value = "if(r1<0.0225, 1.0, 0.0)", },
								Image1 = Input {
									SourceOp = "CustomTool1_1",
									Source = "Output",
								},
							},
							ViewInfo = OperatorInfo { Pos = { 530.915, -1.12006 } },
						},
						ex_4 = Custom {
							CtrlWShown = false,
							NameSet = true,
							Inputs = {
								LUTIn1 = Input {
									SourceOp = "ex_5_1LUTIn1",
									Source = "Value",
								},
								LUTIn2 = Input {
									SourceOp = "ex_5_1LUTIn2",
									Source = "Value",
								},
								LUTIn3 = Input {
									SourceOp = "ex_5_1LUTIn3",
									Source = "Value",
								},
								LUTIn4 = Input {
									SourceOp = "ex_5_1LUTIn4",
									Source = "Value",
								},
								AlphaExpression = Input { Value = "if(r1<0.01125, 1.0, 0.0)", },
								Image1 = Input {
									SourceOp = "CustomTool1_1",
									Source = "Output",
								},
							},
							ViewInfo = OperatorInfo { Pos = { 530.915, 35.2436 } },
						},
						ex_1 = Custom {
							CtrlWShown = false,
							NameSet = true,
							Inputs = {
								LUTIn1 = Input {
									SourceOp = "ex_2_1LUTIn1",
									Source = "Value",
								},
								LUTIn2 = Input {
									SourceOp = "ex_2_1LUTIn2",
									Source = "Value",
								},
								LUTIn3 = Input {
									SourceOp = "ex_2_1LUTIn3",
									Source = "Value",
								},
								LUTIn4 = Input {
									SourceOp = "ex_2_1LUTIn4",
									Source = "Value",
								},
								AlphaExpression = Input { Value = "if(r1<0.09, 1.0, 0.0)", },
								Image1 = Input {
									SourceOp = "CustomTool1_1",
									Source = "Output",
								},
							},
							ViewInfo = OperatorInfo { Pos = { 532.915, -77.4833 } },
						},
						ColorGenerator1 = ofx.com.blackmagicdesign.openfx.ColorGeneratorPlugin {
							CtrlWShown = false,
							Inputs = {
								Source = Input {
									SourceOp = "CustomTool1_1",
									Source = "Output",
								},
								cColorRed = Input { Value = 0.572549019607843, },
								cColorGreen = Input { Value = 0.572549019607843, },
								cColorBlue = Input { Value = 0.572549019607843, },
								blendGroup = Input { Value = 0, },
								blendIn = Input { Value = 1, },
								blend = Input { Value = 0, },
								ignoreContentShape = Input { Value = 0, },
								legacyIsProcessRGBOnly = Input { Value = 0, },
								refreshTrigger = Input { Value = 1, },
								resolvefxVersion = Input { Value = "1.0", },
							},
							ViewInfo = OperatorInfo { Pos = { 437.584, -162.621 } },
						}
					},
				},
				ColorSpaceTransform2 = ofx.com.blackmagicdesign.resolvefx.ColorSpaceTransformV2 {
					Inputs = {
						Source = Input {
							SourceOp = "Merge7",
							Source = "Output",
						},
						colorSpaceTransformGroup = Input { Value = 1, },
						inputColorSpace = Input { Value = FuID { "REC709_COLORSPACE" }, },
						inputGamma = Input { Value = FuID { "SRGB_GAMMA" }, },
						outputColorSpace = Input { Value = FuID { "REC709_COLORSPACE" }, },
						outputGamma = Input { Value = FuID { "TWOPOINTFOUR_GAMMA" }, },
						isRec2390ScalingEnabled = Input { Value = 0, },
						toneMappingGroup = Input { Value = 1, },
						tmType = Input { Value = FuID { "TM_NONE" }, },
						isSrcLumMaxCustomEnabled = Input {
							Value = 0,
							Disabled = true,
						},
						srcLumMax = Input {
							Value = 100,
							Disabled = true,
						},
						isDstLumMaxCustomEnabled = Input {
							Value = 0,
							Disabled = true,
						},
						dstLumMax = Input {
							Value = 100,
							Disabled = true,
						},
						srcLumAvg = Input {
							Value = 9,
							Disabled = true,
						},
						satRolloffStart = Input { Value = 100, },
						satRolloffLimit = Input { Value = 10000, },
						gamutMappingGroup = Input { Value = 1, },
						gmType = Input { Value = FuID { "GM_NONE" }, },
						satKnee = Input {
							Value = 0.899999976158142,
							Disabled = true,
						},
						satMax = Input {
							Value = 1,
							Disabled = true,
						},
						advancedGroup = Input { Value = 1, },
						doFwdOOTF = Input { Value = 1, },
						doInvOOTF = Input { Value = 0, },
						doCAT = Input { Value = 0, },
						blendGroup = Input { Value = 0, },
						blendIn = Input { Value = 1, },
						blend = Input { Value = 0, },
						ignoreContentShape = Input { Value = 0, },
						legacyIsProcessRGBOnly = Input { Value = 0, },
						refreshTrigger = Input { Value = 1, },
						resolvefxVersion = Input { Value = "1.1", },
					},
					ViewInfo = OperatorInfo { Pos = { 583.75, 315.545 } },
				}
			},
			UserControls = ordered() {
				ISO = {
					LINKS_Name = "ISO",
					LINKID_DataType = "Number",
					INPID_InputControl = "SliderControl",
					INP_Default = 450,
					INP_Integer = true,
					INP_MinScale = 100,
					INP_MaxScale = 3200,
					INP_MinAllowed = 100,
					INP_MaxAllowed = 3200,
				},
				BaseISO = {
					LINKS_Name = "Base ISO",
					LINKID_DataType = "Number",
					INPID_InputControl = "SliderControl",
					INP_Default = 450,
					INP_Integer = true,
					INP_MinScale = 100,
					INP_MaxScale = 3200,
					INP_MinAllowed = 100,
					INP_MaxAllowed = 3200,
				}
			}
		},
		ex5_1LUTIn1 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 0, Blue = 0 },
			CtrlWZoom = false,
		},
		ex5_1LUTIn2 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 204, Blue = 0 },
			CtrlWZoom = false,
		},
		ex5_1LUTIn3 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 0, Blue = 204 },
			CtrlWZoom = false,
		},
		ex5_1LUTIn4 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 204, Blue = 204 },
			CtrlWZoom = false,
		},
		ex5LUTIn1 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 0, Blue = 0 },
			CtrlWZoom = false,
		},
		ex5LUTIn2 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 204, Blue = 0 },
			CtrlWZoom = false,
		},
		ex5LUTIn3 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 0, Blue = 204 },
			CtrlWZoom = false,
		},
		ex5LUTIn4 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 204, Blue = 204 },
			CtrlWZoom = false,
		},
		ex4LUTIn1 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 0, Blue = 0 },
			CtrlWZoom = false,
		},
		ex4LUTIn2 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 204, Blue = 0 },
			CtrlWZoom = false,
		},
		ex4LUTIn3 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 0, Blue = 204 },
			CtrlWZoom = false,
		},
		ex4LUTIn4 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 204, Blue = 204 },
			CtrlWZoom = false,
		},
		CustomTool3_1_1_1LUTIn1 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 0, Blue = 0 },
			CtrlWZoom = false,
		},
		CustomTool3_1_1_1LUTIn2 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 204, Blue = 0 },
			CtrlWZoom = false,
		},
		CustomTool3_1_1_1LUTIn3 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 0, Blue = 204 },
			CtrlWZoom = false,
		},
		CustomTool3_1_1_1LUTIn4 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 204, Blue = 204 },
			CtrlWZoom = false,
		},
		ex2LUTIn1 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 0, Blue = 0 },
			CtrlWZoom = false,
		},
		ex2LUTIn2 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 204, Blue = 0 },
			CtrlWZoom = false,
		},
		ex2LUTIn3 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 0, Blue = 204 },
			CtrlWZoom = false,
		},
		ex2LUTIn4 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 204, Blue = 204 },
			CtrlWZoom = false,
		},
		CustomTool1_1LUTIn1 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 0, Blue = 0 },
			CtrlWZoom = false,
		},
		CustomTool1_1LUTIn2 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 204, Blue = 0 },
			CtrlWZoom = false,
		},
		CustomTool1_1LUTIn3 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 0, Blue = 204 },
			CtrlWZoom = false,
		},
		CustomTool1_1LUTIn4 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 204, Blue = 204 },
			CtrlWZoom = false,
		},
		CustomTool3_1LUTIn1 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 0, Blue = 0 },
			CtrlWZoom = false,
		},
		CustomTool3_1LUTIn2 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 204, Blue = 0 },
			CtrlWZoom = false,
		},
		CustomTool3_1LUTIn3 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 0, Blue = 204 },
			CtrlWZoom = false,
		},
		CustomTool3_1LUTIn4 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 204, Blue = 204 },
			CtrlWZoom = false,
		},
		ex05LUTIn1 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 0, Blue = 0 },
			CtrlWZoom = false,
		},
		ex05LUTIn2 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 204, Blue = 0 },
			CtrlWZoom = false,
		},
		ex05LUTIn3 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 0, Blue = 204 },
			CtrlWZoom = false,
		},
		ex05LUTIn4 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 204, Blue = 204 },
			CtrlWZoom = false,
		},
		ex18_1LUTIn1 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 0, Blue = 0 },
			CtrlWZoom = false,
		},
		ex18_1LUTIn2 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 204, Blue = 0 },
			CtrlWZoom = false,
		},
		ex18_1LUTIn3 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 0, Blue = 204 },
			CtrlWZoom = false,
		},
		ex18_1LUTIn4 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 204, Blue = 204 },
			CtrlWZoom = false,
		},
		ex_1_1LUTIn1 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 0, Blue = 0 },
			CtrlWZoom = false,
		},
		ex_1_1LUTIn2 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 204, Blue = 0 },
			CtrlWZoom = false,
		},
		ex_1_1LUTIn3 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 0, Blue = 204 },
			CtrlWZoom = false,
		},
		ex_1_1LUTIn4 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 204, Blue = 204 },
			CtrlWZoom = false,
		},
		ex_6_1LUTIn1 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 0, Blue = 0 },
			CtrlWZoom = false,
		},
		ex_6_1LUTIn2 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 204, Blue = 0 },
			CtrlWZoom = false,
		},
		ex_6_1LUTIn3 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 0, Blue = 204 },
			CtrlWZoom = false,
		},
		ex_6_1LUTIn4 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 204, Blue = 204 },
			CtrlWZoom = false,
		},
		ex_3_1LUTIn1 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 0, Blue = 0 },
			CtrlWZoom = false,
		},
		ex_3_1LUTIn2 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 204, Blue = 0 },
			CtrlWZoom = false,
		},
		ex_3_1LUTIn3 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 0, Blue = 204 },
			CtrlWZoom = false,
		},
		ex_3_1LUTIn4 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 204, Blue = 204 },
			CtrlWZoom = false,
		},
		ex_3LUTIn1 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 0, Blue = 0 },
			CtrlWZoom = false,
		},
		ex_3LUTIn2 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 204, Blue = 0 },
			CtrlWZoom = false,
		},
		ex_3LUTIn3 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 0, Blue = 204 },
			CtrlWZoom = false,
		},
		ex_3LUTIn4 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 204, Blue = 204 },
			CtrlWZoom = false,
		},
		ex_5_1LUTIn1 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 0, Blue = 0 },
			CtrlWZoom = false,
		},
		ex_5_1LUTIn2 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 204, Blue = 0 },
			CtrlWZoom = false,
		},
		ex_5_1LUTIn3 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 0, Blue = 204 },
			CtrlWZoom = false,
		},
		ex_5_1LUTIn4 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 204, Blue = 204 },
			CtrlWZoom = false,
		},
		ex_2_1LUTIn1 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 0, Blue = 0 },
			CtrlWZoom = false,
		},
		ex_2_1LUTIn2 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 204, Blue = 0 },
			CtrlWZoom = false,
		},
		ex_2_1LUTIn3 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 0, Green = 0, Blue = 204 },
			CtrlWZoom = false,
		},
		ex_2_1LUTIn4 = LUTBezier {
			KeyColorSplines = {
				[0] = {
					[0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true } },
					[1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true } }
				}
			},
			SplineColor = { Red = 204, Green = 204, Blue = 204 },
			CtrlWZoom = false,
		}
	},
	ActiveTool = "ELZone"
}