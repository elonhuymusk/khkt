.class public final Lorg/tensorflow/lite/schema/BuiltinOperator;
.super Ljava/lang/Object;
.source "BuiltinOperator.java"


# static fields
.field public static final ABS:I = 0x65

.field public static final ADD:I = 0x0

.field public static final ADD_N:I = 0x6a

.field public static final ARG_MAX:I = 0x38

.field public static final ARG_MIN:I = 0x4f

.field public static final AVERAGE_POOL_2D:I = 0x1

.field public static final BATCH_MATMUL:I = 0x7e

.field public static final BATCH_TO_SPACE_ND:I = 0x25

.field public static final BIDIRECTIONAL_SEQUENCE_LSTM:I = 0x34

.field public static final BIDIRECTIONAL_SEQUENCE_RNN:I = 0x2e

.field public static final CALL:I = 0x1f

.field public static final CAST:I = 0x35

.field public static final CEIL:I = 0x68

.field public static final CONCATENATION:I = 0x2

.field public static final CONCAT_EMBEDDINGS:I = 0x1d

.field public static final CONV_2D:I = 0x3

.field public static final COS:I = 0x6c

.field public static final CUMSUM:I = 0x80

.field public static final CUSTOM:I = 0x20

.field public static final DELEGATE:I = 0x33

.field public static final DENSIFY:I = 0x7c

.field public static final DEPTHWISE_CONV_2D:I = 0x4

.field public static final DEPTH_TO_SPACE:I = 0x5

.field public static final DEQUANTIZE:I = 0x6

.field public static final DIV:I = 0x2a

.field public static final ELU:I = 0x6f

.field public static final EMBEDDING_LOOKUP:I = 0x7

.field public static final EMBEDDING_LOOKUP_SPARSE:I = 0x21

.field public static final EQUAL:I = 0x47

.field public static final EXP:I = 0x2f

.field public static final EXPAND_DIMS:I = 0x46

.field public static final FAKE_QUANT:I = 0x50

.field public static final FILL:I = 0x5e

.field public static final FLOOR:I = 0x8

.field public static final FLOOR_DIV:I = 0x5a

.field public static final FLOOR_MOD:I = 0x5f

.field public static final FULLY_CONNECTED:I = 0x9

.field public static final GATHER:I = 0x24

.field public static final GATHER_ND:I = 0x6b

.field public static final GREATER:I = 0x3d

.field public static final GREATER_EQUAL:I = 0x3e

.field public static final HARD_SWISH:I = 0x75

.field public static final HASHTABLE_LOOKUP:I = 0xa

.field public static final IF:I = 0x76

.field public static final L2_NORMALIZATION:I = 0xb

.field public static final L2_POOL_2D:I = 0xc

.field public static final LEAKY_RELU:I = 0x62

.field public static final LESS:I = 0x3a

.field public static final LESS_EQUAL:I = 0x3f

.field public static final LOCAL_RESPONSE_NORMALIZATION:I = 0xd

.field public static final LOG:I = 0x49

.field public static final LOGICAL_AND:I = 0x56

.field public static final LOGICAL_NOT:I = 0x57

.field public static final LOGICAL_OR:I = 0x54

.field public static final LOGISTIC:I = 0xe

.field public static final LOG_SOFTMAX:I = 0x32

.field public static final LSH_PROJECTION:I = 0xf

.field public static final LSTM:I = 0x10

.field public static final MATRIX_DIAG:I = 0x71

.field public static final MATRIX_SET_DIAG:I = 0x73

.field public static final MAXIMUM:I = 0x37

.field public static final MAX_POOL_2D:I = 0x11

.field public static final MEAN:I = 0x28

.field public static final MINIMUM:I = 0x39

.field public static final MIRROR_PAD:I = 0x64

.field public static final MUL:I = 0x12

.field public static final NEG:I = 0x3b

.field public static final NON_MAX_SUPPRESSION_V4:I = 0x78

.field public static final NON_MAX_SUPPRESSION_V5:I = 0x79

.field public static final NOT_EQUAL:I = 0x48

.field public static final ONE_HOT:I = 0x55

.field public static final PACK:I = 0x53

.field public static final PAD:I = 0x22

.field public static final PADV2:I = 0x3c

.field public static final PLACEHOLDER_FOR_GREATER_OP_CODES:I = 0x7f

.field public static final POW:I = 0x4e

.field public static final PRELU:I = 0x36

.field public static final QUANTIZE:I = 0x72

.field public static final RANGE:I = 0x60

.field public static final RANK:I = 0x6e

.field public static final REDUCE_ANY:I = 0x5b

.field public static final REDUCE_MAX:I = 0x52

.field public static final REDUCE_MIN:I = 0x59

.field public static final REDUCE_PROD:I = 0x51

.field public static final RELU:I = 0x13

.field public static final RELU6:I = 0x15

.field public static final RELU_N1_TO_1:I = 0x14

.field public static final RESHAPE:I = 0x16

.field public static final RESIZE_BILINEAR:I = 0x17

.field public static final RESIZE_NEAREST_NEIGHBOR:I = 0x61

.field public static final REVERSE_SEQUENCE:I = 0x70

.field public static final REVERSE_V2:I = 0x69

.field public static final RNN:I = 0x18

.field public static final ROUND:I = 0x74

.field public static final RSQRT:I = 0x4c

.field public static final SCATTER_ND:I = 0x7a

.field public static final SEGMENT_SUM:I = 0x7d

.field public static final SELECT:I = 0x40

.field public static final SELECT_V2:I = 0x7b

.field public static final SHAPE:I = 0x4d

.field public static final SIN:I = 0x42

.field public static final SKIP_GRAM:I = 0x1e

.field public static final SLICE:I = 0x41

.field public static final SOFTMAX:I = 0x19

.field public static final SPACE_TO_BATCH_ND:I = 0x26

.field public static final SPACE_TO_DEPTH:I = 0x1a

.field public static final SPARSE_TO_DENSE:I = 0x44

.field public static final SPLIT:I = 0x31

.field public static final SPLIT_V:I = 0x66

.field public static final SQRT:I = 0x4b

.field public static final SQUARE:I = 0x5c

.field public static final SQUARED_DIFFERENCE:I = 0x63

.field public static final SQUEEZE:I = 0x2b

.field public static final STRIDED_SLICE:I = 0x2d

.field public static final SUB:I = 0x29

.field public static final SUM:I = 0x4a

.field public static final SVDF:I = 0x1b

.field public static final TANH:I = 0x1c

.field public static final TILE:I = 0x45

.field public static final TOPK_V2:I = 0x30

.field public static final TRANSPOSE:I = 0x27

.field public static final TRANSPOSE_CONV:I = 0x43

.field public static final UNIDIRECTIONAL_SEQUENCE_LSTM:I = 0x2c

.field public static final UNIDIRECTIONAL_SEQUENCE_RNN:I = 0x23

.field public static final UNIQUE:I = 0x67

.field public static final UNPACK:I = 0x58

.field public static final WHERE:I = 0x6d

.field public static final WHILE:I = 0x77

.field public static final ZEROS_LIKE:I = 0x5d

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 129

    .line 137
    const-string v0, "ADD"

    const-string v1, "AVERAGE_POOL_2D"

    const-string v2, "CONCATENATION"

    const-string v3, "CONV_2D"

    const-string v4, "DEPTHWISE_CONV_2D"

    const-string v5, "DEPTH_TO_SPACE"

    const-string v6, "DEQUANTIZE"

    const-string v7, "EMBEDDING_LOOKUP"

    const-string v8, "FLOOR"

    const-string v9, "FULLY_CONNECTED"

    const-string v10, "HASHTABLE_LOOKUP"

    const-string v11, "L2_NORMALIZATION"

    const-string v12, "L2_POOL_2D"

    const-string v13, "LOCAL_RESPONSE_NORMALIZATION"

    const-string v14, "LOGISTIC"

    const-string v15, "LSH_PROJECTION"

    const-string v16, "LSTM"

    const-string v17, "MAX_POOL_2D"

    const-string v18, "MUL"

    const-string v19, "RELU"

    const-string v20, "RELU_N1_TO_1"

    const-string v21, "RELU6"

    const-string v22, "RESHAPE"

    const-string v23, "RESIZE_BILINEAR"

    const-string v24, "RNN"

    const-string v25, "SOFTMAX"

    const-string v26, "SPACE_TO_DEPTH"

    const-string v27, "SVDF"

    const-string v28, "TANH"

    const-string v29, "CONCAT_EMBEDDINGS"

    const-string v30, "SKIP_GRAM"

    const-string v31, "CALL"

    const-string v32, "CUSTOM"

    const-string v33, "EMBEDDING_LOOKUP_SPARSE"

    const-string v34, "PAD"

    const-string v35, "UNIDIRECTIONAL_SEQUENCE_RNN"

    const-string v36, "GATHER"

    const-string v37, "BATCH_TO_SPACE_ND"

    const-string v38, "SPACE_TO_BATCH_ND"

    const-string v39, "TRANSPOSE"

    const-string v40, "MEAN"

    const-string v41, "SUB"

    const-string v42, "DIV"

    const-string v43, "SQUEEZE"

    const-string v44, "UNIDIRECTIONAL_SEQUENCE_LSTM"

    const-string v45, "STRIDED_SLICE"

    const-string v46, "BIDIRECTIONAL_SEQUENCE_RNN"

    const-string v47, "EXP"

    const-string v48, "TOPK_V2"

    const-string v49, "SPLIT"

    const-string v50, "LOG_SOFTMAX"

    const-string v51, "DELEGATE"

    const-string v52, "BIDIRECTIONAL_SEQUENCE_LSTM"

    const-string v53, "CAST"

    const-string v54, "PRELU"

    const-string v55, "MAXIMUM"

    const-string v56, "ARG_MAX"

    const-string v57, "MINIMUM"

    const-string v58, "LESS"

    const-string v59, "NEG"

    const-string v60, "PADV2"

    const-string v61, "GREATER"

    const-string v62, "GREATER_EQUAL"

    const-string v63, "LESS_EQUAL"

    const-string v64, "SELECT"

    const-string v65, "SLICE"

    const-string v66, "SIN"

    const-string v67, "TRANSPOSE_CONV"

    const-string v68, "SPARSE_TO_DENSE"

    const-string v69, "TILE"

    const-string v70, "EXPAND_DIMS"

    const-string v71, "EQUAL"

    const-string v72, "NOT_EQUAL"

    const-string v73, "LOG"

    const-string v74, "SUM"

    const-string v75, "SQRT"

    const-string v76, "RSQRT"

    const-string v77, "SHAPE"

    const-string v78, "POW"

    const-string v79, "ARG_MIN"

    const-string v80, "FAKE_QUANT"

    const-string v81, "REDUCE_PROD"

    const-string v82, "REDUCE_MAX"

    const-string v83, "PACK"

    const-string v84, "LOGICAL_OR"

    const-string v85, "ONE_HOT"

    const-string v86, "LOGICAL_AND"

    const-string v87, "LOGICAL_NOT"

    const-string v88, "UNPACK"

    const-string v89, "REDUCE_MIN"

    const-string v90, "FLOOR_DIV"

    const-string v91, "REDUCE_ANY"

    const-string v92, "SQUARE"

    const-string v93, "ZEROS_LIKE"

    const-string v94, "FILL"

    const-string v95, "FLOOR_MOD"

    const-string v96, "RANGE"

    const-string v97, "RESIZE_NEAREST_NEIGHBOR"

    const-string v98, "LEAKY_RELU"

    const-string v99, "SQUARED_DIFFERENCE"

    const-string v100, "MIRROR_PAD"

    const-string v101, "ABS"

    const-string v102, "SPLIT_V"

    const-string v103, "UNIQUE"

    const-string v104, "CEIL"

    const-string v105, "REVERSE_V2"

    const-string v106, "ADD_N"

    const-string v107, "GATHER_ND"

    const-string v108, "COS"

    const-string v109, "WHERE"

    const-string v110, "RANK"

    const-string v111, "ELU"

    const-string v112, "REVERSE_SEQUENCE"

    const-string v113, "MATRIX_DIAG"

    const-string v114, "QUANTIZE"

    const-string v115, "MATRIX_SET_DIAG"

    const-string v116, "ROUND"

    const-string v117, "HARD_SWISH"

    const-string v118, "IF"

    const-string v119, "WHILE"

    const-string v120, "NON_MAX_SUPPRESSION_V4"

    const-string v121, "NON_MAX_SUPPRESSION_V5"

    const-string v122, "SCATTER_ND"

    const-string v123, "SELECT_V2"

    const-string v124, "DENSIFY"

    const-string v125, "SEGMENT_SUM"

    const-string v126, "BATCH_MATMUL"

    const-string v127, "PLACEHOLDER_FOR_GREATER_OP_CODES"

    const-string v128, "CUMSUM"

    filled-new-array/range {v0 .. v128}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/lite/schema/BuiltinOperator;->names:[Ljava/lang/String;

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

    .line 139
    sget-object v0, Lorg/tensorflow/lite/schema/BuiltinOperator;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
