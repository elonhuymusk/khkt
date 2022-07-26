.class public final Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;
.super Lcom/google/flatbuffers/Table;
.source "NormalizationOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions$Vector;
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
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addMean(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "meanOffset"    # I

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addStd(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "stdOffset"    # I

    .line 44
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createMeanVector(Lcom/google/flatbuffers/FlatBufferBuilder;[F)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [F

    .line 42
    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_12

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addFloat(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .end local v0    # "i":I
    :cond_12
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public static createNormalizationOptions(Lcom/google/flatbuffers/FlatBufferBuilder;II)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "meanOffset"    # I
    .param p2, "stdOffset"    # I

    .line 34
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 35
    invoke-static {p0, p2}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->addStd(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 36
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->addMean(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 37
    invoke-static {p0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->endNormalizationOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static createStdVector(Lcom/google/flatbuffers/FlatBufferBuilder;[F)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [F

    .line 45
    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_12

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addFloat(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .end local v0    # "i":I
    :cond_12
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public static endNormalizationOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 48
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 49
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsNormalizationOptions(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;-><init>()V

    invoke-static {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->getRootAsNormalizationOptions(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;)Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsNormalizationOptions(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;)Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;
    .registers 4
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;

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

    invoke-virtual {p1, v0, p0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;

    move-result-object v0

    return-object v0
.end method

.method public static startMeanVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 43
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startNormalizationOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 40
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method

.method public static startStdVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 46
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public mean(I)F
    .registers 6
    .param p1, "j"    # I

    .line 18
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_15

    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__vector(I)I

    move-result v2

    mul-int/lit8 v3, p1, 0x4

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public meanAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 22
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public meanInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 23
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public meanLength()I
    .registers 3

    .line 19
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__vector_len(I)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public meanVector()Lcom/google/flatbuffers/FloatVector;
    .registers 2

    .line 20
    new-instance v0, Lcom/google/flatbuffers/FloatVector;

    invoke-direct {v0}, Lcom/google/flatbuffers/FloatVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->meanVector(Lcom/google/flatbuffers/FloatVector;)Lcom/google/flatbuffers/FloatVector;

    move-result-object v0

    return-object v0
.end method

.method public meanVector(Lcom/google/flatbuffers/FloatVector;)Lcom/google/flatbuffers/FloatVector;
    .registers 5
    .param p1, "obj"    # Lcom/google/flatbuffers/FloatVector;

    .line 21
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/google/flatbuffers/FloatVector;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/FloatVector;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return-object v1
.end method

.method public std(I)F
    .registers 6
    .param p1, "j"    # I

    .line 24
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_15

    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__vector(I)I

    move-result v2

    mul-int/lit8 v3, p1, 0x4

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public stdAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 28
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public stdInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 29
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public stdLength()I
    .registers 3

    .line 25
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__vector_len(I)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public stdVector()Lcom/google/flatbuffers/FloatVector;
    .registers 2

    .line 26
    new-instance v0, Lcom/google/flatbuffers/FloatVector;

    invoke-direct {v0}, Lcom/google/flatbuffers/FloatVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->stdVector(Lcom/google/flatbuffers/FloatVector;)Lcom/google/flatbuffers/FloatVector;

    move-result-object v0

    return-object v0
.end method

.method public stdVector(Lcom/google/flatbuffers/FloatVector;)Lcom/google/flatbuffers/FloatVector;
    .registers 5
    .param p1, "obj"    # Lcom/google/flatbuffers/FloatVector;

    .line 27
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/NormalizationOptions;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/google/flatbuffers/FloatVector;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/FloatVector;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return-object v1
.end method
