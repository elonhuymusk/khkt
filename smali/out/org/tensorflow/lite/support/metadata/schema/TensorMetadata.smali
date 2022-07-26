.class public final Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;
.super Lcom/google/flatbuffers/Table;
.source "TensorMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;
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
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addAssociatedFiles(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "associatedFilesOffset"    # I

    .line 73
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addContent(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "contentOffset"    # I

    .line 68
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addDescription(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "descriptionOffset"    # I

    .line 64
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addDimensionNames(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "dimensionNamesOffset"    # I

    .line 65
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "nameOffset"    # I

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addProcessUnits(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "processUnitsOffset"    # I

    .line 69
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addStats(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "statsOffset"    # I

    .line 72
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createAssociatedFilesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 74
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

.method public static createDimensionNamesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 66
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

.method public static createProcessUnitsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 70
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

.method public static createTensorMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;IIIIIII)I
    .registers 9
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "nameOffset"    # I
    .param p2, "descriptionOffset"    # I
    .param p3, "dimension_namesOffset"    # I
    .param p4, "contentOffset"    # I
    .param p5, "process_unitsOffset"    # I
    .param p6, "statsOffset"    # I
    .param p7, "associated_filesOffset"    # I

    .line 51
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 52
    invoke-static {p0, p7}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->addAssociatedFiles(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 53
    invoke-static {p0, p6}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->addStats(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 54
    invoke-static {p0, p5}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->addProcessUnits(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 55
    invoke-static {p0, p4}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->addContent(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 56
    invoke-static {p0, p3}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->addDimensionNames(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 57
    invoke-static {p0, p2}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->addDescription(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 58
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 59
    invoke-static {p0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->endTensorMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endTensorMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 77
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 78
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsTensorMetadata(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;-><init>()V

    invoke-static {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->getRootAsTensorMetadata(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsTensorMetadata(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;
    .registers 4
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;

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

    invoke-virtual {p1, v0, p0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static startAssociatedFilesVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 75
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startDimensionNamesVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 67
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startProcessUnitsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 71
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startTensorMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 62
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public associatedFiles(I)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;
    .registers 3
    .param p1, "j"    # I

    .line 37
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->associatedFiles(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;I)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;

    move-result-object v0

    return-object v0
.end method

.method public associatedFiles(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;I)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;
    .param p2, "j"    # I

    .line 38
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method public associatedFilesLength()I
    .registers 3

    .line 39
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public associatedFilesVector()Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;
    .registers 2

    .line 40
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->associatedFilesVector(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    move-result-object v0

    return-object v0
.end method

.method public associatedFilesVector(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    .line 41
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public content()Lorg/tensorflow/lite/support/metadata/schema/Content;
    .registers 2

    .line 28
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/Content;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/Content;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->content(Lorg/tensorflow/lite/support/metadata/schema/Content;)Lorg/tensorflow/lite/support/metadata/schema/Content;

    move-result-object v0

    return-object v0
.end method

.method public content(Lorg/tensorflow/lite/support/metadata/schema/Content;)Lorg/tensorflow/lite/support/metadata/schema/Content;
    .registers 5
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/Content;

    .line 29
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_16

    iget v1, p0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/support/metadata/schema/Content;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/Content;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return-object v1
.end method

.method public description()Ljava/lang/String;
    .registers 3

    .line 21
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_f

    iget v1, p0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public descriptionAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 22
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public descriptionInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 23
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public dimensionNames(I)Ljava/lang/String;
    .registers 5
    .param p1, "j"    # I

    .line 24
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public dimensionNamesLength()I
    .registers 3

    .line 25
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public dimensionNamesVector()Lcom/google/flatbuffers/StringVector;
    .registers 2

    .line 26
    new-instance v0, Lcom/google/flatbuffers/StringVector;

    invoke-direct {v0}, Lcom/google/flatbuffers/StringVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->dimensionNamesVector(Lcom/google/flatbuffers/StringVector;)Lcom/google/flatbuffers/StringVector;

    move-result-object v0

    return-object v0
.end method

.method public dimensionNamesVector(Lcom/google/flatbuffers/StringVector;)Lcom/google/flatbuffers/StringVector;
    .registers 6
    .param p1, "obj"    # Lcom/google/flatbuffers/StringVector;

    .line 27
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/flatbuffers/StringVector;->__assign(IILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/StringVector;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public name()Ljava/lang/String;
    .registers 3

    .line 18
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_f

    iget v1, p0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public nameAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 19
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nameInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 20
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public processUnits(I)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;
    .registers 3
    .param p1, "j"    # I

    .line 30
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->processUnits(Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;I)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;

    move-result-object v0

    return-object v0
.end method

.method public processUnits(Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;I)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;
    .param p2, "j"    # I

    .line 31
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method public processUnitsLength()I
    .registers 3

    .line 32
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public processUnitsVector()Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;
    .registers 2

    .line 33
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->processUnitsVector(Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;

    move-result-object v0

    return-object v0
.end method

.method public processUnitsVector(Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;

    .line 34
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public stats()Lorg/tensorflow/lite/support/metadata/schema/Stats;
    .registers 2

    .line 35
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/Stats;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/Stats;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->stats(Lorg/tensorflow/lite/support/metadata/schema/Stats;)Lorg/tensorflow/lite/support/metadata/schema/Stats;

    move-result-object v0

    return-object v0
.end method

.method public stats(Lorg/tensorflow/lite/support/metadata/schema/Stats;)Lorg/tensorflow/lite/support/metadata/schema/Stats;
    .registers 5
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/Stats;

    .line 36
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_16

    iget v1, p0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/support/metadata/schema/Stats;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/Stats;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return-object v1
.end method
