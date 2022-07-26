.class public final Lcom/example/myapplication/ml/Model;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/myapplication/ml/Model$Outputs;
    }
.end annotation


# instance fields
.field private final model:Lorg/tensorflow/lite/support/model/Model;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lorg/tensorflow/lite/support/model/Model$Options;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lorg/tensorflow/lite/support/model/Model$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "model.tflite"

    invoke-static {p1, v0, p2}, Lorg/tensorflow/lite/support/model/Model;->createModel(Landroid/content/Context;Ljava/lang/String;Lorg/tensorflow/lite/support/model/Model$Options;)Lorg/tensorflow/lite/support/model/Model;

    move-result-object v0

    iput-object v0, p0, Lcom/example/myapplication/ml/Model;->model:Lorg/tensorflow/lite/support/model/Model;

    .line 23
    new-instance v1, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/model/Model;->getData()Ljava/nio/MappedByteBuffer;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/tensorflow/lite/support/metadata/MetadataExtractor;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    .line 24
    .local v0, "extractor":Lorg/tensorflow/lite/support/metadata/MetadataExtractor;
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/example/myapplication/ml/Model;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/example/myapplication/ml/Model;

    new-instance v1, Lorg/tensorflow/lite/support/model/Model$Options$Builder;

    invoke-direct {v1}, Lorg/tensorflow/lite/support/model/Model$Options$Builder;-><init>()V

    invoke-virtual {v1}, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->build()Lorg/tensorflow/lite/support/model/Model$Options;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/example/myapplication/ml/Model;-><init>(Landroid/content/Context;Lorg/tensorflow/lite/support/model/Model$Options;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lorg/tensorflow/lite/support/model/Model$Options;)Lcom/example/myapplication/ml/Model;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Lorg/tensorflow/lite/support/model/Model$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/example/myapplication/ml/Model;

    invoke-direct {v0, p0, p1}, Lcom/example/myapplication/ml/Model;-><init>(Landroid/content/Context;Lorg/tensorflow/lite/support/model/Model$Options;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/example/myapplication/ml/Model;->model:Lorg/tensorflow/lite/support/model/Model;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/model/Model;->close()V

    .line 47
    return-void
.end method

.method public process(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Lcom/example/myapplication/ml/Model$Outputs;
    .registers 8
    .param p1, "inputFeature0"    # Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    .line 39
    move-object v0, p1

    .line 40
    .local v0, "processedinputFeature0":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    new-instance v1, Lcom/example/myapplication/ml/Model$Outputs;

    iget-object v2, p0, Lcom/example/myapplication/ml/Model;->model:Lorg/tensorflow/lite/support/model/Model;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/example/myapplication/ml/Model$Outputs;-><init>(Lcom/example/myapplication/ml/Model;Lorg/tensorflow/lite/support/model/Model;Lcom/example/myapplication/ml/Model$1;)V

    .line 41
    .local v1, "outputs":Lcom/example/myapplication/ml/Model$Outputs;
    iget-object v2, p0, Lcom/example/myapplication/ml/Model;->model:Lorg/tensorflow/lite/support/model/Model;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1}, Lcom/example/myapplication/ml/Model$Outputs;->access$100(Lcom/example/myapplication/ml/Model$Outputs;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/tensorflow/lite/support/model/Model;->run([Ljava/lang/Object;Ljava/util/Map;)V

    .line 42
    return-object v1
.end method
