.class Landroidx/transition/ChangeTransform$Transforms;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transforms"
.end annotation


# instance fields
.field final mRotationX:F

.field final mRotationY:F

.field final mRotationZ:F

.field final mScaleX:F

.field final mScaleY:F

.field final mTranslationX:F

.field final mTranslationY:F

.field final mTranslationZ:F


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    .line 472
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    .line 475
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    .line 476
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    .line 477
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    .line 478
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "that"    # Ljava/lang/Object;

    .line 487
    instance-of v0, p1, Landroidx/transition/ChangeTransform$Transforms;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 488
    return v1

    .line 490
    :cond_6
    move-object v0, p1

    check-cast v0, Landroidx/transition/ChangeTransform$Transforms;

    .line 491
    .local v0, "thatTransform":Landroidx/transition/ChangeTransform$Transforms;
    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4a

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4a

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4a

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4a

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4a

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4a

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4a

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4a

    const/4 v1, 0x1

    :cond_4a
    return v1
.end method

.method public hashCode()I
    .registers 7

    .line 503
    iget v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_d

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 504
    .local v0, "code":I
    :goto_e
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    cmpl-float v5, v4, v2

    if-eqz v5, :cond_1b

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    :goto_1c
    add-int/2addr v3, v4

    .line 505
    .end local v0    # "code":I
    .local v3, "code":I
    mul-int/lit8 v0, v3, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    cmpl-float v5, v4, v2

    if-eqz v5, :cond_2a

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    :goto_2b
    add-int/2addr v0, v4

    .line 506
    .end local v3    # "code":I
    .restart local v0    # "code":I
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    cmpl-float v5, v4, v2

    if-eqz v5, :cond_39

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_3a

    :cond_39
    const/4 v4, 0x0

    :goto_3a
    add-int/2addr v3, v4

    .line 507
    .end local v0    # "code":I
    .restart local v3    # "code":I
    mul-int/lit8 v0, v3, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    cmpl-float v5, v4, v2

    if-eqz v5, :cond_48

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    :goto_49
    add-int/2addr v0, v4

    .line 508
    .end local v3    # "code":I
    .restart local v0    # "code":I
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    cmpl-float v5, v4, v2

    if-eqz v5, :cond_57

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_58

    :cond_57
    const/4 v4, 0x0

    :goto_58
    add-int/2addr v3, v4

    .line 509
    .end local v0    # "code":I
    .restart local v3    # "code":I
    mul-int/lit8 v0, v3, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    cmpl-float v5, v4, v2

    if-eqz v5, :cond_66

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_67

    :cond_66
    const/4 v4, 0x0

    :goto_67
    add-int/2addr v0, v4

    .line 510
    .end local v3    # "code":I
    .restart local v0    # "code":I
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_74

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_74
    add-int/2addr v3, v1

    .line 511
    .end local v0    # "code":I
    .restart local v3    # "code":I
    return v3
.end method

.method public restore(Landroid/view/View;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;

    .line 481
    iget v1, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    iget v5, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    iget v6, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    iget v7, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    iget v8, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Landroidx/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    .line 483
    return-void
.end method
