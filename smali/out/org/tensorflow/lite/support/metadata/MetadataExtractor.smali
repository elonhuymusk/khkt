.class public Lorg/tensorflow/lite/support/metadata/MetadataExtractor;
.super Ljava/lang/Object;
.source "MetadataExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/metadata/MetadataExtractor$QuantizationParams;
    }
.end annotation


# instance fields
.field private final metadataInfo:Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/Nullable;
    .end annotation
.end field

.field private final modelInfo:Lorg/tensorflow/lite/support/metadata/ModelInfo;

.field private final zipFile:Lorg/tensorflow/lite/support/metadata/ZipFile;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 11
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lorg/tensorflow/lite/support/metadata/ModelInfo;

    invoke-direct {v0, p1}, Lorg/tensorflow/lite/support/metadata/ModelInfo;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->modelInfo:Lorg/tensorflow/lite/support/metadata/ModelInfo;

    .line 76
    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getMetadataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 77
    .local v1, "metadataBuffer":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_8e

    .line 78
    new-instance v2, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;

    invoke-direct {v2, v1}, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v2, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->metadataInfo:Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;

    .line 81
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->isMinimumParserVersionSatisfied()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_33

    .line 82
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-array v7, v4, [Ljava/lang/Object;

    .line 85
    invoke-virtual {v2}, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->getMininumParserVersion()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v8, "1.2.1"

    aput-object v8, v7, v5

    .line 82
    const-string v8, "<Warning> Some fields in the metadata belong to a future schema. The minimum parser version required is %s, but the version of the current metadata parser is %s"

    invoke-virtual {v3, v8, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 88
    :cond_33
    nop

    .line 89
    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getInputTensorCount()I

    move-result v3

    invoke-virtual {v2}, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->getInputTensorCount()I

    move-result v7

    if-ne v3, v7, :cond_40

    const/4 v3, 0x1

    goto :goto_41

    :cond_40
    const/4 v3, 0x0

    :goto_41
    new-array v7, v4, [Ljava/lang/Object;

    .line 93
    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getInputTensorCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v2}, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->getInputTensorCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 90
    const-string v8, "The number of input tensors in the model is %d. The number of input tensors that recorded in the metadata is %d. These two values does not match."

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 88
    invoke-static {v3, v7}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 94
    nop

    .line 95
    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getOutputTensorCount()I

    move-result v3

    invoke-virtual {v2}, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->getOutputTensorCount()I

    move-result v7

    if-ne v3, v7, :cond_6d

    const/4 v3, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v3, 0x0

    :goto_6e
    new-array v4, v4, [Ljava/lang/Object;

    .line 99
    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getOutputTensorCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2}, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->getOutputTensorCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 96
    const-string v0, "The number of output tensors in the model is %d. The number of output tensors that recorded in the metadata is %d. These two values does not match."

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v3, v0}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_91

    .line 103
    :cond_8e
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->metadataInfo:Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;

    .line 106
    :goto_91
    invoke-static {p1}, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->createZipFile(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/ZipFile;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->zipFile:Lorg/tensorflow/lite/support/metadata/ZipFile;

    .line 107
    return-void
.end method

.method private assertMetadataInfo()V
    .registers 3

    .line 311
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->metadataInfo:Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;

    if-eqz v0, :cond_5

    .line 314
    return-void

    .line 312
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This model does not contain model metadata."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertZipFile()V
    .registers 3

    .line 324
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->zipFile:Lorg/tensorflow/lite/support/metadata/ZipFile;

    if-eqz v0, :cond_5

    .line 328
    return-void

    .line 325
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This model does not contain associated files, and is not a Zip file."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static compareVersions(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p0, "version1"    # Ljava/lang/String;
    .param p1, "version2"    # Ljava/lang/String;

    .line 365
    const-string v0, "\\."

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "levels1":[Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "levels2":[Ljava/lang/String;
    array-length v3, v2

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 369
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    if-ge v4, v3, :cond_3c

    .line 370
    array-length v5, v2

    if-ge v4, v5, :cond_1e

    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1f

    :cond_1e
    const/4 v5, 0x0

    :goto_1f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 371
    .local v5, "v1":Ljava/lang/Integer;
    array-length v6, v0

    if-ge v4, v6, :cond_2d

    aget-object v6, v0, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_2e

    :cond_2d
    const/4 v6, 0x0

    :goto_2e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 372
    .local v6, "v2":Ljava/lang/Integer;
    invoke-virtual {v5, v6}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v7

    .line 373
    .local v7, "compare":I
    if-eqz v7, :cond_39

    .line 374
    return v7

    .line 369
    .end local v5    # "v1":Ljava/lang/Integer;
    .end local v6    # "v2":Ljava/lang/Integer;
    .end local v7    # "compare":I
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 378
    .end local v4    # "i":I
    :cond_3c
    return v1
.end method

.method private static createZipFile(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/ZipFile;
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/Nullable;
    .end annotation

    .line 341
    :try_start_0
    new-instance v0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    invoke-direct {v0, p0}, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;-><init>(Ljava/nio/ByteBuffer;)V

    .line 342
    .local v0, "byteBufferChannel":Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;
    invoke-static {v0}, Lorg/tensorflow/lite/support/metadata/ZipFile;->createFrom(Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;)Lorg/tensorflow/lite/support/metadata/ZipFile;

    move-result-object v1
    :try_end_9
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v1

    .line 343
    .end local v0    # "byteBufferChannel":Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;
    :catch_a
    move-exception v0

    .line 346
    .local v0, "e":Ljava/util/zip/ZipException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getAssociatedFile(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->assertZipFile()V

    .line 166
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->zipFile:Lorg/tensorflow/lite/support/metadata/ZipFile;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/support/metadata/ZipFile;->getRawInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getAssociatedFileNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->assertZipFile()V

    .line 177
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->zipFile:Lorg/tensorflow/lite/support/metadata/ZipFile;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/ZipFile;->getFileNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInputTensorCount()I
    .registers 2

    .line 182
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->modelInfo:Lorg/tensorflow/lite/support/metadata/ModelInfo;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getInputTensorCount()I

    move-result v0

    return v0
.end method

.method public getInputTensorMetadata(I)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;
    .registers 3
    .param p1, "inputIndex"    # I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/Nullable;
    .end annotation

    .line 193
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->assertMetadataInfo()V

    .line 194
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->metadataInfo:Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->getInputTensorMetadata(I)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getInputTensorQuantizationParams(I)Lorg/tensorflow/lite/support/metadata/MetadataExtractor$QuantizationParams;
    .registers 4
    .param p1, "inputIndex"    # I

    .line 203
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->modelInfo:Lorg/tensorflow/lite/support/metadata/ModelInfo;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getInputTensor(I)Lorg/tensorflow/lite/schema/Tensor;

    move-result-object v0

    .line 204
    .local v0, "tensor":Lorg/tensorflow/lite/schema/Tensor;
    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->modelInfo:Lorg/tensorflow/lite/support/metadata/ModelInfo;

    invoke-virtual {v1, v0}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getQuantizationParams(Lorg/tensorflow/lite/schema/Tensor;)Lorg/tensorflow/lite/support/metadata/MetadataExtractor$QuantizationParams;

    move-result-object v1

    return-object v1
.end method

.method public getInputTensorShape(I)[I
    .registers 3
    .param p1, "inputIndex"    # I

    .line 213
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->modelInfo:Lorg/tensorflow/lite/support/metadata/ModelInfo;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getInputTensorShape(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getInputTensorType(I)B
    .registers 3
    .param p1, "inputIndex"    # I

    .line 222
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->modelInfo:Lorg/tensorflow/lite/support/metadata/ModelInfo;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getInputTensorType(I)B

    move-result v0

    return v0
.end method

.method public getModelMetadata()Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;
    .registers 2

    .line 231
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->assertMetadataInfo()V

    .line 232
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->metadataInfo:Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->getModelMetadata()Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getOutputTensorCount()I
    .registers 2

    .line 237
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->modelInfo:Lorg/tensorflow/lite/support/metadata/ModelInfo;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getOutputTensorCount()I

    move-result v0

    return v0
.end method

.method public getOutputTensorMetadata(I)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;
    .registers 3
    .param p1, "outputIndex"    # I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/Nullable;
    .end annotation

    .line 248
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->assertMetadataInfo()V

    .line 249
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->metadataInfo:Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->getOutputTensorMetadata(I)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getOutputTensorQuantizationParams(I)Lorg/tensorflow/lite/support/metadata/MetadataExtractor$QuantizationParams;
    .registers 4
    .param p1, "outputIndex"    # I

    .line 258
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->modelInfo:Lorg/tensorflow/lite/support/metadata/ModelInfo;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getOutputTensor(I)Lorg/tensorflow/lite/schema/Tensor;

    move-result-object v0

    .line 259
    .local v0, "tensor":Lorg/tensorflow/lite/schema/Tensor;
    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->modelInfo:Lorg/tensorflow/lite/support/metadata/ModelInfo;

    invoke-virtual {v1, v0}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getQuantizationParams(Lorg/tensorflow/lite/schema/Tensor;)Lorg/tensorflow/lite/support/metadata/MetadataExtractor$QuantizationParams;

    move-result-object v1

    return-object v1
.end method

.method public getOutputTensorShape(I)[I
    .registers 3
    .param p1, "outputIndex"    # I

    .line 268
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->modelInfo:Lorg/tensorflow/lite/support/metadata/ModelInfo;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getOutputTensorShape(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getOutputTensorType(I)B
    .registers 3
    .param p1, "outputIndex"    # I

    .line 277
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->modelInfo:Lorg/tensorflow/lite/support/metadata/ModelInfo;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getOutputTensorType(I)B

    move-result v0

    return v0
.end method

.method public hasMetadata()Z
    .registers 2

    .line 153
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->metadataInfo:Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final isMinimumParserVersionSatisfied()Z
    .registers 4

    .line 297
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->metadataInfo:Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->getMininumParserVersion()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "minVersion":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 299
    return v1

    .line 301
    :cond_a
    const-string v2, "1.2.1"

    invoke-static {v0, v2}, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method
