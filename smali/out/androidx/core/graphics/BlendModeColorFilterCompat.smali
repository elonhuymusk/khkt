.class public Landroidx/core/graphics/BlendModeColorFilterCompat;
.super Ljava/lang/Object;
.source "BlendModeColorFilterCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBlendModeColorFilterCompat(ILandroidx/core/graphics/BlendModeCompat;)Landroid/graphics/ColorFilter;
    .registers 5
    .param p0, "color"    # I
    .param p1, "blendModeCompat"    # Landroidx/core/graphics/BlendModeCompat;

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_15

    .line 43
    invoke-static {p1}, Landroidx/core/graphics/BlendModeUtils;->obtainBlendModeFromCompat(Landroidx/core/graphics/BlendModeCompat;)Landroid/graphics/BlendMode;

    move-result-object v0

    .line 44
    .local v0, "blendMode":Landroid/graphics/BlendMode;
    if-eqz v0, :cond_13

    .line 45
    new-instance v1, Landroid/graphics/BlendModeColorFilter;

    invoke-direct {v1, p0, v0}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    goto :goto_14

    :cond_13
    nop

    .line 44
    :goto_14
    return-object v1

    .line 47
    .end local v0    # "blendMode":Landroid/graphics/BlendMode;
    :cond_15
    nop

    .line 48
    invoke-static {p1}, Landroidx/core/graphics/BlendModeUtils;->obtainPorterDuffFromCompat(Landroidx/core/graphics/BlendModeCompat;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 49
    .local v0, "porterDuffMode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v0, :cond_22

    .line 50
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p0, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_23

    :cond_22
    nop

    .line 49
    :goto_23
    return-object v1
.end method
