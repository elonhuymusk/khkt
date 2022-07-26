.class public Lcom/example/myapplication/ml/Model$Outputs;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/myapplication/ml/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Outputs"
.end annotation


# instance fields
.field private outputFeature0:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

.field final synthetic this$0:Lcom/example/myapplication/ml/Model;


# direct methods
.method private constructor <init>(Lcom/example/myapplication/ml/Model;Lorg/tensorflow/lite/support/model/Model;)V
    .registers 5
    .param p1, "this$0"    # Lcom/example/myapplication/ml/Model;
    .param p2, "model"    # Lorg/tensorflow/lite/support/model/Model;

    .line 52
    iput-object p1, p0, Lcom/example/myapplication/ml/Model$Outputs;->this$0:Lcom/example/myapplication/ml/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/tensorflow/lite/support/model/Model;->getOutputTensorShape(I)[I

    move-result-object v0

    sget-object v1, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createFixedSize([ILorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/example/myapplication/ml/Model$Outputs;->outputFeature0:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/example/myapplication/ml/Model;Lorg/tensorflow/lite/support/model/Model;Lcom/example/myapplication/ml/Model$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/example/myapplication/ml/Model;
    .param p2, "x1"    # Lorg/tensorflow/lite/support/model/Model;
    .param p3, "x2"    # Lcom/example/myapplication/ml/Model$1;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/example/myapplication/ml/Model$Outputs;-><init>(Lcom/example/myapplication/ml/Model;Lorg/tensorflow/lite/support/model/Model;)V

    return-void
.end method

.method static synthetic access$100(Lcom/example/myapplication/ml/Model$Outputs;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/example/myapplication/ml/Model$Outputs;

    .line 49
    invoke-direct {p0}, Lcom/example/myapplication/ml/Model$Outputs;->getBuffer()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getBuffer()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v0, "outputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/example/myapplication/ml/Model$Outputs;->outputFeature0:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-object v0
.end method


# virtual methods
.method public getOutputFeature0AsTensorBuffer()Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/example/myapplication/ml/Model$Outputs;->outputFeature0:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    return-object v0
.end method
