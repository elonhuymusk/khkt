.class public final Landroidx/core/view/WindowInsetsAnimationCompat;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;,
        Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;,
        Landroidx/core/view/WindowInsetsAnimationCompat$Impl;,
        Landroidx/core/view/WindowInsetsAnimationCompat$Callback;,
        Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowInsetsAnimCompat"


# instance fields
.field private mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .registers 7
    .param p1, "typeMask"    # I
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "durationMillis"    # J

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    .line 76
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    goto :goto_27

    .line 77
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1f

    .line 78
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    goto :goto_27

    .line 80
    :cond_1f
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3, p4}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    .line 82
    :goto_27
    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsetsAnimation;)V
    .registers 6
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/core/view/WindowInsetsAnimationCompat;-><init>(ILandroid/view/animation/Interpolator;J)V

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_14

    .line 88
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;-><init>(Landroid/view/WindowInsetsAnimation;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    .line 90
    :cond_14
    return-void
.end method

.method static setCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "callback"    # Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    .line 524
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_a

    .line 525
    invoke-static {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->setCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    goto :goto_13

    .line 526
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_13

    .line 527
    invoke-static {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->setCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 530
    :cond_13
    :goto_13
    return-void
.end method

.method static toWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/WindowInsetsAnimationCompat;
    .registers 2
    .param p0, "windowInsetsAnimation"    # Landroid/view/WindowInsetsAnimation;

    .line 329
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsAnimationCompat;-><init>(Landroid/view/WindowInsetsAnimation;)V

    return-object v0
.end method


# virtual methods
.method public getAlpha()F
    .registers 2

    .line 194
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getDurationMillis()J
    .registers 3

    .line 168
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->getDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFraction()F
    .registers 2

    .line 121
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->getFraction()F

    move-result v0

    return v0
.end method

.method public getInterpolatedFraction()F
    .registers 2

    .line 148
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->getInterpolatedFraction()F

    move-result v0

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .line 160
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public getTypeMask()I
    .registers 2

    .line 97
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->getTypeMask()I

    move-result v0

    return v0
.end method

.method public setAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .line 209
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->setAlpha(F)V

    .line 210
    return-void
.end method

.method public setFraction(F)V
    .registers 3
    .param p1, "fraction"    # F

    .line 184
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->setFraction(F)V

    .line 185
    return-void
.end method
