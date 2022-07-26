.class public final Lorg/tensorflow/lite/support/metadata/schema/Stats;
.super Lcom/google/flatbuffers/Table;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/metadata/schema/Stats$Vector;
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
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addMax(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "maxOffset"    # I

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addMin(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "minOffset"    # I

    .line 44
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createMaxVector(Lcom/google/flatbuffers/FlatBufferBuilder;[F)I
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

.method public static createMinVector(Lcom/google/flatbuffers/FlatBufferBuilder;[F)I
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

.method public static createStats(Lcom/google/flatbuffers/FlatBufferBuilder;II)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "maxOffset"    # I
    .param p2, "minOffset"    # I

    .line 34
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 35
    invoke-static {p0, p2}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->addMin(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 36
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->addMax(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 37
    invoke-static {p0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->endStats(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endStats(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 48
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 49
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsStats(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/Stats;
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/Stats;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;-><init>()V

    invoke-static {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->getRootAsStats(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/support/metadata/schema/Stats;)Lorg/tensorflow/lite/support/metadata/schema/Stats;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsStats(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/support/metadata/schema/Stats;)Lorg/tensorflow/lite/support/metadata/schema/Stats;
    .registers 4
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/Stats;

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

    invoke-virtual {p1, v0, p0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/Stats;

    move-result-object v0

    return-object v0
.end method

.method public static startMaxVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 43
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startMinVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 46
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startStats(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 40
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/Stats;
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public max(I)F
    .registers 6
    .param p1, "j"    # I

    .line 18
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_15

    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/schema/Stats;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__vector(I)I

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

.method public maxAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 22
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public maxInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 23
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public maxLength()I
    .registers 3

    .line 19
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__vector_len(I)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public maxVector()Lcom/google/flatbuffers/FloatVector;
    .registers 2

    .line 20
    new-instance v0, Lcom/google/flatbuffers/FloatVector;

    invoke-direct {v0}, Lcom/google/flatbuffers/FloatVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->maxVector(Lcom/google/flatbuffers/FloatVector;)Lcom/google/flatbuffers/FloatVector;

    move-result-object v0

    return-object v0
.end method

.method public maxVector(Lcom/google/flatbuffers/FloatVector;)Lcom/google/flatbuffers/FloatVector;
    .registers 5
    .param p1, "obj"    # Lcom/google/flatbuffers/FloatVector;

    .line 21
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/Stats;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/google/flatbuffers/FloatVector;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/FloatVector;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return-object v1
.end method

.method public min(I)F
    .registers 6
    .param p1, "j"    # I

    .line 24
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_15

    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/schema/Stats;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__vector(I)I

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

.method public minAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 28
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public minInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 29
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public minLength()I
    .registers 3

    .line 25
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__vector_len(I)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public minVector()Lcom/google/flatbuffers/FloatVector;
    .registers 2

    .line 26
    new-instance v0, Lcom/google/flatbuffers/FloatVector;

    invoke-direct {v0}, Lcom/google/flatbuffers/FloatVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->minVector(Lcom/google/flatbuffers/FloatVector;)Lcom/google/flatbuffers/FloatVector;

    move-result-object v0

    return-object v0
.end method

.method public minVector(Lcom/google/flatbuffers/FloatVector;)Lcom/google/flatbuffers/FloatVector;
    .registers 5
    .param p1, "obj"    # Lcom/google/flatbuffers/FloatVector;

    .line 27
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/Stats;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/google/flatbuffers/FloatVector;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/FloatVector;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return-object v1
.end method
