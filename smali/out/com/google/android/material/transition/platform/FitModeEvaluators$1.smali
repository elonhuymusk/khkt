.class final Lcom/google/android/material/transition/platform/FitModeEvaluators$1;
.super Ljava/lang/Object;
.source "FitModeEvaluators.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/FitModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/FitModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyMask(Landroid/graphics/RectF;FLcom/google/android/material/transition/platform/FitModeResult;)V
    .registers 7
    .param p1, "maskBounds"    # Landroid/graphics/RectF;
    .param p2, "maskMultiplier"    # F
    .param p3, "fitModeResult"    # Lcom/google/android/material/transition/platform/FitModeResult;

    .line 74
    iget v0, p3, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndHeight:F

    iget v1, p3, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartHeight:F

    sub-float/2addr v0, v1

    .line 75
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 76
    .local v0, "currentHeightDiff":F
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    mul-float v2, v0, p2

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 77
    return-void
.end method

.method public evaluate(FFFFFFF)Lcom/google/android/material/transition/platform/FitModeResult;
    .registers 21
    .param p1, "progress"    # F
    .param p2, "scaleStartFraction"    # F
    .param p3, "scaleEndFraction"    # F
    .param p4, "startWidth"    # F
    .param p5, "startHeight"    # F
    .param p6, "endWidth"    # F
    .param p7, "endHeight"    # F

    .line 46
    nop

    .line 47
    const/4 v5, 0x1

    move/from16 v0, p4

    move/from16 v1, p6

    move v2, p2

    move/from16 v3, p3

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFFZ)F

    move-result v0

    .line 54
    .local v0, "currentWidth":F
    div-float v1, v0, p4

    .line 55
    .local v1, "startScale":F
    div-float v2, v0, p6

    .line 56
    .local v2, "endScale":F
    mul-float v3, p5, v1

    .line 57
    .local v3, "currentStartHeight":F
    mul-float v4, p7, v2

    .line 58
    .local v4, "currentEndHeight":F
    new-instance v5, Lcom/google/android/material/transition/platform/FitModeResult;

    move-object v6, v5

    move v7, v1

    move v8, v2

    move v9, v0

    move v10, v3

    move v11, v0

    move v12, v4

    invoke-direct/range {v6 .. v12}, Lcom/google/android/material/transition/platform/FitModeResult;-><init>(FFFFFF)V

    return-object v5
.end method

.method public shouldMaskStartBounds(Lcom/google/android/material/transition/platform/FitModeResult;)Z
    .registers 4
    .param p1, "fitModeResult"    # Lcom/google/android/material/transition/platform/FitModeResult;

    .line 69
    iget v0, p1, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartHeight:F

    iget v1, p1, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
