.class Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;
.super Landroidx/appcompat/widget/ContentFrameLayout;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListMenuDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .line 3025
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3026
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    .line 3027
    return-void
.end method

.method private isOutOfBounds(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 3055
    const/4 v0, -0x5

    if-lt p1, v0, :cond_18

    if-lt p2, v0, :cond_18

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_18

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    return v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 3031
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 3032
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 3031
    :goto_12
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3037
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3038
    .local v0, "action":I
    if-nez v0, :cond_1e

    .line 3039
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 3040
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 3041
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->isOutOfBounds(II)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 3042
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(I)V

    .line 3043
    const/4 v3, 0x1

    return v3

    .line 3046
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_1e
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public setBackgroundResource(I)V
    .registers 3
    .param p1, "resid"    # I

    .line 3051
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3052
    return-void
.end method
