.class public final Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;
.super Lcom/google/flatbuffers/Table;
.source "SentencePieceTokenizerOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions$Vector;
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
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addSentencePieceModel(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "sentencePieceModelOffset"    # I

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addVocabFile(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "vocabFileOffset"    # I

    .line 42
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createSentencePieceModelVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 40
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

.method public static createSentencePieceTokenizerOptions(Lcom/google/flatbuffers/FlatBufferBuilder;II)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "sentencePiece_modelOffset"    # I
    .param p2, "vocab_fileOffset"    # I

    .line 32
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 33
    invoke-static {p0, p2}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->addVocabFile(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 34
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->addSentencePieceModel(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 35
    invoke-static {p0}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->endSentencePieceTokenizerOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static createVocabFileVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .registers 4
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 43
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

.method public static endSentencePieceTokenizerOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 46
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 47
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsSentencePieceTokenizerOptions(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;
    .registers 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;-><init>()V

    invoke-static {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->getRootAsSentencePieceTokenizerOptions(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;)Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsSentencePieceTokenizerOptions(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;)Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;
    .registers 4
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;

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

    invoke-virtual {p1, v0, p0}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;

    move-result-object v0

    return-object v0
.end method

.method public static startSentencePieceModelVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 41
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startSentencePieceTokenizerOptions(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 38
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method

.method public static startVocabFileVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 44
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public sentencePieceModel(I)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;
    .registers 3
    .param p1, "j"    # I

    .line 18
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->sentencePieceModel(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;I)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;

    move-result-object v0

    return-object v0
.end method

.method public sentencePieceModel(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;I)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;
    .param p2, "j"    # I

    .line 19
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;

    move-result-object v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return-object v1
.end method

.method public sentencePieceModelLength()I
    .registers 3

    .line 20
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__vector_len(I)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public sentencePieceModelVector()Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;
    .registers 2

    .line 21
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->sentencePieceModelVector(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    move-result-object v0

    return-object v0
.end method

.method public sentencePieceModelVector(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    .line 22
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__offset(I)I

    move-result v1

    .local v1, "o":I
    if-eqz v1, :cond_12

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__vector(I)I

    move-result v2

    iget-object v3, p0, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2, v0, v3}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0
.end method

.method public vocabFile(I)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;
    .registers 3
    .param p1, "j"    # I

    .line 23
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->vocabFile(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;I)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;

    move-result-object v0

    return-object v0
.end method

.method public vocabFile(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;I)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;
    .param p2, "j"    # I

    .line 24
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile;

    move-result-object v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return-object v1
.end method

.method public vocabFileLength()I
    .registers 3

    .line 25
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__vector_len(I)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public vocabFileVector()Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;
    .registers 2

    .line 26
    new-instance v0, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->vocabFileVector(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    move-result-object v0

    return-object v0
.end method

.method public vocabFileVector(Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;
    .registers 6
    .param p1, "obj"    # Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    .line 27
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->__vector(I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/tensorflow/lite/support/metadata/schema/SentencePieceTokenizerOptions;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2, v3}, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;->__assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/AssociatedFile$Vector;

    move-result-object v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return-object v1
.end method
