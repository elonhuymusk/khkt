.class public Lorg/tensorflow/lite/support/model/Model$Builder;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/support/model/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final byteModel:Ljava/nio/MappedByteBuffer;

.field private device:Lorg/tensorflow/lite/support/model/Model$Device;

.field private final modelPath:Ljava/lang/String;

.field private numThreads:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2, "modelPath"    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v0, Lorg/tensorflow/lite/support/model/Model$Device;->CPU:Lorg/tensorflow/lite/support/model/Model$Device;

    iput-object v0, p0, Lorg/tensorflow/lite/support/model/Model$Builder;->device:Lorg/tensorflow/lite/support/model/Model$Device;

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lorg/tensorflow/lite/support/model/Model$Builder;->numThreads:I

    .line 117
    iput-object p2, p0, Lorg/tensorflow/lite/support/model/Model$Builder;->modelPath:Ljava/lang/String;

    .line 118
    invoke-static {p1, p2}, Lorg/tensorflow/lite/support/common/FileUtil;->loadMappedFile(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/support/model/Model$Builder;->byteModel:Ljava/nio/MappedByteBuffer;

    .line 119
    return-void
.end method


# virtual methods
.method public build()Lorg/tensorflow/lite/support/model/Model;
    .registers 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 139
    new-instance v0, Lorg/tensorflow/lite/support/model/Model$Options$Builder;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/model/Model$Options$Builder;-><init>()V

    iget v1, p0, Lorg/tensorflow/lite/support/model/Model$Builder;->numThreads:I

    invoke-virtual {v0, v1}, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->setNumThreads(I)Lorg/tensorflow/lite/support/model/Model$Options$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/tensorflow/lite/support/model/Model$Builder;->device:Lorg/tensorflow/lite/support/model/Model$Device;

    invoke-virtual {v0, v1}, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->setDevice(Lorg/tensorflow/lite/support/model/Model$Device;)Lorg/tensorflow/lite/support/model/Model$Options$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->build()Lorg/tensorflow/lite/support/model/Model$Options;

    move-result-object v0

    .line 140
    .local v0, "options":Lorg/tensorflow/lite/support/model/Model$Options;
    iget-object v1, p0, Lorg/tensorflow/lite/support/model/Model$Builder;->byteModel:Ljava/nio/MappedByteBuffer;

    iget-object v2, p0, Lorg/tensorflow/lite/support/model/Model$Builder;->modelPath:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/tensorflow/lite/support/model/Model;->createModel(Ljava/nio/MappedByteBuffer;Ljava/lang/String;Lorg/tensorflow/lite/support/model/Model$Options;)Lorg/tensorflow/lite/support/model/Model;

    move-result-object v1

    return-object v1
.end method

.method public setDevice(Lorg/tensorflow/lite/support/model/Model$Device;)Lorg/tensorflow/lite/support/model/Model$Builder;
    .registers 2
    .param p1, "device"    # Lorg/tensorflow/lite/support/model/Model$Device;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 124
    iput-object p1, p0, Lorg/tensorflow/lite/support/model/Model$Builder;->device:Lorg/tensorflow/lite/support/model/Model$Device;

    .line 125
    return-object p0
.end method

.method public setNumThreads(I)Lorg/tensorflow/lite/support/model/Model$Builder;
    .registers 2
    .param p1, "numThreads"    # I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 131
    iput p1, p0, Lorg/tensorflow/lite/support/model/Model$Builder;->numThreads:I

    .line 132
    return-object p0
.end method
