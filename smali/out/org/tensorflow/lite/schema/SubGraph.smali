.class public final Lorg/tensorflow/lite/schema/SubGraph;
.super Lcom/google/flatbuffers/Table;
.source "SubGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/schema/SubGraph$Vector;
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
    invoke-static {p0, p1}, Lorg/tensorflow/lite/schema/SubGraph;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addInputs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "inputsOffset"    # I

    .line 63
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "nameOffset"    # I

    .line 72
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addOperators(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "operatorsOffset"    # I

    .line 69
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addOutputs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "outputsOffset"    # I

    .line 66
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addTensors(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "tensorsOffset"    # I

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createInputsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 64
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

.method public static createOperatorsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 70
    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_12

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .end local v0    # "i":I
    :cond_12
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public static createOutputsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 67
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

.method public static createSubGraph(Lcom/google/flatbuffers/FlatBufferBuilder;IIIII)I
    .registers 7
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "tensorsOffset"    # I
    .param p2, "inputsOffset"    # I
    .param p3, "outputsOffset"    # I
    .param p4, "operatorsOffset"    # I
    .param p5, "nameOffset"    # I

    .line 50
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 51
    invoke-static {p0, p5}, Lorg/tensorflow/lite/schema/SubGraph;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 52
    invoke-static {p0, p4}, Lorg/tensorflow/lite/schema/SubGraph;->addOperators(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 53
    invoke-static {p0, p3}, Lorg/tensorflow/lite/schema/SubGraph;->addOutputs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 54
    invoke-static {p0, p2}, Lorg/tensorflow/lite/schema/SubGraph;->addInputs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 55
    invoke-static {p0, p1}, Lorg/tensorflow/lite/schema/SubGraph;->addTensors(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 56
    invoke-static {p0}, Lorg/tensorflow/lite/schema/SubGraph;->endSubGraph(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static createTensorsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 61
    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_12

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .end local v0    # "i":I
    :cond_12
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public static endSubGraph(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 74
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 75
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsSubGraph(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/SubGraph;
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lorg/tensorflow/lite/schema/SubGraph;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/SubGraph;-><init>()V

    invoke-static {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->getRootAsSubGraph(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/SubGraph;)Lorg/tensorflow/lite/schema/SubGraph;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsSubGraph(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/SubGraph;)Lorg/tensorflow/lite/schema/SubGraph;
    .registers 4
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/SubGraph;

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

    invoke-virtual {p1, v0, p0}, Lorg/tensorflow/lite/schema/SubGraph;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/SubGraph;

    move-result-object v0

    return-object v0
.end method

.method public static startInputsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 65
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startOperatorsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 71
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startOutputsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 68
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startSubGraph(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 59
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method

.method public static startTensorsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 62
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/SubGraph;
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/SubGraph;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/SubGraph;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public inputs(I)I
    .registers 6
    .param p1, "j"    # I

    .line 23
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_15

    iget-object v1, p0, Lorg/tensorflow/lite/schema/SubGraph;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__vector(I)I

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

    .line 27
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/schema/SubGraph;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public inputsInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 28
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/schema/SubGraph;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public inputsLength()I
    .registers 3

    .line 24
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__vector_len(I)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public inputsVector()Lcom/google/flatbuffers/IntVector;
    .registers 2

    .line 25
    new-instance v0, Lcom/google/flatbuffers/IntVector;

    invoke-direct {v0}, Lcom/google/flatbuffers/IntVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->inputsVector(Lcom/google/flatbuffers/IntVector;)Lcom/google/flatbuffers/IntVector;

    move-result-object v0

    return-object v0
.end method

.method public inputsVector(Lcom/google/flatbuffers/IntVector;)Lcom/google/flatbuffers/IntVector;
    .registers 5
    .param p1, "obj"    # Lcom/google/flatbuffers/IntVector;

    .line 26
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/SubGraph;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/google/flatbuffers/IntVector;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/IntVector;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return-object v1
.end method

.method public name()Ljava/lang/String;
    .registers 3

    .line 40
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_10

    iget v1, p0, Lorg/tensorflow/lite/schema/SubGraph;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/schema/SubGraph;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method

.method public nameAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 41
    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/schema/SubGraph;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nameInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 42
    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/schema/SubGraph;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public operators(I)Lorg/tensorflow/lite/schema/Operator;
    .registers 3
    .param p1, "j"    # I

    .line 35
    new-instance v0, Lorg/tensorflow/lite/schema/Operator;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/Operator;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/schema/SubGraph;->operators(Lorg/tensorflow/lite/schema/Operator;I)Lorg/tensorflow/lite/schema/Operator;

    move-result-object v0

    return-object v0
.end method

.method public operators(Lorg/tensorflow/lite/schema/Operator;I)Lorg/tensorflow/lite/schema/Operator;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/Operator;
    .param p2, "j"    # I

    .line 36
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/schema/SubGraph;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/SubGraph;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/schema/Operator;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/Operator;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method public operatorsLength()I
    .registers 3

    .line 37
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public operatorsVector()Lorg/tensorflow/lite/schema/Operator$Vector;
    .registers 2

    .line 38
    new-instance v0, Lorg/tensorflow/lite/schema/Operator$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/Operator$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->operatorsVector(Lorg/tensorflow/lite/schema/Operator$Vector;)Lorg/tensorflow/lite/schema/Operator$Vector;

    move-result-object v0

    return-object v0
.end method

.method public operatorsVector(Lorg/tensorflow/lite/schema/Operator$Vector;)Lorg/tensorflow/lite/schema/Operator$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/Operator$Vector;

    .line 39
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/schema/SubGraph;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/schema/Operator$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/Operator$Vector;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public outputs(I)I
    .registers 6
    .param p1, "j"    # I

    .line 29
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_16

    iget-object v1, p0, Lorg/tensorflow/lite/schema/SubGraph;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__vector(I)I

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

    .line 33
    const/16 v0, 0x8

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/schema/SubGraph;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public outputsInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 34
    const/16 v0, 0x8

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/schema/SubGraph;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public outputsLength()I
    .registers 3

    .line 30
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public outputsVector()Lcom/google/flatbuffers/IntVector;
    .registers 2

    .line 31
    new-instance v0, Lcom/google/flatbuffers/IntVector;

    invoke-direct {v0}, Lcom/google/flatbuffers/IntVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->outputsVector(Lcom/google/flatbuffers/IntVector;)Lcom/google/flatbuffers/IntVector;

    move-result-object v0

    return-object v0
.end method

.method public outputsVector(Lcom/google/flatbuffers/IntVector;)Lcom/google/flatbuffers/IntVector;
    .registers 5
    .param p1, "obj"    # Lcom/google/flatbuffers/IntVector;

    .line 32
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/SubGraph;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/google/flatbuffers/IntVector;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/IntVector;

    move-result-object v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return-object v1
.end method

.method public tensors(I)Lorg/tensorflow/lite/schema/Tensor;
    .registers 3
    .param p1, "j"    # I

    .line 18
    new-instance v0, Lorg/tensorflow/lite/schema/Tensor;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/Tensor;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/schema/SubGraph;->tensors(Lorg/tensorflow/lite/schema/Tensor;I)Lorg/tensorflow/lite/schema/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public tensors(Lorg/tensorflow/lite/schema/Tensor;I)Lorg/tensorflow/lite/schema/Tensor;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/Tensor;
    .param p2, "j"    # I

    .line 19
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/schema/SubGraph;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/SubGraph;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/schema/Tensor;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/Tensor;

    move-result-object v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return-object v1
.end method

.method public tensorsLength()I
    .registers 3

    .line 20
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__vector_len(I)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public tensorsVector()Lorg/tensorflow/lite/schema/Tensor$Vector;
    .registers 2

    .line 21
    new-instance v0, Lorg/tensorflow/lite/schema/Tensor$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/Tensor$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->tensorsVector(Lorg/tensorflow/lite/schema/Tensor$Vector;)Lorg/tensorflow/lite/schema/Tensor$Vector;

    move-result-object v0

    return-object v0
.end method

.method public tensorsVector(Lorg/tensorflow/lite/schema/Tensor$Vector;)Lorg/tensorflow/lite/schema/Tensor$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/Tensor$Vector;

    .line 22
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SubGraph;->__offset(I)I

    move-result v1

    .local v1, "o":I
    if-eqz v1, :cond_12

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/schema/SubGraph;->__vector(I)I

    move-result v2

    iget-object v3, p0, Lorg/tensorflow/lite/schema/SubGraph;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2, v0, v3}, Lorg/tensorflow/lite/schema/Tensor$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/Tensor$Vector;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0
.end method
