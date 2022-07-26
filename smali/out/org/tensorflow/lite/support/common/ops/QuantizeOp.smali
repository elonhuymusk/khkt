.class public Lorg/tensorflow/lite/support/common/ops/QuantizeOp;
.super Lorg/tensorflow/lite/support/common/ops/NormalizeOp;
.source "QuantizeOp.java"

# interfaces
.implements Lorg/tensorflow/lite/support/common/TensorOperator;


# direct methods
.method public constructor <init>(FF)V
    .registers 4
    .param p1, "zeroPoint"    # F
    .param p2, "scale"    # F

    .line 39
    neg-float v0, p1

    mul-float v0, v0, p2

    invoke-direct {p0, v0, p2}, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;-><init>(FF)V

    .line 40
    return-void
.end method
