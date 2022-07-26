.class public final Landroidx/appcompat/widget/ViewStubCompat;
.super Landroid/view/View;
.source "ViewStubCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;
    }
.end annotation


# instance fields
.field private mInflateListener:Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;

.field private mInflatedId:I

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ViewStubCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    .line 61
    sget-object v1, Landroidx/appcompat/R$styleable;->ViewStubCompat:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 64
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Landroidx/appcompat/R$styleable;->ViewStubCompat_android_inflatedId:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedId:I

    .line 65
    sget v2, Landroidx/appcompat/R$styleable;->ViewStubCompat_android_layout:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    .line 67
    sget v0, Landroidx/appcompat/R$styleable;->ViewStubCompat_android_id:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ViewStubCompat;->setId(I)V

    .line 68
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ViewStubCompat;->setVisibility(I)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ViewStubCompat;->setWillNotDraw(Z)V

    .line 72
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 161
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 157
    return-void
.end method

.method public getInflatedId()I
    .registers 2

    .line 85
    iget v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedId:I

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 146
    iget-object v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLayoutResource()I
    .registers 2

    .line 115
    iget v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    return v0
.end method

.method public inflate()Landroid/view/View;
    .registers 8

    .line 198
    invoke-virtual {p0}, Landroidx/appcompat/widget/ViewStubCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 200
    .local v0, "viewParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_58

    .line 201
    iget v1, p0, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    if-eqz v1, :cond_50

    .line 202
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 204
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_16

    .line 205
    iget-object v2, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    .local v2, "factory":Landroid/view/LayoutInflater;
    goto :goto_1e

    .line 207
    .end local v2    # "factory":Landroid/view/LayoutInflater;
    :cond_16
    invoke-virtual {p0}, Landroidx/appcompat/widget/ViewStubCompat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 209
    .restart local v2    # "factory":Landroid/view/LayoutInflater;
    :goto_1e
    iget v3, p0, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 212
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2d

    .line 213
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 216
    :cond_2d
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 217
    .local v4, "index":I
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 219
    invoke-virtual {p0}, Landroidx/appcompat/widget/ViewStubCompat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 220
    .local v5, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v5, :cond_3e

    .line 221
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_41

    .line 223
    :cond_3e
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 226
    :goto_41
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 228
    iget-object v6, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflateListener:Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;

    if-eqz v6, :cond_4f

    .line 229
    invoke-interface {v6, p0, v3}, Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;->onInflate(Landroidx/appcompat/widget/ViewStubCompat;Landroid/view/View;)V

    .line 232
    :cond_4f
    return-object v3

    .line 234
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "factory":Landroid/view/LayoutInflater;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "index":I
    .end local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ViewStub must have a valid layoutResource"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_58
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onMeasure(II)V
    .registers 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/appcompat/widget/ViewStubCompat;->setMeasuredDimension(II)V

    .line 152
    return-void
.end method

.method public setInflatedId(I)V
    .registers 2
    .param p1, "inflatedId"    # I

    .line 99
    iput p1, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedId:I

    .line 100
    return-void
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .registers 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 139
    iput-object p1, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    .line 140
    return-void
.end method

.method public setLayoutResource(I)V
    .registers 2
    .param p1, "layoutResource"    # I

    .line 131
    iput p1, p0, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    .line 132
    return-void
.end method

.method public setOnInflateListener(Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;)V
    .registers 2
    .param p1, "inflateListener"    # Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;

    .line 250
    iput-object p1, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflateListener:Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;

    .line 251
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .line 175
    iget-object v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    .line 176
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 177
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_10

    .line 178
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .end local v0    # "view":Landroid/view/View;
    goto :goto_23

    .line 180
    .restart local v0    # "view":Landroid/view/View;
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setVisibility called on un-referenced view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    .end local v0    # "view":Landroid/view/View;
    :cond_18
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    if-eqz p1, :cond_20

    const/4 v0, 0x4

    if-ne p1, v0, :cond_23

    .line 185
    :cond_20
    invoke-virtual {p0}, Landroidx/appcompat/widget/ViewStubCompat;->inflate()Landroid/view/View;

    .line 188
    :cond_23
    :goto_23
    return-void
.end method
