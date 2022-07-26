.class public Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;
.super Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/support/image/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder<",
        "Lorg/tensorflow/lite/support/image/TensorImage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;-><init>()V

    .line 123
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Lorg/tensorflow/lite/support/common/Operator;)Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;
    .registers 2
    .param p1    # Lorg/tensorflow/lite/support/common/Operator;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 120
    invoke-super {p0, p1}, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->add(Lorg/tensorflow/lite/support/common/Operator;)Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/tensorflow/lite/support/common/TensorOperator;)Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;
    .registers 3
    .param p1, "op"    # Lorg/tensorflow/lite/support/common/TensorOperator;

    .line 143
    new-instance v0, Lorg/tensorflow/lite/support/image/ops/TensorOperatorWrapper;

    invoke-direct {v0, p1}, Lorg/tensorflow/lite/support/image/ops/TensorOperatorWrapper;-><init>(Lorg/tensorflow/lite/support/common/TensorOperator;)V

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;->add(Lorg/tensorflow/lite/support/image/ImageOperator;)Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/tensorflow/lite/support/image/ImageOperator;)Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;
    .registers 2
    .param p1, "op"    # Lorg/tensorflow/lite/support/image/ImageOperator;

    .line 131
    invoke-super {p0, p1}, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->add(Lorg/tensorflow/lite/support/common/Operator;)Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;

    .line 132
    return-object p0
.end method

.method public bridge synthetic build()Lorg/tensorflow/lite/support/common/SequentialProcessor;
    .registers 2

    .line 120
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;->build()Lorg/tensorflow/lite/support/image/ImageProcessor;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/tensorflow/lite/support/image/ImageProcessor;
    .registers 3

    .line 149
    new-instance v0, Lorg/tensorflow/lite/support/image/ImageProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/tensorflow/lite/support/image/ImageProcessor;-><init>(Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;Lorg/tensorflow/lite/support/image/ImageProcessor$1;)V

    return-object v0
.end method
