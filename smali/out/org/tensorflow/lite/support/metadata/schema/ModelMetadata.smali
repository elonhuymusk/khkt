.class public final Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;
.super Lcom/google/flatbuffers/Table;
.source "ModelMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata$Vector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static ModelMetadataBufferHasIdentifier(Ljava/nio/ByteBuffer;)Z
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    const-string v0, "M001"

    invoke-static {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__has_identifier(Ljava/nio/ByteBuffer;Ljava/lang/String;)Z

    move-result v0

    return v0
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
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addAssociatedFiles(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "associatedFilesOffset"    # I

    .line 78
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addAuthor(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "authorOffset"    # I

    .line 76
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addDescription(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "descriptionOffset"    # I

    .line 71
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addLicense(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "licenseOffset"    # I

    .line 77
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addMinParserVersion(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "minParserVersionOffset"    # I

    .line 81
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "nameOffset"    # I

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addSubgraphMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "subgraphMetadataOffset"    # I

    .line 73
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addVersion(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "versionOffset"    # I

    .line 72
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createAssociatedFilesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 79
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

.method public static createModelMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;IIIIIIII)I
    .registers 10
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "nameOffset"    # I
    .param p2, "descriptionOffset"    # I
    .param p3, "versionOffset"    # I
    .param p4, "subgraph_metadataOffset"    # I
    .param p5, "authorOffset"    # I
    .param p6, "licenseOffset"    # I
    .param p7, "associated_filesOffset"    # I
    .param p8, "min_parser_versionOffset"    # I

    .line 57
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 58
    invoke-static {p0, p8}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->addMinParserVersion(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 59
    invoke-static {p0, p7}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->addAssociatedFiles(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 60
    invoke-static {p0, p6}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->addLicense(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 61
    invoke-static {p0, p5}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->addAuthor(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 62
    invoke-static {p0, p4}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->addSubgraphMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 63
    invoke-static {p0, p3}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->addVersion(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 64
    invoke-static {p0, p2}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->addDescription(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 65
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 66
    invoke-static {p0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->endModelMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static createSubgraphMetadataVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
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

.method public static endModelMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 84
    .local v0, "o":I
    return v0
.end method

.method public static finishModelMetadataBuffer(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "offset"    # I

    .line 86
    const-string v0, "M001"

    invoke-virtual {p0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(ILjava/lang/String;)V

    return-void
.end method

.method public static finishSizePrefixedModelMetadataBuffer(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "offset"    # I

    .line 87
    const-string v0, "M001"

    invoke-virtual {p0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finishSizePrefixed(ILjava/lang/String;)V

    return-void
.end method

.method public static getRootAsModelMetadata(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;-><init>()V

    invoke-static {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->getRootAsModelMetadata(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;)Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsModelMetadata(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;)Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;
    .registers 4
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;

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

    invoke-virtual {p1, v0, p0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static startAssociatedFilesVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 80
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startModelMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 69
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method

.method public static startSubgraphMetadataVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 75
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public associatedFiles(I)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;
    .registers 3
    .param p1, "j"    # I

    .line 39
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->associatedFiles(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;I)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;

    move-result-object v0

    return-object v0
.end method

.method public associatedFiles(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;I)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;
    .param p2, "j"    # I

    .line 40
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->bb:Ljava/nio/ByteBuffer;

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

    .line 41
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public associatedFilesVector()Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;
    .registers 2

    .line 42
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->associatedFilesVector(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    move-result-object v0

    return-object v0
.end method

.method public associatedFilesVector(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    .line 43
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public author()Ljava/lang/String;
    .registers 3

    .line 33
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_10

    iget v1, p0, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method

.method public authorAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 34
    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public authorInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 35
    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .registers 3

    .line 22
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_f

    iget v1, p0, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public descriptionAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 23
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public descriptionInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 24
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public license()Ljava/lang/String;
    .registers 3

    .line 36
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_10

    iget v1, p0, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method

.method public licenseAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 37
    const/16 v0, 0xe

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public licenseInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 38
    const/16 v0, 0xe

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public minParserVersion()Ljava/lang/String;
    .registers 3

    .line 44
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_10

    iget v1, p0, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method

.method public minParserVersionAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 45
    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public minParserVersionInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 46
    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .registers 3

    .line 19
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_f

    iget v1, p0, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public nameAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 20
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nameInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 21
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public subgraphMetadata(I)Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;
    .registers 3
    .param p1, "j"    # I

    .line 28
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->subgraphMetadata(Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;I)Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;

    move-result-object v0

    return-object v0
.end method

.method public subgraphMetadata(Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;I)Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;
    .param p2, "j"    # I

    .line 29
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method public subgraphMetadataLength()I
    .registers 3

    .line 30
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public subgraphMetadataVector()Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata$Vector;
    .registers 2

    .line 31
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->subgraphMetadataVector(Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata$Vector;)Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata$Vector;

    move-result-object v0

    return-object v0
.end method

.method public subgraphMetadataVector(Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata$Vector;)Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata$Vector;

    .line 32
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata$Vector;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public version()Ljava/lang/String;
    .registers 3

    .line 25
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_10

    iget v1, p0, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__string(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method

.method public versionAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 26
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public versionInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 27
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
