.class public final Lorg/tensorflow/lite/schema/Operator;
.super Lcom/google/flatbuffers/Table;
.source "Operator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/schema/Operator$Vector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static ValidateVersion()V
    .registers 0

    .line 12
    invoke-static {}, Lcom/google/flatbuffers/Constants;->FLATBUFFERS_1_12_0()V

    return-void
.end method

.method static synthetic access$000(ILjava/nio/ByteBuffer;)I
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/nio/ByteBuffer;

    .line 11
    invoke-static {p0, p1}, Lorg/tensorflow/lite/schema/Operator;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addBuiltinOptions(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "builtinOptionsOffset"    # I

    .line 85
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addBuiltinOptionsType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "builtinOptionsType"    # B

    .line 84
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static addCustomOptions(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "customOptionsOffset"    # I

    .line 86
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addCustomOptionsFormat(Lcom/google/flatbuffers/FlatBufferBuilder;B)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "customOptionsFormat"    # B

    .line 90
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static addInputs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "inputsOffset"    # I

    .line 78
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addIntermediates(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "intermediatesOffset"    # I

    .line 94
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addMutatingVariableInputs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "mutatingVariableInputsOffset"    # I

    .line 91
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addOpcodeIndex(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .registers 5
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "opcodeIndex"    # J

    .line 77
    long-to-int v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addOutputs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "outputsOffset"    # I

    .line 81
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createCustomOptionsVector(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/nio/ByteBuffer;)I
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createByteVector(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static createCustomOptionsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[B)I
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [B

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createByteVector([B)I

    move-result v0

    return v0
.end method

.method public static createInputsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 79
    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_12

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .end local v0    # "i":I
    :cond_12
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public static createIntermediatesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 95
    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_12

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .end local v0    # "i":I
    :cond_12
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public static createMutatingVariableInputsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[Z)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [Z

    .line 92
    array-length v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    if-ltz v0, :cond_11

    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addBoolean(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .end local v0    # "i":I
    :cond_11
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public static createOperator(Lcom/google/flatbuffers/FlatBufferBuilder;JIIBIIBII)I
    .registers 12
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "opcode_index"    # J
    .param p3, "inputsOffset"    # I
    .param p4, "outputsOffset"    # I
    .param p5, "builtin_options_type"    # B
    .param p6, "builtin_optionsOffset"    # I
    .param p7, "custom_optionsOffset"    # I
    .param p8, "custom_options_format"    # B
    .param p9, "mutating_variable_inputsOffset"    # I
    .param p10, "intermediatesOffset"    # I

    .line 63
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 64
    invoke-static {p0, p10}, Lorg/tensorflow/lite/schema/Operator;->addIntermediates(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 65
    invoke-static {p0, p9}, Lorg/tensorflow/lite/schema/Operator;->addMutatingVariableInputs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 66
    invoke-static {p0, p7}, Lorg/tensorflow/lite/schema/Operator;->addCustomOptions(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 67
    invoke-static {p0, p6}, Lorg/tensorflow/lite/schema/Operator;->addBuiltinOptions(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 68
    invoke-static {p0, p4}, Lorg/tensorflow/lite/schema/Operator;->addOutputs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 69
    invoke-static {p0, p3}, Lorg/tensorflow/lite/schema/Operator;->addInputs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 70
    invoke-static {p0, p1, p2}, Lorg/tensorflow/lite/schema/Operator;->addOpcodeIndex(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 71
    invoke-static {p0, p8}, Lorg/tensorflow/lite/schema/Operator;->addCustomOptionsFormat(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 72
    invoke-static {p0, p5}, Lorg/tensorflow/lite/schema/Operator;->addBuiltinOptionsType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 73
    invoke-static {p0}, Lorg/tensorflow/lite/schema/Operator;->endOperator(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static createOutputsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 82
    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_12

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .end local v0    # "i":I
    :cond_12
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public static endOperator(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 98
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 99
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsOperator(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/Operator;
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lorg/tensorflow/lite/schema/Operator;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/Operator;-><init>()V

    invoke-static {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->getRootAsOperator(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/Operator;)Lorg/tensorflow/lite/schema/Operator;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsOperator(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/Operator;)Lorg/tensorflow/lite/schema/Operator;
    .registers 4
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/Operator;

    .line 14
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Lorg/tensorflow/lite/schema/Operator;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/Operator;

    move-result-object v0

    return-object v0
.end method

.method public static startCustomOptionsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startInputsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 80
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startIntermediatesVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 96
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startMutatingVariableInputsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startOperator(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 76
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method

.method public static startOutputsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 83
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/Operator;
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/Operator;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/Operator;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public builtinOptions(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;
    .registers 4
    .param p1, "obj"    # Lcom/google/flatbuffers/Table;

    .line 32
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_10

    iget v1, p0, Lorg/tensorflow/lite/schema/Operator;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/tensorflow/lite/schema/Operator;->__union(Lcom/google/flatbuffers/Table;I)Lcom/google/flatbuffers/Table;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method

.method public builtinOptionsType()B
    .registers 4

    .line 31
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_12

    iget-object v1, p0, Lorg/tensorflow/lite/schema/Operator;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/schema/Operator;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public customOptions(I)I
    .registers 6
    .param p1, "j"    # I

    .line 33
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_18

    iget-object v1, p0, Lorg/tensorflow/lite/schema/Operator;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__vector(I)I

    move-result v2

    mul-int/lit8 v3, p1, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public customOptionsAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 37
    const/16 v0, 0xe

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/schema/Operator;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public customOptionsFormat()B
    .registers 4

    .line 39
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_12

    iget-object v1, p0, Lorg/tensorflow/lite/schema/Operator;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/schema/Operator;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public customOptionsInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 38
    const/16 v0, 0xe

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/schema/Operator;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public customOptionsLength()I
    .registers 3

    .line 34
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public customOptionsVector()Lcom/google/flatbuffers/ByteVector;
    .registers 2

    .line 35
    new-instance v0, Lcom/google/flatbuffers/ByteVector;

    invoke-direct {v0}, Lcom/google/flatbuffers/ByteVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->customOptionsVector(Lcom/google/flatbuffers/ByteVector;)Lcom/google/flatbuffers/ByteVector;

    move-result-object v0

    return-object v0
.end method

.method public customOptionsVector(Lcom/google/flatbuffers/ByteVector;)Lcom/google/flatbuffers/ByteVector;
    .registers 5
    .param p1, "obj"    # Lcom/google/flatbuffers/ByteVector;

    .line 36
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/Operator;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/google/flatbuffers/ByteVector;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/ByteVector;

    move-result-object v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return-object v1
.end method

.method public inputs(I)I
    .registers 6
    .param p1, "j"    # I

    .line 19
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_15

    iget-object v1, p0, Lorg/tensorflow/lite/schema/Operator;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__vector(I)I

    move-result v2

    mul-int/lit8 v3, p1, 0x4

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public inputsAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 23
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/schema/Operator;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public inputsInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 24
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/schema/Operator;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public inputsLength()I
    .registers 3

    .line 20
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__vector_len(I)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public inputsVector()Lcom/google/flatbuffers/IntVector;
    .registers 2

    .line 21
    new-instance v0, Lcom/google/flatbuffers/IntVector;

    invoke-direct {v0}, Lcom/google/flatbuffers/IntVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->inputsVector(Lcom/google/flatbuffers/IntVector;)Lcom/google/flatbuffers/IntVector;

    move-result-object v0

    return-object v0
.end method

.method public inputsVector(Lcom/google/flatbuffers/IntVector;)Lcom/google/flatbuffers/IntVector;
    .registers 5
    .param p1, "obj"    # Lcom/google/flatbuffers/IntVector;

    .line 22
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/Operator;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/google/flatbuffers/IntVector;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/IntVector;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return-object v1
.end method

.method public intermediates(I)I
    .registers 6
    .param p1, "j"    # I

    .line 46
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_16

    iget-object v1, p0, Lorg/tensorflow/lite/schema/Operator;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__vector(I)I

    move-result v2

    mul-int/lit8 v3, p1, 0x4

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public intermediatesAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 50
    const/16 v0, 0x14

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/schema/Operator;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public intermediatesInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 51
    const/16 v0, 0x14

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/schema/Operator;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public intermediatesLength()I
    .registers 3

    .line 47
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public intermediatesVector()Lcom/google/flatbuffers/IntVector;
    .registers 2

    .line 48
    new-instance v0, Lcom/google/flatbuffers/IntVector;

    invoke-direct {v0}, Lcom/google/flatbuffers/IntVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->intermediatesVector(Lcom/google/flatbuffers/IntVector;)Lcom/google/flatbuffers/IntVector;

    move-result-object v0

    return-object v0
.end method

.method public intermediatesVector(Lcom/google/flatbuffers/IntVector;)Lcom/google/flatbuffers/IntVector;
    .registers 5
    .param p1, "obj"    # Lcom/google/flatbuffers/IntVector;

    .line 49
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/Operator;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/google/flatbuffers/IntVector;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/IntVector;

    move-result-object v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return-object v1
.end method

.method public mutatingVariableInputs(I)Z
    .registers 7
    .param p1, "j"    # I

    .line 40
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v2, p0, Lorg/tensorflow/lite/schema/Operator;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__vector(I)I

    move-result v3

    mul-int/lit8 v4, p1, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public mutatingVariableInputsAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 44
    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/schema/Operator;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public mutatingVariableInputsInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 45
    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/schema/Operator;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public mutatingVariableInputsLength()I
    .registers 3

    .line 41
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public mutatingVariableInputsVector()Lcom/google/flatbuffers/BooleanVector;
    .registers 2

    .line 42
    new-instance v0, Lcom/google/flatbuffers/BooleanVector;

    invoke-direct {v0}, Lcom/google/flatbuffers/BooleanVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->mutatingVariableInputsVector(Lcom/google/flatbuffers/BooleanVector;)Lcom/google/flatbuffers/BooleanVector;

    move-result-object v0

    return-object v0
.end method

.method public mutatingVariableInputsVector(Lcom/google/flatbuffers/BooleanVector;)Lcom/google/flatbuffers/BooleanVector;
    .registers 5
    .param p1, "obj"    # Lcom/google/flatbuffers/BooleanVector;

    .line 43
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/Operator;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/google/flatbuffers/BooleanVector;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/BooleanVector;

    move-result-object v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return-object v1
.end method

.method public opcodeIndex()J
    .registers 6

    .line 18
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_18

    iget-object v1, p0, Lorg/tensorflow/lite/schema/Operator;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/schema/Operator;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    goto :goto_1a

    :cond_18
    const-wide/16 v1, 0x0

    :goto_1a
    return-wide v1
.end method

.method public outputs(I)I
    .registers 6
    .param p1, "j"    # I

    .line 25
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_16

    iget-object v1, p0, Lorg/tensorflow/lite/schema/Operator;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__vector(I)I

    move-result v2

    mul-int/lit8 v3, p1, 0x4

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public outputsAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 29
    const/16 v0, 0x8

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/schema/Operator;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public outputsInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 30
    const/16 v0, 0x8

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/schema/Operator;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public outputsLength()I
    .registers 3

    .line 26
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public outputsVector()Lcom/google/flatbuffers/IntVector;
    .registers 2

    .line 27
    new-instance v0, Lcom/google/flatbuffers/IntVector;

    invoke-direct {v0}, Lcom/google/flatbuffers/IntVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->outputsVector(Lcom/google/flatbuffers/IntVector;)Lcom/google/flatbuffers/IntVector;

    move-result-object v0

    return-object v0
.end method

.method public outputsVector(Lcom/google/flatbuffers/IntVector;)Lcom/google/flatbuffers/IntVector;
    .registers 5
    .param p1, "obj"    # Lcom/google/flatbuffers/IntVector;

    .line 28
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Operator;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/Operator;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/google/flatbuffers/IntVector;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/IntVector;

    move-result-object v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return-object v1
.end method
