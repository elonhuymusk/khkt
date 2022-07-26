.class public final Lorg/tensorflow/lite/support/metadata/schema/Content;
.super Lcom/google/flatbuffers/Table;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/metadata/schema/Content$Vector;
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
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/metadata/schema/Content;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addContentProperties(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "contentPropertiesOffset"    # I

    .line 36
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addContentPropertiesType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "contentPropertiesType"    # B

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static addRange(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "rangeOffset"    # I

    .line 37
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createContent(Lcom/google/flatbuffers/FlatBufferBuilder;BII)I
    .registers 5
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "content_properties_type"    # B
    .param p2, "content_propertiesOffset"    # I
    .param p3, "rangeOffset"    # I

    .line 27
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 28
    invoke-static {p0, p3}, Lorg/tensorflow/lite/support/metadata/schema/Content;->addRange(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 29
    invoke-static {p0, p2}, Lorg/tensorflow/lite/support/metadata/schema/Content;->addContentProperties(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 30
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/metadata/schema/Content;->addContentPropertiesType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 31
    invoke-static {p0}, Lorg/tensorflow/lite/support/metadata/schema/Content;->endContent(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endContent(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 39
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 40
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsContent(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/Content;
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/Content;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/Content;-><init>()V

    invoke-static {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Content;->getRootAsContent(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/support/metadata/schema/Content;)Lorg/tensorflow/lite/support/metadata/schema/Content;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsContent(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/support/metadata/schema/Content;)Lorg/tensorflow/lite/support/metadata/schema/Content;
    .registers 4
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/Content;

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

    invoke-virtual {p1, v0, p0}, Lorg/tensorflow/lite/support/metadata/schema/Content;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/Content;

    move-result-object v0

    return-object v0
.end method

.method public static startContent(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 34
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/Content;
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/schema/Content;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/schema/Content;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public contentProperties(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;
    .registers 4
    .param p1, "obj"    # Lcom/google/flatbuffers/Table;

    .line 19
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Content;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_f

    iget v1, p0, Lorg/tensorflow/lite/support/metadata/schema/Content;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/tensorflow/lite/support/metadata/schema/Content;->__union(Lcom/google/flatbuffers/Table;I)Lcom/google/flatbuffers/Table;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public contentPropertiesType()B
    .registers 4

    .line 18
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Content;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_11

    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/schema/Content;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/tensorflow/lite/support/metadata/schema/Content;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public range()Lorg/tensorflow/lite/support/metadata/schema/ValueRange;
    .registers 2

    .line 20
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/ValueRange;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/ValueRange;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Content;->range(Lorg/tensorflow/lite/support/metadata/schema/ValueRange;)Lorg/tensorflow/lite/support/metadata/schema/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public range(Lorg/tensorflow/lite/support/metadata/schema/ValueRange;)Lorg/tensorflow/lite/support/metadata/schema/ValueRange;
    .registers 5
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/ValueRange;

    .line 21
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/Content;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_16

    iget v1, p0, Lorg/tensorflow/lite/support/metadata/schema/Content;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/Content;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/Content;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/support/metadata/schema/ValueRange;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/ValueRange;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return-object v1
.end method
