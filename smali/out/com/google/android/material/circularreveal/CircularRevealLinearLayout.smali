.class public Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CircularRevealLinearLayout.java"

# interfaces
.implements Lcom/google/android/material/circularreveal/CircularRevealWidget;


# instance fields
.field private final helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-direct {v0, p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;-><init>(Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V

    iput-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    .line 39
    return-void
.end method


# virtual methods
.method public actualDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 94
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 95
    return-void
.end method

.method public actualIsOpaque()Z
    .registers 2

    .line 108
    invoke-super {p0}, Landroid/widget/LinearLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public buildCircularRevealCache()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildCircularRevealCache()V

    .line 44
    return-void
.end method

.method public destroyCircularRevealCache()V
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->destroyCircularRevealCache()V

    .line 49
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 85
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_8

    .line 86
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    .line 88
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 90
    :goto_b
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealScrimColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_9

    .line 100
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->isOpaque()Z

    move-result v0

    return v0

    .line 102
    :cond_9
    invoke-super {p0}, Landroid/widget/LinearLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 69
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealScrimColor(I)V

    .line 70
    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .registers 3
    .param p1, "revealInfo"    # Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 59
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 60
    return-void
.end method
