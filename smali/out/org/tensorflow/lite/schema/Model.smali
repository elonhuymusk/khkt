.class public final Lorg/tensorflow/lite/schema/Model;
.super Lcom/google/flatbuffers/Table;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/schema/Model$Vector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static ModelBufferHasIdentifier(Ljava/nio/ByteBuffer;)Z
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    const-string v0, "TFL3"

    invoke-static {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__has_identifier(Ljava/nio/ByteBuffer;Ljava/lang/String;)Z

    move-result v0

    return v0
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
    invoke-static {p0, p1}, Lorg/tensorflow/lite/schema/Model;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addBuffers(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "buffersOffset"    # I

    .line 85
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addDescription(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "descriptionOffset"    # I

    .line 84
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "metadataOffset"    # I

    .line 91
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addMetadataBuffer(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "metadataBufferOffset"    # I

    .line 88
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addOperatorCodes(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "operatorCodesOffset"    # I

    .line 78
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addSignatureDefs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "signatureDefsOffset"    # I

    .line 94
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addSubgraphs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "subgraphsOffset"    # I

    .line 81
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addVersion(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .registers 5
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "version"    # J

    .line 77
    long-to-int v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static createBuffersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 86
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

.method public static createMetadataBufferVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 89
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

.method public static createMetadataVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 92
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

.method public static createModel(Lcom/google/flatbuffers/FlatBufferBuilder;JIIIIIII)I
    .registers 11
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "version"    # J
    .param p3, "operator_codesOffset"    # I
    .param p4, "subgraphsOffset"    # I
    .param p5, "descriptionOffset"    # I
    .param p6, "buffersOffset"    # I
    .param p7, "metadata_bufferOffset"    # I
    .param p8, "metadataOffset"    # I
    .param p9, "signature_defsOffset"    # I

    .line 64
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 65
    invoke-static {p0, p9}, Lorg/tensorflow/lite/schema/Model;->addSignatureDefs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 66
    invoke-static {p0, p8}, Lorg/tensorflow/lite/schema/Model;->addMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 67
    invoke-static {p0, p7}, Lorg/tensorflow/lite/schema/Model;->addMetadataBuffer(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 68
    invoke-static {p0, p6}, Lorg/tensorflow/lite/schema/Model;->addBuffers(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 69
    invoke-static {p0, p5}, Lorg/tensorflow/lite/schema/Model;->addDescription(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 70
    invoke-static {p0, p4}, Lorg/tensorflow/lite/schema/Model;->addSubgraphs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 71
    invoke-static {p0, p3}, Lorg/tensorflow/lite/schema/Model;->addOperatorCodes(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 72
    invoke-static {p0, p1, p2}, Lorg/tensorflow/lite/schema/Model;->addVersion(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 73
    invoke-static {p0}, Lorg/tensorflow/lite/schema/Model;->endModel(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static createOperatorCodesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
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

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .end local v0    # "i":I
    :cond_12
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public static createSignatureDefsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
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

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .end local v0    # "i":I
    :cond_12
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public static createSubgraphsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
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

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .end local v0    # "i":I
    :cond_12
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public static endModel(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 98
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 99
    .local v0, "o":I
    return v0
.end method

.method public static finishModelBuffer(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "offset"    # I

    .line 101
    const-string v0, "TFL3"

    invoke-virtual {p0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(ILjava/lang/String;)V

    return-void
.end method

.method public static finishSizePrefixedModelBuffer(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "offset"    # I

    .line 102
    const-string v0, "TFL3"

    invoke-virtual {p0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finishSizePrefixed(ILjava/lang/String;)V

    return-void
.end method

.method public static getRootAsModel(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/Model;
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lorg/tensorflow/lite/schema/Model;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/Model;-><init>()V

    invoke-static {p0, v0}, Lorg/tensorflow/lite/schema/Model;->getRootAsModel(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/Model;)Lorg/tensorflow/lite/schema/Model;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsModel(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/Model;)Lorg/tensorflow/lite/schema/Model;
    .registers 4
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/Model;

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

    invoke-virtual {p1, v0, p0}, Lorg/tensorflow/lite/schema/Model;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/Model;

    move-result-object v0

    return-object v0
.end method

.method public static startBuffersVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 87
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startMetadataBufferVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 90
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startMetadataVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 93
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startModel(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 76
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method

.method public static startOperatorCodesVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 80
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startSignatureDefsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 96
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startSubgraphsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 83
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/Model;
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/Model;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/Model;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public buffers(I)Lorg/tensorflow/lite/schema/Buffer;
    .registers 3
    .param p1, "j"    # I

    .line 33
    new-instance v0, Lorg/tensorflow/lite/schema/Buffer;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/Buffer;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/schema/Model;->buffers(Lorg/tensorflow/lite/schema/Buffer;I)Lorg/tensorflow/lite/schema/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public buffers(Lorg/tensorflow/lite/schema/Buffer;I)Lorg/tensorflow/lite/schema/Buffer;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/Buffer;
    .param p2, "j"    # I

    .line 34
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/schema/Model;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/schema/Buffer;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/Buffer;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method public buffersLength()I
    .registers 3

    .line 35
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public buffersVector()Lorg/tensorflow/lite/schema/Buffer$Vector;
    .registers 2

    .line 36
    new-instance v0, Lorg/tensorflow/lite/schema/Buffer$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/Buffer$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->buffersVector(Lorg/tensorflow/lite/schema/Buffer$Vector;)Lorg/tensorflow/lite/schema/Buffer$Vector;

    move-result-object v0

    return-object v0
.end method

.method public buffersVector(Lorg/tensorflow/lite/schema/Buffer$Vector;)Lorg/tensorflow/lite/schema/Buffer$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/Buffer$Vector;

    .line 37
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/schema/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/schema/Buffer$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/Buffer$Vector;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public description()Ljava/lang/String;
    .registers 3

    .line 30
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_10

    iget v1, p0, Lorg/tensorflow/lite/schema/Model;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/schema/Model;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method

.method public descriptionAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 31
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/schema/Model;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public descriptionInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 32
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/schema/Model;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public metadata(I)Lorg/tensorflow/lite/schema/Metadata;
    .registers 3
    .param p1, "j"    # I

    .line 44
    new-instance v0, Lorg/tensorflow/lite/schema/Metadata;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/Metadata;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/schema/Model;->metadata(Lorg/tensorflow/lite/schema/Metadata;I)Lorg/tensorflow/lite/schema/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public metadata(Lorg/tensorflow/lite/schema/Metadata;I)Lorg/tensorflow/lite/schema/Metadata;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/Metadata;
    .param p2, "j"    # I

    .line 45
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/schema/Model;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/schema/Metadata;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/Metadata;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method public metadataBuffer(I)I
    .registers 6
    .param p1, "j"    # I

    .line 38
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_16

    iget-object v1, p0, Lorg/tensorflow/lite/schema/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector(I)I

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

.method public metadataBufferAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 42
    const/16 v0, 0xe

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/schema/Model;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public metadataBufferInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 43
    const/16 v0, 0xe

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/schema/Model;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public metadataBufferLength()I
    .registers 3

    .line 39
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public metadataBufferVector()Lcom/google/flatbuffers/IntVector;
    .registers 2

    .line 40
    new-instance v0, Lcom/google/flatbuffers/IntVector;

    invoke-direct {v0}, Lcom/google/flatbuffers/IntVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->metadataBufferVector(Lcom/google/flatbuffers/IntVector;)Lcom/google/flatbuffers/IntVector;

    move-result-object v0

    return-object v0
.end method

.method public metadataBufferVector(Lcom/google/flatbuffers/IntVector;)Lcom/google/flatbuffers/IntVector;
    .registers 5
    .param p1, "obj"    # Lcom/google/flatbuffers/IntVector;

    .line 41
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/google/flatbuffers/IntVector;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/IntVector;

    move-result-object v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return-object v1
.end method

.method public metadataLength()I
    .registers 3

    .line 46
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public metadataVector()Lorg/tensorflow/lite/schema/Metadata$Vector;
    .registers 2

    .line 47
    new-instance v0, Lorg/tensorflow/lite/schema/Metadata$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/Metadata$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->metadataVector(Lorg/tensorflow/lite/schema/Metadata$Vector;)Lorg/tensorflow/lite/schema/Metadata$Vector;

    move-result-object v0

    return-object v0
.end method

.method public metadataVector(Lorg/tensorflow/lite/schema/Metadata$Vector;)Lorg/tensorflow/lite/schema/Metadata$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/Metadata$Vector;

    .line 48
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/schema/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/schema/Metadata$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/Metadata$Vector;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public operatorCodes(I)Lorg/tensorflow/lite/schema/OperatorCode;
    .registers 3
    .param p1, "j"    # I

    .line 20
    new-instance v0, Lorg/tensorflow/lite/schema/OperatorCode;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/OperatorCode;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/schema/Model;->operatorCodes(Lorg/tensorflow/lite/schema/OperatorCode;I)Lorg/tensorflow/lite/schema/OperatorCode;

    move-result-object v0

    return-object v0
.end method

.method public operatorCodes(Lorg/tensorflow/lite/schema/OperatorCode;I)Lorg/tensorflow/lite/schema/OperatorCode;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/OperatorCode;
    .param p2, "j"    # I

    .line 21
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/schema/Model;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/schema/OperatorCode;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/OperatorCode;

    move-result-object v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return-object v1
.end method

.method public operatorCodesLength()I
    .registers 3

    .line 22
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector_len(I)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public operatorCodesVector()Lorg/tensorflow/lite/schema/OperatorCode$Vector;
    .registers 2

    .line 23
    new-instance v0, Lorg/tensorflow/lite/schema/OperatorCode$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/OperatorCode$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->operatorCodesVector(Lorg/tensorflow/lite/schema/OperatorCode$Vector;)Lorg/tensorflow/lite/schema/OperatorCode$Vector;

    move-result-object v0

    return-object v0
.end method

.method public operatorCodesVector(Lorg/tensorflow/lite/schema/OperatorCode$Vector;)Lorg/tensorflow/lite/schema/OperatorCode$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/OperatorCode$Vector;

    .line 24
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/schema/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/schema/OperatorCode$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/OperatorCode$Vector;

    move-result-object v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return-object v1
.end method

.method public signatureDefs(I)Lorg/tensorflow/lite/schema/SignatureDef;
    .registers 3
    .param p1, "j"    # I

    .line 49
    new-instance v0, Lorg/tensorflow/lite/schema/SignatureDef;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/SignatureDef;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/schema/Model;->signatureDefs(Lorg/tensorflow/lite/schema/SignatureDef;I)Lorg/tensorflow/lite/schema/SignatureDef;

    move-result-object v0

    return-object v0
.end method

.method public signatureDefs(Lorg/tensorflow/lite/schema/SignatureDef;I)Lorg/tensorflow/lite/schema/SignatureDef;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/SignatureDef;
    .param p2, "j"    # I

    .line 50
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/schema/Model;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/schema/SignatureDef;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/SignatureDef;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method public signatureDefsLength()I
    .registers 3

    .line 51
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public signatureDefsVector()Lorg/tensorflow/lite/schema/SignatureDef$Vector;
    .registers 2

    .line 52
    new-instance v0, Lorg/tensorflow/lite/schema/SignatureDef$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/SignatureDef$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->signatureDefsVector(Lorg/tensorflow/lite/schema/SignatureDef$Vector;)Lorg/tensorflow/lite/schema/SignatureDef$Vector;

    move-result-object v0

    return-object v0
.end method

.method public signatureDefsVector(Lorg/tensorflow/lite/schema/SignatureDef$Vector;)Lorg/tensorflow/lite/schema/SignatureDef$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/SignatureDef$Vector;

    .line 53
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/schema/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/schema/SignatureDef$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/SignatureDef$Vector;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public subgraphs(I)Lorg/tensorflow/lite/schema/SubGraph;
    .registers 3
    .param p1, "j"    # I

    .line 25
    new-instance v0, Lorg/tensorflow/lite/schema/SubGraph;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/SubGraph;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/schema/Model;->subgraphs(Lorg/tensorflow/lite/schema/SubGraph;I)Lorg/tensorflow/lite/schema/SubGraph;

    move-result-object v0

    return-object v0
.end method

.method public subgraphs(Lorg/tensorflow/lite/schema/SubGraph;I)Lorg/tensorflow/lite/schema/SubGraph;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/SubGraph;
    .param p2, "j"    # I

    .line 26
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/schema/Model;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/schema/SubGraph;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/SubGraph;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method public subgraphsLength()I
    .registers 3

    .line 27
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public subgraphsVector()Lorg/tensorflow/lite/schema/SubGraph$Vector;
    .registers 2

    .line 28
    new-instance v0, Lorg/tensorflow/lite/schema/SubGraph$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/SubGraph$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->subgraphsVector(Lorg/tensorflow/lite/schema/SubGraph$Vector;)Lorg/tensorflow/lite/schema/SubGraph$Vector;

    move-result-object v0

    return-object v0
.end method

.method public subgraphsVector(Lorg/tensorflow/lite/schema/SubGraph$Vector;)Lorg/tensorflow/lite/schema/SubGraph$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/SubGraph$Vector;

    .line 29
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/schema/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/schema/SubGraph$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/SubGraph$Vector;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public version()J
    .registers 6

    .line 19
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_18

    iget-object v1, p0, Lorg/tensorflow/lite/schema/Model;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/schema/Model;->bb_pos:I

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
