.class public final Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;
.super Lcom/google/flatbuffers/Table;
.source "SubGraphMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata$Vector;
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
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addAssociatedFiles(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "associatedFilesOffset"    # I

    .line 92
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addDescription(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "descriptionOffset"    # I

    .line 85
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addInputProcessUnits(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "inputProcessUnitsOffset"    # I

    .line 95
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addInputTensorGroups(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "inputTensorGroupsOffset"    # I

    .line 101
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addInputTensorMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "inputTensorMetadataOffset"    # I

    .line 86
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "nameOffset"    # I

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addOutputProcessUnits(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "outputProcessUnitsOffset"    # I

    .line 98
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addOutputTensorGroups(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "outputTensorGroupsOffset"    # I

    .line 104
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addOutputTensorMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "outputTensorMetadataOffset"    # I

    .line 89
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createAssociatedFilesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 93
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

.method public static createInputProcessUnitsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 96
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

.method public static createInputTensorGroupsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 102
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

.method public static createInputTensorMetadataVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 87
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

.method public static createOutputProcessUnitsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 99
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

.method public static createOutputTensorGroupsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 105
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

.method public static createOutputTensorMetadataVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 90
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

.method public static createSubGraphMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;IIIIIIIII)I
    .registers 11
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "nameOffset"    # I
    .param p2, "descriptionOffset"    # I
    .param p3, "input_tensor_metadataOffset"    # I
    .param p4, "output_tensor_metadataOffset"    # I
    .param p5, "associated_filesOffset"    # I
    .param p6, "input_process_unitsOffset"    # I
    .param p7, "output_process_unitsOffset"    # I
    .param p8, "input_tensor_groupsOffset"    # I
    .param p9, "output_tensor_groupsOffset"    # I

    .line 70
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 71
    invoke-static {p0, p9}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->addOutputTensorGroups(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 72
    invoke-static {p0, p8}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->addInputTensorGroups(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 73
    invoke-static {p0, p7}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->addOutputProcessUnits(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 74
    invoke-static {p0, p6}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->addInputProcessUnits(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 75
    invoke-static {p0, p5}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->addAssociatedFiles(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 76
    invoke-static {p0, p4}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->addOutputTensorMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 77
    invoke-static {p0, p3}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->addInputTensorMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 78
    invoke-static {p0, p2}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->addDescription(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 79
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 80
    invoke-static {p0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->endSubGraphMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endSubGraphMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 108
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 109
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsSubGraphMetadata(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;-><init>()V

    invoke-static {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->getRootAsSubGraphMetadata(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;)Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsSubGraphMetadata(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;)Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;
    .registers 4
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;

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

    invoke-virtual {p1, v0, p0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static startAssociatedFilesVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 94
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startInputProcessUnitsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 97
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startInputTensorGroupsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 103
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startInputTensorMetadataVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 88
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startOutputProcessUnitsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 100
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startOutputTensorGroupsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 106
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startOutputTensorMetadataVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 91
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startSubGraphMetadata(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 83
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public associatedFiles(I)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;
    .registers 3
    .param p1, "j"    # I

    .line 34
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->associatedFiles(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;I)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;

    move-result-object v0

    return-object v0
.end method

.method public associatedFiles(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;I)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;
    .param p2, "j"    # I

    .line 35
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->bb:Ljava/nio/ByteBuffer;

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

    .line 36
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public associatedFilesVector()Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;
    .registers 2

    .line 37
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->associatedFilesVector(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    move-result-object v0

    return-object v0
.end method

.method public associatedFilesVector(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    .line 38
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public description()Ljava/lang/String;
    .registers 3

    .line 21
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_f

    iget v1, p0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__string(I)Ljava/lang/String;

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

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public descriptionInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 23
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public inputProcessUnits(I)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;
    .registers 3
    .param p1, "j"    # I

    .line 39
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->inputProcessUnits(Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;I)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;

    move-result-object v0

    return-object v0
.end method

.method public inputProcessUnits(Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;I)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;
    .param p2, "j"    # I

    .line 40
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method public inputProcessUnitsLength()I
    .registers 3

    .line 41
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public inputProcessUnitsVector()Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;
    .registers 2

    .line 42
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->inputProcessUnitsVector(Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;

    move-result-object v0

    return-object v0
.end method

.method public inputProcessUnitsVector(Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;

    .line 43
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public inputTensorGroups(I)Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;
    .registers 3
    .param p1, "j"    # I

    .line 49
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->inputTensorGroups(Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;I)Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;

    move-result-object v0

    return-object v0
.end method

.method public inputTensorGroups(Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;I)Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;
    .param p2, "j"    # I

    .line 50
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method public inputTensorGroupsLength()I
    .registers 3

    .line 51
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public inputTensorGroupsVector()Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;
    .registers 2

    .line 52
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->inputTensorGroupsVector(Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;)Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;

    move-result-object v0

    return-object v0
.end method

.method public inputTensorGroupsVector(Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;)Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;

    .line 53
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public inputTensorMetadata(I)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;
    .registers 3
    .param p1, "j"    # I

    .line 24
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->inputTensorMetadata(Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;I)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;

    move-result-object v0

    return-object v0
.end method

.method public inputTensorMetadata(Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;I)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;
    .param p2, "j"    # I

    .line 25
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method public inputTensorMetadataLength()I
    .registers 3

    .line 26
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public inputTensorMetadataVector()Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;
    .registers 2

    .line 27
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->inputTensorMetadataVector(Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;

    move-result-object v0

    return-object v0
.end method

.method public inputTensorMetadataVector(Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;

    .line 28
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;

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

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_f

    iget v1, p0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__string(I)Ljava/lang/String;

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

    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nameInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 20
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public outputProcessUnits(I)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;
    .registers 3
    .param p1, "j"    # I

    .line 44
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->outputProcessUnits(Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;I)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;

    move-result-object v0

    return-object v0
.end method

.method public outputProcessUnits(Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;I)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;
    .param p2, "j"    # I

    .line 45
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method public outputProcessUnitsLength()I
    .registers 3

    .line 46
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public outputProcessUnitsVector()Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;
    .registers 2

    .line 47
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->outputProcessUnitsVector(Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;

    move-result-object v0

    return-object v0
.end method

.method public outputProcessUnitsVector(Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;

    .line 48
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/ProcessUnit$Vector;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public outputTensorGroups(I)Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;
    .registers 3
    .param p1, "j"    # I

    .line 54
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->outputTensorGroups(Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;I)Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;

    move-result-object v0

    return-object v0
.end method

.method public outputTensorGroups(Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;I)Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;
    .param p2, "j"    # I

    .line 55
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/TensorGroup;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method public outputTensorGroupsLength()I
    .registers 3

    .line 56
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public outputTensorGroupsVector()Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;
    .registers 2

    .line 57
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->outputTensorGroupsVector(Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;)Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;

    move-result-object v0

    return-object v0
.end method

.method public outputTensorGroupsVector(Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;)Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;

    .line 58
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/TensorGroup$Vector;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public outputTensorMetadata(I)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;
    .registers 3
    .param p1, "j"    # I

    .line 29
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->outputTensorMetadata(Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;I)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;

    move-result-object v0

    return-object v0
.end method

.method public outputTensorMetadata(Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;I)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;
    .param p2, "j"    # I

    .line 30
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method public outputTensorMetadataLength()I
    .registers 3

    .line 31
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector_len(I)I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public outputTensorMetadataVector()Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;
    .registers 2

    .line 32
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->outputTensorMetadataVector(Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;

    move-result-object v0

    return-object v0
.end method

.method public outputTensorMetadataVector(Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;

    .line 33
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata$Vector;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method
