.class final Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;
.super Ljava/lang/Object;
.source "ModelMetadataInfo.java"


# instance fields
.field private final inputsMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final minVersion:Ljava/lang/String;

.field private final modelMetadata:Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;

.field private final outputsMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->assertTFLiteMetadata(Ljava/nio/ByteBuffer;)V

    .line 55
    invoke-static {p1}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->getRootAsModelMetadata(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->modelMetadata:Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;

    .line 56
    nop

    .line 57
    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->subgraphMetadataLength()I

    move-result v1

    if-lez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 56
    :goto_16
    const-string v2, "The metadata flatbuffer does not contain any subgraph metadata."

    invoke-static {v1, v2}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 60
    invoke-static {v0}, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->getInputsMetadata(Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->inputsMetadata:Ljava/util/List;

    .line 61
    invoke-static {v0}, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->getOutputsMetadata(Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->outputsMetadata:Ljava/util/List;

    .line 62
    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->minParserVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->minVersion:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private static assertTFLiteMetadata(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 125
    const-string v0, "Metadata flatbuffer cannot be null."

    invoke-static {p0, v0}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    nop

    .line 127
    invoke-static {p0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->ModelMetadataBufferHasIdentifier(Ljava/nio/ByteBuffer;)Z

    move-result v0

    .line 126
    const-string v1, "The identifier of the metadata is invalid. The buffer may not be a valid TFLite metadata flatbuffer."

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 130
    return-void
.end method

.method private static getInputsMetadata(Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;)Ljava/util/List;
    .registers 6
    .param p0, "modelMetadata"    # Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;",
            ")",
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;",
            ">;"
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->subgraphMetadata(I)Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;

    move-result-object v0

    .line 135
    .local v0, "subgraphMetadata":Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;
    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->inputTensorMetadataLength()I

    move-result v1

    .line 136
    .local v1, "tensorNum":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .local v2, "inputsMetadata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_1b

    .line 138
    invoke-virtual {v0, v3}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->inputTensorMetadata(I)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 140
    .end local v3    # "i":I
    :cond_1b
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private static getOutputsMetadata(Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;)Ljava/util/List;
    .registers 6
    .param p0, "modelMetadata"    # Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;",
            ")",
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;",
            ">;"
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;->subgraphMetadata(I)Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;

    move-result-object v0

    .line 146
    .local v0, "subgraphMetadata":Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;
    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->outputTensorMetadataLength()I

    move-result v1

    .line 147
    .local v1, "tensorNum":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    .local v2, "outputsMetadata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_1b

    .line 149
    invoke-virtual {v0, v3}, Lorg/tensorflow/lite/support/metadata/schema/SubGraphMetadata;->outputTensorMetadata(I)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 151
    .end local v3    # "i":I
    :cond_1b
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method getInputTensorCount()I
    .registers 2

    .line 67
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->inputsMetadata:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getInputTensorMetadata(I)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;
    .registers 4
    .param p1, "inputIndex"    # I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/Nullable;
    .end annotation

    .line 78
    if-ltz p1, :cond_c

    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->inputsMetadata:Ljava/util/List;

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 78
    :goto_d
    const-string v1, "The inputIndex specified is invalid."

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->inputsMetadata:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;

    return-object v0
.end method

.method getMininumParserVersion()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/Nullable;
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->minVersion:Ljava/lang/String;

    return-object v0
.end method

.method getModelMetadata()Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;
    .registers 2

    .line 95
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->modelMetadata:Lorg/tensorflow/lite/support/metadata/schema/ModelMetadata;

    return-object v0
.end method

.method getOutputTensorCount()I
    .registers 2

    .line 100
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->outputsMetadata:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getOutputTensorMetadata(I)Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;
    .registers 4
    .param p1, "outputIndex"    # I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/Nullable;
    .end annotation

    .line 111
    if-ltz p1, :cond_c

    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->outputsMetadata:Ljava/util/List;

    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 111
    :goto_d
    const-string v1, "The outputIndex specified is invalid."

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelMetadataInfo;->outputsMetadata:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tensorflow/lite/support/metadata/schema/TensorMetadata;

    return-object v0
.end method
