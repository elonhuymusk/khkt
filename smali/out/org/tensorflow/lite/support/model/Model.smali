.class public Lorg/tensorflow/lite/support/model/Model;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/model/Model$Builder;,
        Lorg/tensorflow/lite/support/model/Model$Options;,
        Lorg/tensorflow/lite/support/model/Model$Device;
    }
.end annotation


# instance fields
.field private final byteModel:Ljava/nio/MappedByteBuffer;

.field private final gpuDelegateProxy:Lorg/tensorflow/lite/support/model/GpuDelegateProxy;

.field private final interpreter:Lorg/tensorflow/lite/Interpreter;

.field private final modelPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/nio/MappedByteBuffer;Lorg/tensorflow/lite/Interpreter;Lorg/tensorflow/lite/support/model/GpuDelegateProxy;)V
    .registers 5
    .param p1, "modelPath"    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2, "byteModel"    # Ljava/nio/MappedByteBuffer;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p3, "interpreter"    # Lorg/tensorflow/lite/Interpreter;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p4, "gpuDelegateProxy"    # Lorg/tensorflow/lite/support/model/GpuDelegateProxy;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/Nullable;
        .end annotation
    .end param

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lorg/tensorflow/lite/support/model/Model;->modelPath:Ljava/lang/String;

    .line 281
    iput-object p2, p0, Lorg/tensorflow/lite/support/model/Model;->byteModel:Ljava/nio/MappedByteBuffer;

    .line 282
    iput-object p3, p0, Lorg/tensorflow/lite/support/model/Model;->interpreter:Lorg/tensorflow/lite/Interpreter;

    .line 283
    iput-object p4, p0, Lorg/tensorflow/lite/support/model/Model;->gpuDelegateProxy:Lorg/tensorflow/lite/support/model/GpuDelegateProxy;

    .line 284
    return-void
.end method

.method public static createModel(Landroid/content/Context;Ljava/lang/String;)Lorg/tensorflow/lite/support/model/Model;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p1, "modelPath"    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    new-instance v0, Lorg/tensorflow/lite/support/model/Model$Options$Builder;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/model/Model$Options$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->build()Lorg/tensorflow/lite/support/model/Model$Options;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/tensorflow/lite/support/model/Model;->createModel(Landroid/content/Context;Ljava/lang/String;Lorg/tensorflow/lite/support/model/Model$Options;)Lorg/tensorflow/lite/support/model/Model;

    move-result-object v0

    return-object v0
.end method

.method public static createModel(Landroid/content/Context;Ljava/lang/String;Lorg/tensorflow/lite/support/model/Model$Options;)Lorg/tensorflow/lite/support/model/Model;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p1, "modelPath"    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Lorg/tensorflow/lite/support/model/Model$Options;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    const-string v0, "Model path in the asset folder cannot be empty."

    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/common/FileUtil;->loadMappedFile(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 173
    .local v0, "byteModel":Ljava/nio/MappedByteBuffer;
    invoke-static {v0, p1, p2}, Lorg/tensorflow/lite/support/model/Model;->createModel(Ljava/nio/MappedByteBuffer;Ljava/lang/String;Lorg/tensorflow/lite/support/model/Model$Options;)Lorg/tensorflow/lite/support/model/Model;

    move-result-object v1

    return-object v1
.end method

.method public static createModel(Ljava/nio/MappedByteBuffer;Ljava/lang/String;Lorg/tensorflow/lite/support/model/Model$Options;)Lorg/tensorflow/lite/support/model/Model;
    .registers 7
    .param p0, "byteModel"    # Ljava/nio/MappedByteBuffer;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p1, "modelPath"    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Lorg/tensorflow/lite/support/model/Model$Options;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 189
    new-instance v0, Lorg/tensorflow/lite/Interpreter$Options;

    invoke-direct {v0}, Lorg/tensorflow/lite/Interpreter$Options;-><init>()V

    .line 190
    .local v0, "interpreterOptions":Lorg/tensorflow/lite/Interpreter$Options;
    const/4 v1, 0x0

    .line 191
    .local v1, "gpuDelegateProxy":Lorg/tensorflow/lite/support/model/GpuDelegateProxy;
    sget-object v2, Lorg/tensorflow/lite/support/model/Model$1;->$SwitchMap$org$tensorflow$lite$support$model$Model$Device:[I

    invoke-static {p2}, Lorg/tensorflow/lite/support/model/Model$Options;->access$300(Lorg/tensorflow/lite/support/model/Model$Options;)Lorg/tensorflow/lite/support/model/Model$Device;

    move-result-object v3

    invoke-virtual {v3}, Lorg/tensorflow/lite/support/model/Model$Device;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_3e

    goto :goto_2c

    .line 196
    :pswitch_17
    invoke-static {}, Lorg/tensorflow/lite/support/model/GpuDelegateProxy;->maybeNewInstance()Lorg/tensorflow/lite/support/model/GpuDelegateProxy;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    const-string v2, "Cannot inference with GPU. Did you add \"tensorflow-lite-gpu\" as dependency?"

    invoke-static {v3, v2}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 200
    invoke-virtual {v0, v1}, Lorg/tensorflow/lite/Interpreter$Options;->addDelegate(Lorg/tensorflow/lite/Delegate;)Lorg/tensorflow/lite/Interpreter$Options;

    .line 201
    goto :goto_2c

    .line 193
    :pswitch_28
    invoke-virtual {v0, v3}, Lorg/tensorflow/lite/Interpreter$Options;->setUseNNAPI(Z)Lorg/tensorflow/lite/Interpreter$Options;

    .line 194
    nop

    .line 205
    :goto_2c
    invoke-static {p2}, Lorg/tensorflow/lite/support/model/Model$Options;->access$400(Lorg/tensorflow/lite/support/model/Model$Options;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/tensorflow/lite/Interpreter$Options;->setNumThreads(I)Lorg/tensorflow/lite/Interpreter$Options;

    .line 206
    new-instance v2, Lorg/tensorflow/lite/Interpreter;

    invoke-direct {v2, p0, v0}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V

    .line 207
    .local v2, "interpreter":Lorg/tensorflow/lite/Interpreter;
    new-instance v3, Lorg/tensorflow/lite/support/model/Model;

    invoke-direct {v3, p1, p0, v2, v1}, Lorg/tensorflow/lite/support/model/Model;-><init>(Ljava/lang/String;Ljava/nio/MappedByteBuffer;Lorg/tensorflow/lite/Interpreter;Lorg/tensorflow/lite/support/model/GpuDelegateProxy;)V

    return-object v3

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_28
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 267
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/Model;->interpreter:Lorg/tensorflow/lite/Interpreter;

    if-eqz v0, :cond_7

    .line 268
    invoke-virtual {v0}, Lorg/tensorflow/lite/Interpreter;->close()V

    .line 270
    :cond_7
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/Model;->gpuDelegateProxy:Lorg/tensorflow/lite/support/model/GpuDelegateProxy;

    if-eqz v0, :cond_e

    .line 271
    invoke-virtual {v0}, Lorg/tensorflow/lite/support/model/GpuDelegateProxy;->close()V

    .line 273
    :cond_e
    return-void
.end method

.method public getData()Ljava/nio/MappedByteBuffer;
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/Model;->byteModel:Ljava/nio/MappedByteBuffer;

    return-object v0
.end method

.method public getInputTensor(I)Lorg/tensorflow/lite/Tensor;
    .registers 3
    .param p1, "inputIndex"    # I

    .line 228
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/Model;->interpreter:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/Interpreter;->getInputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public getOutputTensor(I)Lorg/tensorflow/lite/Tensor;
    .registers 3
    .param p1, "outputIndex"    # I

    .line 237
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/Model;->interpreter:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/Interpreter;->getOutputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public getOutputTensorShape(I)[I
    .registers 3
    .param p1, "outputIndex"    # I

    .line 246
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/Model;->interpreter:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/Interpreter;->getOutputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/tensorflow/lite/Tensor;->shape()[I

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/Model;->modelPath:Ljava/lang/String;

    return-object v0
.end method

.method public run([Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4
    .param p1, "inputs"    # [Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 263
    .local p2, "outputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/Model;->interpreter:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0, p1, p2}, Lorg/tensorflow/lite/Interpreter;->runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V

    .line 264
    return-void
.end method
