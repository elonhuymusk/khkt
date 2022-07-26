.class public final Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;
.super Lcom/google/flatbuffers/Table;
.source "ImageProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/metadata/schema/ImageProperties$Vector;
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
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addColorSpace(Lcom/google/flatbuffers/FlatBufferBuilder;B)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "colorSpace"    # B

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static addDefaultSize(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "defaultSizeOffset"    # I

    .line 33
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createImageProperties(Lcom/google/flatbuffers/FlatBufferBuilder;BI)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "color_space"    # B
    .param p2, "default_sizeOffset"    # I

    .line 25
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 26
    invoke-static {p0, p2}, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;->addDefaultSize(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 27
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;->addColorSpace(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 28
    invoke-static {p0}, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;->endImageProperties(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endImageProperties(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 35
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 36
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsImageProperties(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;-><init>()V

    invoke-static {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;->getRootAsImageProperties(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;)Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsImageProperties(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;)Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;
    .registers 4
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;

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

    invoke-virtual {p1, v0, p0}, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;

    move-result-object v0

    return-object v0
.end method

.method public static startImageProperties(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 31
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public colorSpace()B
    .registers 4

    .line 18
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_11

    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public defaultSize()Lorg/tensorflow/lite/support/metadata/schema/ImageSize;
    .registers 2

    .line 19
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/ImageSize;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/ImageSize;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;->defaultSize(Lorg/tensorflow/lite/support/metadata/schema/ImageSize;)Lorg/tensorflow/lite/support/metadata/schema/ImageSize;

    move-result-object v0

    return-object v0
.end method

.method public defaultSize(Lorg/tensorflow/lite/support/metadata/schema/ImageSize;)Lorg/tensorflow/lite/support/metadata/schema/ImageSize;
    .registers 5
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/ImageSize;

    .line 20
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_15

    iget v1, p0, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/ImageProperties;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/support/metadata/schema/ImageSize;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/ImageSize;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return-object v1
.end method
