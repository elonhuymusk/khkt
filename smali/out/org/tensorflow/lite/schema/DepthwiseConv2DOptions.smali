.class public final Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;
.super Lcom/google/flatbuffers/Table;
.source "DepthwiseConv2DOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions$Vector;
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
    invoke-static {p0, p1}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addDepthMultiplier(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "depthMultiplier"    # I

    .line 49
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addDilationHFactor(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "dilationHFactor"    # I

    .line 52
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addDilationWFactor(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "dilationWFactor"    # I

    .line 51
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addFusedActivationFunction(Lcom/google/flatbuffers/FlatBufferBuilder;B)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "fusedActivationFunction"    # B

    .line 50
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static addPadding(Lcom/google/flatbuffers/FlatBufferBuilder;B)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "padding"    # B

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static addStrideH(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "strideH"    # I

    .line 48
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addStrideW(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "strideW"    # I

    .line 47
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static createDepthwiseConv2DOptions(Lcom/google/flatbuffers/FlatBufferBuilder;BIIIBII)I
    .registers 9
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "padding"    # B
    .param p2, "stride_w"    # I
    .param p3, "stride_h"    # I
    .param p4, "depth_multiplier"    # I
    .param p5, "fused_activation_function"    # B
    .param p6, "dilation_w_factor"    # I
    .param p7, "dilation_h_factor"    # I

    .line 34
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 35
    invoke-static {p0, p7}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->addDilationHFactor(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 36
    invoke-static {p0, p6}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->addDilationWFactor(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 37
    invoke-static {p0, p4}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->addDepthMultiplier(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 38
    invoke-static {p0, p3}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->addStrideH(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 39
    invoke-static {p0, p2}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->addStrideW(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 40
    invoke-static {p0, p5}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->addFusedActivationFunction(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 41
    invoke-static {p0, p1}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->addPadding(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 42
    invoke-static {p0}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->endDepthwiseConv2DOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endDepthwiseConv2DOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 54
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 55
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsDepthwiseConv2DOptions(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;-><init>()V

    invoke-static {p0, v0}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->getRootAsDepthwiseConv2DOptions(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;)Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsDepthwiseConv2DOptions(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;)Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;
    .registers 4
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;

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

    invoke-virtual {p1, v0, p0}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;

    move-result-object v0

    return-object v0
.end method

.method public static startDepthwiseConv2DOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 45
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public depthMultiplier()I
    .registers 4

    .line 21
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_12

    iget-object v1, p0, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public dilationHFactor()I
    .registers 4

    .line 24
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_12

    iget-object v1, p0, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x1

    :goto_13
    return v1
.end method

.method public dilationWFactor()I
    .registers 4

    .line 23
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_12

    iget-object v1, p0, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x1

    :goto_13
    return v1
.end method

.method public fusedActivationFunction()B
    .registers 4

    .line 22
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_12

    iget-object v1, p0, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public padding()B
    .registers 4

    .line 18
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_11

    iget-object v1, p0, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->bb_pos:I

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

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_12

    iget-object v1, p0, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->bb_pos:I

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

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_11

    iget-object v1, p0, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/schema/DepthwiseConv2DOptions;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method
