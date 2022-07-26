.class public Lorg/tensorflow/lite/support/common/TensorProcessor;
.super Lorg/tensorflow/lite/support/common/SequentialProcessor;
.source "TensorProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/tensorflow/lite/support/common/SequentialProcessor<",
        "Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;)V
    .registers 2
    .param p1, "builder"    # Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;

    .line 36
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/support/common/SequentialProcessor;-><init>(Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;)V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;Lorg/tensorflow/lite/support/common/TensorProcessor$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;
    .param p2, "x1"    # Lorg/tensorflow/lite/support/common/TensorProcessor$1;

    .line 34
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/support/common/TensorProcessor;-><init>(Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;)V

    return-void
.end method
