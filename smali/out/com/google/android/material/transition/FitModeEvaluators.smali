.class Lcom/google/android/material/transition/FitModeEvaluators;
.super Ljava/lang/Object;
.source "FitModeEvaluators.java"


# static fields
.field private static final HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

.field private static final WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/google/android/material/transition/FitModeEvaluators$1;

    invoke-direct {v0}, Lcom/google/android/material/transition/FitModeEvaluators$1;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;

    .line 75
    new-instance v0, Lcom/google/android/material/transition/FitModeEvaluators$2;

    invoke-direct {v0}, Lcom/google/android/material/transition/FitModeEvaluators$2;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/transition/FitModeEvaluator;
    .registers 7
    .param p0, "fitMode"    # I
    .param p1, "entering"    # Z
    .param p2, "startBounds"    # Landroid/graphics/RectF;
    .param p3, "endBounds"    # Landroid/graphics/RectF;

    .line 124
    packed-switch p0, :pswitch_data_2c

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fit mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :pswitch_1a
    sget-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

    return-object v0

    .line 128
    :pswitch_1d
    sget-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;

    return-object v0

    .line 126
    :pswitch_20
    invoke-static {p1, p2, p3}, Lcom/google/android/material/transition/FitModeEvaluators;->shouldAutoFitToWidth(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;

    goto :goto_2b

    :cond_29
    sget-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

    :goto_2b
    return-object v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private static shouldAutoFitToWidth(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 12
    .param p0, "entering"    # Z
    .param p1, "startBounds"    # Landroid/graphics/RectF;
    .param p2, "endBounds"    # Landroid/graphics/RectF;

    .line 138
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 139
    .local v0, "startWidth":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 140
    .local v1, "startHeight":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 141
    .local v2, "endWidth":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 143
    .local v3, "endHeight":F
    mul-float v4, v3, v0

    div-float/2addr v4, v2

    .line 144
    .local v4, "endHeightFitToWidth":F
    mul-float v5, v1, v2

    div-float/2addr v5, v0

    .line 145
    .local v5, "startHeightFitToWidth":F
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p0, :cond_1f

    cmpl-float v8, v4, v1

    if-ltz v8, :cond_24

    goto :goto_23

    :cond_1f
    cmpl-float v8, v5, v3

    if-ltz v8, :cond_24

    :goto_23
    goto :goto_25

    :cond_24
    const/4 v6, 0x0

    :goto_25
    return v6
.end method
