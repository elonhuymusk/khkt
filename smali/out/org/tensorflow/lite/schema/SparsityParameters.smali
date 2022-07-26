.class public final Lorg/tensorflow/lite/schema/SparsityParameters;
.super Lcom/google/flatbuffers/Table;
.source "SparsityParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/schema/SparsityParameters$Vector;
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
    invoke-static {p0, p1}, Lorg/tensorflow/lite/schema/SparsityParameters;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addBlockMap(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "blockMapOffset"    # I

    .line 51
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addDimMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "dimMetadataOffset"    # I

    .line 54
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addTraversalOrder(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "traversalOrderOffset"    # I

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createBlockMapVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 52
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

.method public static createDimMetadataVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 55
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

.method public static createSparsityParameters(Lcom/google/flatbuffers/FlatBufferBuilder;III)I
    .registers 5
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "traversal_orderOffset"    # I
    .param p2, "block_mapOffset"    # I
    .param p3, "dim_metadataOffset"    # I

    .line 40
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 41
    invoke-static {p0, p3}, Lorg/tensorflow/lite/schema/SparsityParameters;->addDimMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 42
    invoke-static {p0, p2}, Lorg/tensorflow/lite/schema/SparsityParameters;->addBlockMap(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 43
    invoke-static {p0, p1}, Lorg/tensorflow/lite/schema/SparsityParameters;->addTraversalOrder(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 44
    invoke-static {p0}, Lorg/tensorflow/lite/schema/SparsityParameters;->endSparsityParameters(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static createTraversalOrderVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 49
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

.method public static endSparsityParameters(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 58
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 59
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsSparsityParameters(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/SparsityParameters;
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lorg/tensorflow/lite/schema/SparsityParameters;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/SparsityParameters;-><init>()V

    invoke-static {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->getRootAsSparsityParameters(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/SparsityParameters;)Lorg/tensorflow/lite/schema/SparsityParameters;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsSparsityParameters(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/SparsityParameters;)Lorg/tensorflow/lite/schema/SparsityParameters;
    .registers 4
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/SparsityParameters;

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

    invoke-virtual {p1, v0, p0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/SparsityParameters;

    move-result-object v0

    return-object v0
.end method

.method public static startBlockMapVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 53
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startDimMetadataVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 56
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startSparsityParameters(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 47
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method

.method public static startTraversalOrderVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 50
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/SparsityParameters;
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/SparsityParameters;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/SparsityParameters;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public blockMap(I)I
    .registers 6
    .param p1, "j"    # I

    .line 24
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_15

    iget-object v1, p0, Lorg/tensorflow/lite/schema/SparsityParameters;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__vector(I)I

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

.method public blockMapAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 28
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/schema/SparsityParameters;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blockMapInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 29
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/schema/SparsityParameters;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blockMapLength()I
    .registers 3

    .line 25
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__vector_len(I)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public blockMapVector()Lcom/google/flatbuffers/IntVector;
    .registers 2

    .line 26
    new-instance v0, Lcom/google/flatbuffers/IntVector;

    invoke-direct {v0}, Lcom/google/flatbuffers/IntVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->blockMapVector(Lcom/google/flatbuffers/IntVector;)Lcom/google/flatbuffers/IntVector;

    move-result-object v0

    return-object v0
.end method

.method public blockMapVector(Lcom/google/flatbuffers/IntVector;)Lcom/google/flatbuffers/IntVector;
    .registers 5
    .param p1, "obj"    # Lcom/google/flatbuffers/IntVector;

    .line 27
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/SparsityParameters;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/google/flatbuffers/IntVector;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/IntVector;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return-object v1
.end method

.method public dimMetadata(I)Lorg/tensorflow/lite/schema/DimensionMetadata;
    .registers 3
    .param p1, "j"    # I

    .line 30
    new-instance v0, Lorg/tensorflow/lite/schema/DimensionMetadata;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/DimensionMetadata;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/schema/SparsityParameters;->dimMetadata(Lorg/tensorflow/lite/schema/DimensionMetadata;I)Lorg/tensorflow/lite/schema/DimensionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public dimMetadata(Lorg/tensorflow/lite/schema/DimensionMetadata;I)Lorg/tensorflow/lite/schema/DimensionMetadata;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/DimensionMetadata;
    .param p2, "j"    # I

    .line 31
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/schema/SparsityParameters;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/SparsityParameters;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/schema/DimensionMetadata;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/DimensionMetadata;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method public dimMetadataLength()I
    .registers 3

    .line 32
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public dimMetadataVector()Lorg/tensorflow/lite/schema/DimensionMetadata$Vector;
    .registers 2

    .line 33
    new-instance v0, Lorg/tensorflow/lite/schema/DimensionMetadata$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/DimensionMetadata$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->dimMetadataVector(Lorg/tensorflow/lite/schema/DimensionMetadata$Vector;)Lorg/tensorflow/lite/schema/DimensionMetadata$Vector;

    move-result-object v0

    return-object v0
.end method

.method public dimMetadataVector(Lorg/tensorflow/lite/schema/DimensionMetadata$Vector;)Lorg/tensorflow/lite/schema/DimensionMetadata$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/DimensionMetadata$Vector;

    .line 34
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/schema/SparsityParameters;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/schema/DimensionMetadata$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/DimensionMetadata$Vector;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public traversalOrder(I)I
    .registers 6
    .param p1, "j"    # I

    .line 18
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_15

    iget-object v1, p0, Lorg/tensorflow/lite/schema/SparsityParameters;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__vector(I)I

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

.method public traversalOrderAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 22
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public traversalOrderInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 23
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public traversalOrderLength()I
    .registers 3

    .line 19
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__vector_len(I)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public traversalOrderVector()Lcom/google/flatbuffers/IntVector;
    .registers 2

    .line 20
    new-instance v0, Lcom/google/flatbuffers/IntVector;

    invoke-direct {v0}, Lcom/google/flatbuffers/IntVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->traversalOrderVector(Lcom/google/flatbuffers/IntVector;)Lcom/google/flatbuffers/IntVector;

    move-result-object v0

    return-object v0
.end method

.method public traversalOrderVector(Lcom/google/flatbuffers/IntVector;)Lcom/google/flatbuffers/IntVector;
    .registers 5
    .param p1, "obj"    # Lcom/google/flatbuffers/IntVector;

    .line 21
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/SparsityParameters;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/schema/SparsityParameters;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/google/flatbuffers/IntVector;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/IntVector;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return-object v1
.end method
