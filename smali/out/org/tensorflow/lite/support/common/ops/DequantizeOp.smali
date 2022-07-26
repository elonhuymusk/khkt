.class public Lorg/tensorflow/lite/support/common/ops/DequantizeOp;
.super Lorg/tensorflow/lite/support/common/ops/NormalizeOp;
.source "DequantizeOp.java"

# interfaces
.implements Lorg/tensorflow/lite/support/common/TensorOperator;


# direct methods
.method public constructor <init>(FF)V
    .registers 4
    .param p1, "zeroPoint"    # F
    .param p2, "scale"    # F

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    invoke-direct {p0, p1, v0}, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;-><init>(FF)V

    .line 39
    return-void
.end method
