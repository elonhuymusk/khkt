.class public Lorg/tensorflow/lite/support/label/ops/LabelAxisOp;
.super Ljava/lang/Object;
.source "LabelAxisOp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/label/ops/LabelAxisOp$Builder;
    }
.end annotation


# instance fields
.field private final axisLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/tensorflow/lite/support/label/ops/LabelAxisOp$Builder;)V
    .registers 3
    .param p1, "builder"    # Lorg/tensorflow/lite/support/label/ops/LabelAxisOp$Builder;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lorg/tensorflow/lite/support/label/ops/LabelAxisOp$Builder;->access$000(Lorg/tensorflow/lite/support/label/ops/LabelAxisOp$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/support/label/ops/LabelAxisOp;->axisLabels:Ljava/util/Map;

    .line 41
    return-void
.end method


# virtual methods
.method public apply(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Lorg/tensorflow/lite/support/label/TensorLabel;
    .registers 4
    .param p1, "buffer"    # Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 44
    const-string v0, "Tensor buffer cannot be null."

    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v0, Lorg/tensorflow/lite/support/label/TensorLabel;

    iget-object v1, p0, Lorg/tensorflow/lite/support/label/ops/LabelAxisOp;->axisLabels:Ljava/util/Map;

    invoke-direct {v0, v1, p1}, Lorg/tensorflow/lite/support/label/TensorLabel;-><init>(Ljava/util/Map;Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)V

    return-object v0
.end method
