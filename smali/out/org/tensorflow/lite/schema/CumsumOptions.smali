.class public final Lorg/tensorflow/lite/schema/CumsumOptions;
.super Lcom/google/flatbuffers/Table;
.source "CumsumOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/schema/CumsumOptions$Vector;
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
    invoke-static {p0, p1}, Lorg/tensorflow/lite/schema/CumsumOptions;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addExclusive(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "exclusive"    # Z

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addBoolean(IZZ)V

    return-void
.end method

.method public static addReverse(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "reverse"    # Z

    .line 32
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addBoolean(IZZ)V

    return-void
.end method

.method public static createCumsumOptions(Lcom/google/flatbuffers/FlatBufferBuilder;ZZ)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "exclusive"    # Z
    .param p2, "reverse"    # Z

    .line 24
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 25
    invoke-static {p0, p2}, Lorg/tensorflow/lite/schema/CumsumOptions;->addReverse(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 26
    invoke-static {p0, p1}, Lorg/tensorflow/lite/schema/CumsumOptions;->addExclusive(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 27
    invoke-static {p0}, Lorg/tensorflow/lite/schema/CumsumOptions;->endCumsumOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endCumsumOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 34
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 35
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsCumsumOptions(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/CumsumOptions;
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lorg/tensorflow/lite/schema/CumsumOptions;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/CumsumOptions;-><init>()V

    invoke-static {p0, v0}, Lorg/tensorflow/lite/schema/CumsumOptions;->getRootAsCumsumOptions(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/CumsumOptions;)Lorg/tensorflow/lite/schema/CumsumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsCumsumOptions(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/CumsumOptions;)Lorg/tensorflow/lite/schema/CumsumOptions;
    .registers 4
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/CumsumOptions;

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

    invoke-virtual {p1, v0, p0}, Lorg/tensorflow/lite/schema/CumsumOptions;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/CumsumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static startCumsumOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 30
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/CumsumOptions;
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/CumsumOptions;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/CumsumOptions;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public exclusive()Z
    .registers 5

    .line 18
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/CumsumOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v2, p0, Lorg/tensorflow/lite/schema/CumsumOptions;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lorg/tensorflow/lite/schema/CumsumOptions;->bb_pos:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public reverse()Z
    .registers 5

    .line 19
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/CumsumOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v2, p0, Lorg/tensorflow/lite/schema/CumsumOptions;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lorg/tensorflow/lite/schema/CumsumOptions;->bb_pos:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method
