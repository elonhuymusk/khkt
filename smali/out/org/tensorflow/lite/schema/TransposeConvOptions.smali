.class public final Lorg/tensorflow/lite/schema/TransposeConvOptions;
.super Lcom/google/flatbuffers/Table;
.source "TransposeConvOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/schema/TransposeConvOptions$Vector;
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
    invoke-static {p0, p1}, Lorg/tensorflow/lite/schema/TransposeConvOptions;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addPadding(Lcom/google/flatbuffers/FlatBufferBuilder;B)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "padding"    # B

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static addStrideH(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "strideH"    # I

    .line 36
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addStrideW(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "strideW"    # I

    .line 35
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static createTransposeConvOptions(Lcom/google/flatbuffers/FlatBufferBuilder;BII)I
    .registers 5
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "padding"    # B
    .param p2, "stride_w"    # I
    .param p3, "stride_h"    # I

    .line 26
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 27
    invoke-static {p0, p3}, Lorg/tensorflow/lite/schema/TransposeConvOptions;->addStrideH(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 28
    invoke-static {p0, p2}, Lorg/tensorflow/lite/schema/TransposeConvOptions;->addStrideW(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 29
    invoke-static {p0, p1}, Lorg/tensorflow/lite/schema/TransposeConvOptions;->addPadding(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 30
    invoke-static {p0}, Lorg/tensorflow/lite/schema/TransposeConvOptions;->endTransposeConvOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endTransposeConvOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 38
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 39
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsTransposeConvOptions(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/TransposeConvOptions;
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lorg/tensorflow/lite/schema/TransposeConvOptions;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/TransposeConvOptions;-><init>()V

    invoke-static {p0, v0}, Lorg/tensorflow/lite/schema/TransposeConvOptions;->getRootAsTransposeConvOptions(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/TransposeConvOptions;)Lorg/tensorflow/lite/schema/TransposeConvOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsTransposeConvOptions(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/TransposeConvOptions;)Lorg/tensorflow/lite/schema/TransposeConvOptions;
    .registers 4
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/TransposeConvOptions;

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

    invoke-virtual {p1, v0, p0}, Lorg/tensorflow/lite/schema/TransposeConvOptions;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/TransposeConvOptions;

    move-result-object v0

    return-object v0
.end method

.method public static startTransposeConvOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 33
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/TransposeConvOptions;
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/TransposeConvOptions;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/TransposeConvOptions;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public padding()B
    .registers 4

    .line 18
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/TransposeConvOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_11

    iget-object v1, p0, Lorg/tensorflow/lite/schema/TransposeConvOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/schema/TransposeConvOptions;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public strideH()I
    .registers 4

    .line 20
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/TransposeConvOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_12

    iget-object v1, p0, Lorg/tensorflow/lite/schema/TransposeConvOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/schema/TransposeConvOptions;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public strideW()I
    .registers 4

    .line 19
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/TransposeConvOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_11

    iget-object v1, p0, Lorg/tensorflow/lite/schema/TransposeConvOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/schema/TransposeConvOptions;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method
