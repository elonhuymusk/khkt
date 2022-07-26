.class public Lorg/tensorflow/lite/support/label/ops/LabelAxisOp$Builder;
.super Ljava/lang/Object;
.source "LabelAxisOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/support/label/ops/LabelAxisOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method protected constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/support/label/ops/LabelAxisOp$Builder;->axisLabels:Ljava/util/Map;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lorg/tensorflow/lite/support/label/ops/LabelAxisOp$Builder;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lorg/tensorflow/lite/support/label/ops/LabelAxisOp$Builder;

    .line 49
    iget-object v0, p0, Lorg/tensorflow/lite/support/label/ops/LabelAxisOp$Builder;->axisLabels:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public addAxisLabel(ILjava/util/List;)Lorg/tensorflow/lite/support/label/ops/LabelAxisOp$Builder;
    .registers 5
    .param p1, "axis"    # I
    .param p2    # Ljava/util/List;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/tensorflow/lite/support/label/ops/LabelAxisOp$Builder;"
        }
    .end annotation

    .line 66
    .local p2, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/tensorflow/lite/support/label/ops/LabelAxisOp$Builder;->axisLabels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-object p0
.end method

.method public addAxisLabel(Landroid/content/Context;ILjava/lang/String;)Lorg/tensorflow/lite/support/label/ops/LabelAxisOp$Builder;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2, "axis"    # I
    .param p3, "filePath"    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const-string v0, "Context cannot be null."

    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "File path cannot be null."

    invoke-static {p3, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p1, p3}, Lorg/tensorflow/lite/support/common/FileUtil;->loadLabels(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/tensorflow/lite/support/label/ops/LabelAxisOp$Builder;->axisLabels:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-object p0
.end method

.method public build()Lorg/tensorflow/lite/support/label/ops/LabelAxisOp;
    .registers 2

    .line 71
    new-instance v0, Lorg/tensorflow/lite/support/label/ops/LabelAxisOp;

    invoke-direct {v0, p0}, Lorg/tensorflow/lite/support/label/ops/LabelAxisOp;-><init>(Lorg/tensorflow/lite/support/label/ops/LabelAxisOp$Builder;)V

    return-object v0
.end method
