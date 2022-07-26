.class public final Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;
.super Lcom/google/flatbuffers/Table;
.source "UnidirectionalSequenceLSTMOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions$Vector;
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
    invoke-static {p0, p1}, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addAsymmetricQuantizeInputs(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "asymmetricQuantizeInputs"    # Z

    .line 44
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addBoolean(IZZ)V

    return-void
.end method

.method public static addCellClip(Lcom/google/flatbuffers/FlatBufferBuilder;F)V
    .registers 5
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "cellClip"    # F

    .line 41
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addFloat(IFD)V

    return-void
.end method

.method public static addFusedActivationFunction(Lcom/google/flatbuffers/FlatBufferBuilder;B)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "fusedActivationFunction"    # B

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static addProjClip(Lcom/google/flatbuffers/FlatBufferBuilder;F)V
    .registers 5
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "projClip"    # F

    .line 42
    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addFloat(IFD)V

    return-void
.end method

.method public static addTimeMajor(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "timeMajor"    # Z

    .line 43
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addBoolean(IZZ)V

    return-void
.end method

.method public static createUnidirectionalSequenceLSTMOptions(Lcom/google/flatbuffers/FlatBufferBuilder;BFFZZ)I
    .registers 7
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "fused_activation_function"    # B
    .param p2, "cell_clip"    # F
    .param p3, "proj_clip"    # F
    .param p4, "time_major"    # Z
    .param p5, "asymmetric_quantize_inputs"    # Z

    .line 30
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 31
    invoke-static {p0, p3}, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->addProjClip(Lcom/google/flatbuffers/FlatBufferBuilder;F)V

    .line 32
    invoke-static {p0, p2}, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->addCellClip(Lcom/google/flatbuffers/FlatBufferBuilder;F)V

    .line 33
    invoke-static {p0, p5}, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->addAsymmetricQuantizeInputs(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 34
    invoke-static {p0, p4}, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->addTimeMajor(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 35
    invoke-static {p0, p1}, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->addFusedActivationFunction(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 36
    invoke-static {p0}, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->endUnidirectionalSequenceLSTMOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endUnidirectionalSequenceLSTMOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 46
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 47
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsUnidirectionalSequenceLSTMOptions(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;-><init>()V

    invoke-static {p0, v0}, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->getRootAsUnidirectionalSequenceLSTMOptions(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;)Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsUnidirectionalSequenceLSTMOptions(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;)Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;
    .registers 4
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;

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

    invoke-virtual {p1, v0, p0}, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;

    move-result-object v0

    return-object v0
.end method

.method public static startUnidirectionalSequenceLSTMOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 39
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public asymmetricQuantizeInputs()Z
    .registers 5

    .line 22
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-object v2, p0, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->bb_pos:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public cellClip()F
    .registers 4

    .line 19
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_11

    iget-object v1, p0, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public fusedActivationFunction()B
    .registers 4

    .line 18
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_11

    iget-object v1, p0, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public projClip()F
    .registers 4

    .line 20
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_12

    iget-object v1, p0, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public timeMajor()Z
    .registers 5

    .line 21
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-object v2, p0, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lorg/tensorflow/lite/schema/UnidirectionalSequenceLSTMOptions;->bb_pos:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method
