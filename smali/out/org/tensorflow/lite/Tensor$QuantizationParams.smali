.class public Lorg/tensorflow/lite/Tensor$QuantizationParams;
.super Ljava/lang/Object;
.source "Tensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/Tensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuantizationParams"
.end annotation


# instance fields
.field private final scale:F

.field private final zeroPoint:I


# direct methods
.method public constructor <init>(FI)V
    .registers 3
    .param p1, "scale"    # F
    .param p2, "zeroPoint"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lorg/tensorflow/lite/Tensor$QuantizationParams;->scale:F

    .line 75
    iput p2, p0, Lorg/tensorflow/lite/Tensor$QuantizationParams;->zeroPoint:I

    .line 76
    return-void
.end method


# virtual methods
.method public getScale()F
    .registers 2

    .line 80
    iget v0, p0, Lorg/tensorflow/lite/Tensor$QuantizationParams;->scale:F

    return v0
.end method

.method public getZeroPoint()I
    .registers 2

    .line 85
    iget v0, p0, Lorg/tensorflow/lite/Tensor$QuantizationParams;->zeroPoint:I

    return v0
.end method
