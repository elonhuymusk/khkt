.class public final Lorg/tensorflow/lite/schema/BuiltinOptions;
.super Ljava/lang/Object;
.source "BuiltinOptions.java"


# static fields
.field public static final AbsOptions:B = 0x4et

.field public static final AddNOptions:B = 0x52t

.field public static final AddOptions:B = 0xbt

.field public static final ArgMaxOptions:B = 0x28t

.field public static final ArgMinOptions:B = 0x39t

.field public static final BatchMatMulOptions:B = 0x65t

.field public static final BatchToSpaceNDOptions:B = 0x18t

.field public static final BidirectionalSequenceLSTMOptions:B = 0x45t

.field public static final BidirectionalSequenceRNNOptions:B = 0x46t

.field public static final CallOptions:B = 0x10t

.field public static final CastOptions:B = 0x25t

.field public static final ConcatEmbeddingsOptions:B = 0x3t

.field public static final ConcatenationOptions:B = 0xat

.field public static final Conv2DOptions:B = 0x1t

.field public static final CosOptions:B = 0x54t

.field public static final CumsumOptions:B = 0x66t

.field public static final DensifyOptions:B = 0x63t

.field public static final DepthToSpaceOptions:B = 0x5et

.field public static final DepthwiseConv2DOptions:B = 0x2t

.field public static final DequantizeOptions:B = 0x26t

.field public static final DivOptions:B = 0x1dt

.field public static final EmbeddingLookupSparseOptions:B = 0x14t

.field public static final EqualOptions:B = 0x35t

.field public static final ExpOptions:B = 0x21t

.field public static final ExpandDimsOptions:B = 0x34t

.field public static final FakeQuantOptions:B = 0x3at

.field public static final FillOptions:B = 0x44t

.field public static final FloorDivOptions:B = 0x41t

.field public static final FloorModOptions:B = 0x48t

.field public static final FullyConnectedOptions:B = 0x8t

.field public static final GatherNdOptions:B = 0x53t

.field public static final GatherOptions:B = 0x17t

.field public static final GreaterEqualOptions:B = 0x2dt

.field public static final GreaterOptions:B = 0x2ct

.field public static final HardSwishOptions:B = 0x5bt

.field public static final IfOptions:B = 0x5ct

.field public static final L2NormOptions:B = 0xct

.field public static final LSHProjectionOptions:B = 0x4t

.field public static final LSTMOptions:B = 0xet

.field public static final LeakyReluOptions:B = 0x4bt

.field public static final LessEqualOptions:B = 0x2et

.field public static final LessOptions:B = 0x29t

.field public static final LocalResponseNormalizationOptions:B = 0xdt

.field public static final LogSoftmaxOptions:B = 0x24t

.field public static final LogicalAndOptions:B = 0x3et

.field public static final LogicalNotOptions:B = 0x3ft

.field public static final LogicalOrOptions:B = 0x3ct

.field public static final MatrixDiagOptions:B = 0x58t

.field public static final MatrixSetDiagOptions:B = 0x5at

.field public static final MaximumMinimumOptions:B = 0x27t

.field public static final MirrorPadOptions:B = 0x4dt

.field public static final MulOptions:B = 0x15t

.field public static final NONE:B = 0x0t

.field public static final NegOptions:B = 0x2at

.field public static final NonMaxSuppressionV4Options:B = 0x5ft

.field public static final NonMaxSuppressionV5Options:B = 0x60t

.field public static final NotEqualOptions:B = 0x36t

.field public static final OneHotOptions:B = 0x3dt

.field public static final PackOptions:B = 0x3bt

.field public static final PadOptions:B = 0x16t

.field public static final PadV2Options:B = 0x2bt

.field public static final Pool2DOptions:B = 0x5t

.field public static final PowOptions:B = 0x38t

.field public static final QuantizeOptions:B = 0x59t

.field public static final RNNOptions:B = 0x7t

.field public static final RangeOptions:B = 0x49t

.field public static final RankOptions:B = 0x56t

.field public static final ReducerOptions:B = 0x1bt

.field public static final ReshapeOptions:B = 0x11t

.field public static final ResizeBilinearOptions:B = 0xft

.field public static final ResizeNearestNeighborOptions:B = 0x4at

.field public static final ReverseSequenceOptions:B = 0x57t

.field public static final ReverseV2Options:B = 0x51t

.field public static final SVDFOptions:B = 0x6t

.field public static final ScatterNdOptions:B = 0x61t

.field public static final SegmentSumOptions:B = 0x64t

.field public static final SelectOptions:B = 0x2ft

.field public static final SelectV2Options:B = 0x62t

.field public static final SequenceRNNOptions:B = 0x1ft

.field public static final ShapeOptions:B = 0x37t

.field public static final SkipGramOptions:B = 0x12t

.field public static final SliceOptions:B = 0x30t

.field public static final SoftmaxOptions:B = 0x9t

.field public static final SpaceToBatchNDOptions:B = 0x19t

.field public static final SpaceToDepthOptions:B = 0x13t

.field public static final SparseToDenseOptions:B = 0x32t

.field public static final SplitOptions:B = 0x23t

.field public static final SplitVOptions:B = 0x4ft

.field public static final SquareOptions:B = 0x42t

.field public static final SquaredDifferenceOptions:B = 0x4ct

.field public static final SqueezeOptions:B = 0x1et

.field public static final StridedSliceOptions:B = 0x20t

.field public static final SubOptions:B = 0x1ct

.field public static final TileOptions:B = 0x33t

.field public static final TopKV2Options:B = 0x22t

.field public static final TransposeConvOptions:B = 0x31t

.field public static final TransposeOptions:B = 0x1at

.field public static final UnidirectionalSequenceLSTMOptions:B = 0x47t

.field public static final UniqueOptions:B = 0x50t

.field public static final UnpackOptions:B = 0x40t

.field public static final WhereOptions:B = 0x55t

.field public static final WhileOptions:B = 0x5dt

.field public static final ZerosLikeOptions:B = 0x43t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 103

    .line 111
    const-string v0, "NONE"

    const-string v1, "Conv2DOptions"

    const-string v2, "DepthwiseConv2DOptions"

    const-string v3, "ConcatEmbeddingsOptions"

    const-string v4, "LSHProjectionOptions"

    const-string v5, "Pool2DOptions"

    const-string v6, "SVDFOptions"

    const-string v7, "RNNOptions"

    const-string v8, "FullyConnectedOptions"

    const-string v9, "SoftmaxOptions"

    const-string v10, "ConcatenationOptions"

    const-string v11, "AddOptions"

    const-string v12, "L2NormOptions"

    const-string v13, "LocalResponseNormalizationOptions"

    const-string v14, "LSTMOptions"

    const-string v15, "ResizeBilinearOptions"

    const-string v16, "CallOptions"

    const-string v17, "ReshapeOptions"

    const-string v18, "SkipGramOptions"

    const-string v19, "SpaceToDepthOptions"

    const-string v20, "EmbeddingLookupSparseOptions"

    const-string v21, "MulOptions"

    const-string v22, "PadOptions"

    const-string v23, "GatherOptions"

    const-string v24, "BatchToSpaceNDOptions"

    const-string v25, "SpaceToBatchNDOptions"

    const-string v26, "TransposeOptions"

    const-string v27, "ReducerOptions"

    const-string v28, "SubOptions"

    const-string v29, "DivOptions"

    const-string v30, "SqueezeOptions"

    const-string v31, "SequenceRNNOptions"

    const-string v32, "StridedSliceOptions"

    const-string v33, "ExpOptions"

    const-string v34, "TopKV2Options"

    const-string v35, "SplitOptions"

    const-string v36, "LogSoftmaxOptions"

    const-string v37, "CastOptions"

    const-string v38, "DequantizeOptions"

    const-string v39, "MaximumMinimumOptions"

    const-string v40, "ArgMaxOptions"

    const-string v41, "LessOptions"

    const-string v42, "NegOptions"

    const-string v43, "PadV2Options"

    const-string v44, "GreaterOptions"

    const-string v45, "GreaterEqualOptions"

    const-string v46, "LessEqualOptions"

    const-string v47, "SelectOptions"

    const-string v48, "SliceOptions"

    const-string v49, "TransposeConvOptions"

    const-string v50, "SparseToDenseOptions"

    const-string v51, "TileOptions"

    const-string v52, "ExpandDimsOptions"

    const-string v53, "EqualOptions"

    const-string v54, "NotEqualOptions"

    const-string v55, "ShapeOptions"

    const-string v56, "PowOptions"

    const-string v57, "ArgMinOptions"

    const-string v58, "FakeQuantOptions"

    const-string v59, "PackOptions"

    const-string v60, "LogicalOrOptions"

    const-string v61, "OneHotOptions"

    const-string v62, "LogicalAndOptions"

    const-string v63, "LogicalNotOptions"

    const-string v64, "UnpackOptions"

    const-string v65, "FloorDivOptions"

    const-string v66, "SquareOptions"

    const-string v67, "ZerosLikeOptions"

    const-string v68, "FillOptions"

    const-string v69, "BidirectionalSequenceLSTMOptions"

    const-string v70, "BidirectionalSequenceRNNOptions"

    const-string v71, "UnidirectionalSequenceLSTMOptions"

    const-string v72, "FloorModOptions"

    const-string v73, "RangeOptions"

    const-string v74, "ResizeNearestNeighborOptions"

    const-string v75, "LeakyReluOptions"

    const-string v76, "SquaredDifferenceOptions"

    const-string v77, "MirrorPadOptions"

    const-string v78, "AbsOptions"

    const-string v79, "SplitVOptions"

    const-string v80, "UniqueOptions"

    const-string v81, "ReverseV2Options"

    const-string v82, "AddNOptions"

    const-string v83, "GatherNdOptions"

    const-string v84, "CosOptions"

    const-string v85, "WhereOptions"

    const-string v86, "RankOptions"

    const-string v87, "ReverseSequenceOptions"

    const-string v88, "MatrixDiagOptions"

    const-string v89, "QuantizeOptions"

    const-string v90, "MatrixSetDiagOptions"

    const-string v91, "HardSwishOptions"

    const-string v92, "IfOptions"

    const-string v93, "WhileOptions"

    const-string v94, "DepthToSpaceOptions"

    const-string v95, "NonMaxSuppressionV4Options"

    const-string v96, "NonMaxSuppressionV5Options"

    const-string v97, "ScatterNdOptions"

    const-string v98, "SelectV2Options"

    const-string v99, "DensifyOptions"

    const-string v100, "SegmentSumOptions"

    const-string v101, "BatchMatMulOptions"

    const-string v102, "CumsumOptions"

    filled-new-array/range {v0 .. v102}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/lite/schema/BuiltinOptions;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .registers 2
    .param p0, "e"    # I

    .line 113
    sget-object v0, Lorg/tensorflow/lite/schema/BuiltinOptions;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
