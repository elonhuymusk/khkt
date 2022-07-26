.class public final Lorg/tensorflow/lite/schema/SignatureDef;
.super Lcom/google/flatbuffers/Table;
.source "SignatureDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/schema/SignatureDef$Vector;
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
    invoke-static {p0, p1}, Lorg/tensorflow/lite/schema/SignatureDef;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addInputs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "inputsOffset"    # I

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "keyOffset"    # I

    .line 56
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addMethodName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "methodNameOffset"    # I

    .line 55
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addOutputs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "outputsOffset"    # I

    .line 52
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createInputsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 50
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

    .line 53
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

.method public static createSignatureDef(Lcom/google/flatbuffers/FlatBufferBuilder;IIII)I
    .registers 6
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "inputsOffset"    # I
    .param p2, "outputsOffset"    # I
    .param p3, "method_nameOffset"    # I
    .param p4, "keyOffset"    # I

    .line 40
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 41
    invoke-static {p0, p4}, Lorg/tensorflow/lite/schema/SignatureDef;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 42
    invoke-static {p0, p3}, Lorg/tensorflow/lite/schema/SignatureDef;->addMethodName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 43
    invoke-static {p0, p2}, Lorg/tensorflow/lite/schema/SignatureDef;->addOutputs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 44
    invoke-static {p0, p1}, Lorg/tensorflow/lite/schema/SignatureDef;->addInputs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 45
    invoke-static {p0}, Lorg/tensorflow/lite/schema/SignatureDef;->endSignatureDef(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endSignatureDef(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 58
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 59
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsSignatureDef(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/SignatureDef;
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lorg/tensorflow/lite/schema/SignatureDef;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/SignatureDef;-><init>()V

    invoke-static {p0, v0}, Lorg/tensorflow/lite/schema/SignatureDef;->getRootAsSignatureDef(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/SignatureDef;)Lorg/tensorflow/lite/schema/SignatureDef;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsSignatureDef(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/SignatureDef;)Lorg/tensorflow/lite/schema/SignatureDef;
    .registers 4
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/SignatureDef;

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

    invoke-virtual {p1, v0, p0}, Lorg/tensorflow/lite/schema/SignatureDef;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/SignatureDef;

    move-result-object v0

    return-object v0
.end method

.method public static startInputsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 51
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startOutputsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 54
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startSignatureDef(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 48
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/SignatureDef;
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/SignatureDef;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/SignatureDef;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public inputs(I)Lorg/tensorflow/lite/schema/TensorMap;
    .registers 3
    .param p1, "j"    # I

    .line 18
    new-instance v0, Lorg/tensorflow/lite/schema/TensorMap;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/TensorMap;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/schema/SignatureDef;->inputs(Lorg/tensorflow/lite/schema/TensorMap;I)Lorg/tensorflow/lite/schema/TensorMap;

    move-result-object v0

    return-object v0
.end method

.method public inputs(Lorg/tensorflow/lite/schema/TensorMap;I)Lorg/tensorflow/lite/schema/TensorMap;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/TensorMap;
    .param p2, "j"    # I

    .line 19
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SignatureDef;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SignatureDef;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/schema/SignatureDef;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/SignatureDef;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/schema/TensorMap;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/TensorMap;

    move-result-object v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return-object v1
.end method

.method public inputsLength()I
    .registers 3

    .line 20
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SignatureDef;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SignatureDef;->__vector_len(I)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public inputsVector()Lorg/tensorflow/lite/schema/TensorMap$Vector;
    .registers 2

    .line 21
    new-instance v0, Lorg/tensorflow/lite/schema/TensorMap$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/TensorMap$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SignatureDef;->inputsVector(Lorg/tensorflow/lite/schema/TensorMap$Vector;)Lorg/tensorflow/lite/schema/TensorMap$Vector;

    move-result-object v0

    return-object v0
.end method

.method public inputsVector(Lorg/tensorflow/lite/schema/TensorMap$Vector;)Lorg/tensorflow/lite/schema/TensorMap$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/TensorMap$Vector;

    .line 22
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SignatureDef;->__offset(I)I

    move-result v1

    .local v1, "o":I
    if-eqz v1, :cond_12

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/schema/SignatureDef;->__vector(I)I

    move-result v2

    iget-object v3, p0, Lorg/tensorflow/lite/schema/SignatureDef;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2, v0, v3}, Lorg/tensorflow/lite/schema/TensorMap$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/TensorMap$Vector;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0
.end method

.method public key()Ljava/lang/String;
    .registers 3

    .line 31
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SignatureDef;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_10

    iget v1, p0, Lorg/tensorflow/lite/schema/SignatureDef;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/schema/SignatureDef;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method

.method public keyAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 32
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/schema/SignatureDef;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public keyInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 33
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/schema/SignatureDef;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public methodName()Ljava/lang/String;
    .registers 3

    .line 28
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SignatureDef;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_10

    iget v1, p0, Lorg/tensorflow/lite/schema/SignatureDef;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/schema/SignatureDef;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method

.method public methodNameAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 29
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/schema/SignatureDef;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public methodNameInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 30
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/schema/SignatureDef;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public outputs(I)Lorg/tensorflow/lite/schema/TensorMap;
    .registers 3
    .param p1, "j"    # I

    .line 23
    new-instance v0, Lorg/tensorflow/lite/schema/TensorMap;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/TensorMap;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/schema/SignatureDef;->outputs(Lorg/tensorflow/lite/schema/TensorMap;I)Lorg/tensorflow/lite/schema/TensorMap;

    move-result-object v0

    return-object v0
.end method

.method public outputs(Lorg/tensorflow/lite/schema/TensorMap;I)Lorg/tensorflow/lite/schema/TensorMap;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/TensorMap;
    .param p2, "j"    # I

    .line 24
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SignatureDef;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SignatureDef;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/schema/SignatureDef;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/SignatureDef;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/schema/TensorMap;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/TensorMap;

    move-result-object v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return-object v1
.end method

.method public outputsLength()I
    .registers 3

    .line 25
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SignatureDef;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SignatureDef;->__vector_len(I)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public outputsVector()Lorg/tensorflow/lite/schema/TensorMap$Vector;
    .registers 2

    .line 26
    new-instance v0, Lorg/tensorflow/lite/schema/TensorMap$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/TensorMap$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SignatureDef;->outputsVector(Lorg/tensorflow/lite/schema/TensorMap$Vector;)Lorg/tensorflow/lite/schema/TensorMap$Vector;

    move-result-object v0

    return-object v0
.end method

.method public outputsVector(Lorg/tensorflow/lite/schema/TensorMap$Vector;)Lorg/tensorflow/lite/schema/TensorMap$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/TensorMap$Vector;

    .line 27
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SignatureDef;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SignatureDef;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/schema/SignatureDef;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/schema/TensorMap$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/TensorMap$Vector;

    move-result-object v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return-object v1
.end method
