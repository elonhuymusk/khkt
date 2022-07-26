.class public Lorg/tensorflow/lite/support/metadata/MetadataExtractor$QuantizationParams;
.super Ljava/lang/Object;
.source "MetadataExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/support/metadata/MetadataExtractor;
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

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p1, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor$QuantizationParams;->scale:F

    .line 137
    iput p2, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor$QuantizationParams;->zeroPoint:I

    .line 138
    return-void
.end method


# virtual methods
.method public getScale()F
    .registers 2

    .line 142
    iget v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor$QuantizationParams;->scale:F

    return v0
.end method

.method public getZeroPoint()I
    .registers 2

    .line 147
    iget v0, p0, Lorg/tensorflow/lite/support/metadata/MetadataExtractor$QuantizationParams;->zeroPoint:I

    return v0
.end method
