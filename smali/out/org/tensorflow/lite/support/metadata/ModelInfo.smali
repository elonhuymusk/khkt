.class final Lorg/tensorflow/lite/support/metadata/ModelInfo;
.super Ljava/lang/Object;
.source "ModelInfo.java"


# static fields
.field static final METADATA_FIELD_NAME:Ljava/lang/String; = "TFLITE_METADATA"


# instance fields
.field private final inputTensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/schema/Tensor;",
            ">;"
        }
    .end annotation
.end field

.field private final model:Lorg/tensorflow/lite/schema/Model;

.field private final outputTensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/schema/Tensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->assertTFLiteModel(Ljava/nio/ByteBuffer;)V

    .line 66
    invoke-static {p1}, Lorg/tensorflow/lite/schema/Model;->getRootAsModel(Ljava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/Model;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelInfo;->model:Lorg/tensorflow/lite/schema/Model;

    .line 67
    invoke-virtual {v0}, Lorg/tensorflow/lite/schema/Model;->subgraphsLength()I

    move-result v1

    if-lez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    const-string v2, "The model does not contain any subgraph."

    invoke-static {v1, v2}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 69
    invoke-static {v0}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getInputTensors(Lorg/tensorflow/lite/schema/Model;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/tensorflow/lite/support/metadata/ModelInfo;->inputTensors:Ljava/util/List;

    .line 70
    invoke-static {v0}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getOutputTensors(Lorg/tensorflow/lite/schema/Model;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelInfo;->outputTensors:Ljava/util/List;

    .line 71
    return-void
.end method

.method private static assertTFLiteModel(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 220
    const-string v0, "Model flatbuffer cannot be null."

    invoke-static {p0, v0}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    nop

    .line 222
    invoke-static {p0}, Lorg/tensorflow/lite/schema/Model;->ModelBufferHasIdentifier(Ljava/nio/ByteBuffer;)Z

    move-result v0

    .line 221
    const-string v1, "The identifier of the model is invalid. The buffer may not be a valid TFLite model flatbuffer."

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 225
    return-void
.end method

.method private static getInputTensors(Lorg/tensorflow/lite/schema/Model;)Ljava/util/List;
    .registers 6
    .param p0, "model"    # Lorg/tensorflow/lite/schema/Model;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/tensorflow/lite/schema/Model;",
            ")",
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/schema/Tensor;",
            ">;"
        }
    .end annotation

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->subgraphs(I)Lorg/tensorflow/lite/schema/SubGraph;

    move-result-object v0

    .line 247
    .local v0, "subgraph":Lorg/tensorflow/lite/schema/SubGraph;
    invoke-virtual {v0}, Lorg/tensorflow/lite/schema/SubGraph;->inputsLength()I

    move-result v1

    .line 248
    .local v1, "tensorNum":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    .local v2, "inputTensors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/tensorflow/lite/schema/Tensor;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_1f

    .line 250
    invoke-virtual {v0, v3}, Lorg/tensorflow/lite/schema/SubGraph;->inputs(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/tensorflow/lite/schema/SubGraph;->tensors(I)Lorg/tensorflow/lite/schema/Tensor;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 252
    .end local v3    # "i":I
    :cond_1f
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private static getOutputTensors(Lorg/tensorflow/lite/schema/Model;)Ljava/util/List;
    .registers 6
    .param p0, "model"    # Lorg/tensorflow/lite/schema/Model;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/tensorflow/lite/schema/Model;",
            ")",
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/schema/Tensor;",
            ">;"
        }
    .end annotation

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/schema/Model;->subgraphs(I)Lorg/tensorflow/lite/schema/SubGraph;

    move-result-object v0

    .line 259
    .local v0, "subgraph":Lorg/tensorflow/lite/schema/SubGraph;
    invoke-virtual {v0}, Lorg/tensorflow/lite/schema/SubGraph;->outputsLength()I

    move-result v1

    .line 260
    .local v1, "tensorNum":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    .local v2, "outputTensors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/tensorflow/lite/schema/Tensor;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_1f

    .line 262
    invoke-virtual {v0, v3}, Lorg/tensorflow/lite/schema/SubGraph;->outputs(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/tensorflow/lite/schema/SubGraph;->tensors(I)Lorg/tensorflow/lite/schema/Tensor;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 264
    .end local v3    # "i":I
    :cond_1f
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private static getShape(Lorg/tensorflow/lite/schema/Tensor;)[I
    .registers 5
    .param p0, "tensor"    # Lorg/tensorflow/lite/schema/Tensor;

    .line 234
    const-string v0, "Tensor cannot be null."

    invoke-static {p0, v0}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {p0}, Lorg/tensorflow/lite/schema/Tensor;->shapeLength()I

    move-result v0

    .line 236
    .local v0, "shapeDim":I
    new-array v1, v0, [I

    .line 237
    .local v1, "tensorShape":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_17

    .line 238
    invoke-virtual {p0, v2}, Lorg/tensorflow/lite/schema/Tensor;->shape(I)I

    move-result v3

    aput v3, v1, v2

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 240
    .end local v2    # "i":I
    :cond_17
    return-object v1
.end method


# virtual methods
.method getInputTensor(I)Lorg/tensorflow/lite/schema/Tensor;
    .registers 4
    .param p1, "inputIndex"    # I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/Nullable;
    .end annotation

    .line 81
    if-ltz p1, :cond_c

    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelInfo;->inputTensors:Ljava/util/List;

    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 81
    :goto_d
    const-string v1, "The inputIndex specified is invalid."

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelInfo;->inputTensors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tensorflow/lite/schema/Tensor;

    return-object v0
.end method

.method getInputTensorCount()I
    .registers 2

    .line 88
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelInfo;->inputTensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getInputTensorShape(I)[I
    .registers 4
    .param p1, "inputIndex"    # I

    .line 97
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getInputTensor(I)Lorg/tensorflow/lite/schema/Tensor;

    move-result-object v0

    .line 98
    .local v0, "tensor":Lorg/tensorflow/lite/schema/Tensor;
    invoke-static {v0}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getShape(Lorg/tensorflow/lite/schema/Tensor;)[I

    move-result-object v1

    return-object v1
.end method

.method getInputTensorType(I)B
    .registers 3
    .param p1, "inputIndex"    # I

    .line 107
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getInputTensor(I)Lorg/tensorflow/lite/schema/Tensor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/tensorflow/lite/schema/Tensor;->type()B

    move-result v0

    return v0
.end method

.method getMetadataBuffer()Ljava/nio/ByteBuffer;
    .registers 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/Nullable;
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelInfo;->model:Lorg/tensorflow/lite/schema/Model;

    invoke-virtual {v0}, Lorg/tensorflow/lite/schema/Model;->metadataLength()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 115
    return-object v1

    .line 118
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/ModelInfo;->model:Lorg/tensorflow/lite/schema/Model;

    invoke-virtual {v2}, Lorg/tensorflow/lite/schema/Model;->metadataLength()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 119
    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/ModelInfo;->model:Lorg/tensorflow/lite/schema/Model;

    invoke-virtual {v2, v0}, Lorg/tensorflow/lite/schema/Model;->metadata(I)Lorg/tensorflow/lite/schema/Metadata;

    move-result-object v2

    .line 120
    .local v2, "meta":Lorg/tensorflow/lite/schema/Metadata;
    invoke-virtual {v2}, Lorg/tensorflow/lite/schema/Metadata;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TFLITE_METADATA"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 121
    invoke-virtual {v2}, Lorg/tensorflow/lite/schema/Metadata;->buffer()J

    move-result-wide v3

    .line 122
    .local v3, "bufferIndex":J
    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/ModelInfo;->model:Lorg/tensorflow/lite/schema/Model;

    long-to-int v5, v3

    invoke-virtual {v1, v5}, Lorg/tensorflow/lite/schema/Model;->buffers(I)Lorg/tensorflow/lite/schema/Buffer;

    move-result-object v1

    .line 123
    .local v1, "metadataBuf":Lorg/tensorflow/lite/schema/Buffer;
    invoke-virtual {v1}, Lorg/tensorflow/lite/schema/Buffer;->dataAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    return-object v5

    .line 118
    .end local v1    # "metadataBuf":Lorg/tensorflow/lite/schema/Buffer;
    .end local v2    # "meta":Lorg/tensorflow/lite/schema/Metadata;
    .end local v3    # "bufferIndex":J
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 126
    .end local v0    # "i":I
    :cond_38
    return-object v1
.end method

.method getOutputTensor(I)Lorg/tensorflow/lite/schema/Tensor;
    .registers 4
    .param p1, "outputIndex"    # I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/Nullable;
    .end annotation

    .line 137
    if-ltz p1, :cond_c

    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelInfo;->outputTensors:Ljava/util/List;

    .line 138
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 137
    :goto_d
    const-string v1, "The outputIndex specified is invalid."

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelInfo;->outputTensors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tensorflow/lite/schema/Tensor;

    return-object v0
.end method

.method getOutputTensorCount()I
    .registers 2

    .line 144
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ModelInfo;->outputTensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getOutputTensorShape(I)[I
    .registers 4
    .param p1, "outputIndex"    # I

    .line 153
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getOutputTensor(I)Lorg/tensorflow/lite/schema/Tensor;

    move-result-object v0

    .line 154
    .local v0, "tensor":Lorg/tensorflow/lite/schema/Tensor;
    invoke-static {v0}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getShape(Lorg/tensorflow/lite/schema/Tensor;)[I

    move-result-object v1

    return-object v1
.end method

.method getOutputTensorType(I)B
    .registers 3
    .param p1, "outputIndex"    # I

    .line 163
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/metadata/ModelInfo;->getOutputTensor(I)Lorg/tensorflow/lite/schema/Tensor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/tensorflow/lite/schema/Tensor;->type()B

    move-result v0

    return v0
.end method

.method getQuantizationParams(Lorg/tensorflow/lite/schema/Tensor;)Lorg/tensorflow/lite/support/metadata/MetadataExtractor$QuantizationParams;
    .registers 7
    .param p1, "tensor"    # Lorg/tensorflow/lite/schema/Tensor;

    .line 178
    const-string v0, "Tensor cannot be null."

    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {p1}, Lorg/tensorflow/lite/schema/Tensor;->quantization()Lorg/tensorflow/lite/schema/QuantizationParameters;

    move-result-object v0

    .line 186
    .local v0, "quantization":Lorg/tensorflow/lite/schema/QuantizationParameters;
    if-nez v0, :cond_13

    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "scale":F
    const/4 v2, 0x0

    .line 189
    .local v2, "zeroPoint":I
    new-instance v3, Lorg/tensorflow/lite/support/metadata/MetadataExtractor$QuantizationParams;

    invoke-direct {v3, v1, v2}, Lorg/tensorflow/lite/support/metadata/MetadataExtractor$QuantizationParams;-><init>(FI)V

    return-object v3

    .line 194
    .end local v1    # "scale":F
    .end local v2    # "zeroPoint":I
    :cond_13
    nop

    .line 195
    invoke-virtual {v0}, Lorg/tensorflow/lite/schema/QuantizationParameters;->scaleLength()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 194
    :goto_1f
    const-string v4, "Input and output tensors do not support per-channel quantization."

    invoke-static {v1, v4}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 197
    nop

    .line 198
    invoke-virtual {v0}, Lorg/tensorflow/lite/schema/QuantizationParameters;->zeroPointLength()I

    move-result v1

    if-gt v1, v3, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    .line 197
    :goto_2d
    invoke-static {v3, v4}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 204
    invoke-virtual {v0, v2}, Lorg/tensorflow/lite/schema/QuantizationParameters;->scale(I)F

    move-result v1

    .line 207
    .restart local v1    # "scale":F
    invoke-virtual {v0, v2}, Lorg/tensorflow/lite/schema/QuantizationParameters;->zeroPoint(I)J

    move-result-wide v2

    long-to-int v3, v2

    .line 209
    .local v3, "zeroPoint":I
    new-instance v2, Lorg/tensorflow/lite/support/metadata/MetadataExtractor$QuantizationParams;

    invoke-direct {v2, v1, v3}, Lorg/tensorflow/lite/support/metadata/MetadataExtractor$QuantizationParams;-><init>(FI)V

    return-object v2
.end method
