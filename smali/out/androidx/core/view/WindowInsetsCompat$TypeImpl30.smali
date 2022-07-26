.class final Landroidx/core/view/WindowInsetsCompat$TypeImpl30;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeImpl30"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toPlatformType(I)I
    .registers 4
    .param p0, "typeMask"    # I

    .line 2060
    const/4 v0, 0x0

    .line 2061
    .local v0, "result":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x100

    if-gt v1, v2, :cond_40

    .line 2062
    and-int v2, p0, v1

    if-eqz v2, :cond_3d

    .line 2063
    sparse-switch v1, :sswitch_data_42

    goto :goto_3d

    .line 2086
    :sswitch_e
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v0, v2

    goto :goto_3d

    .line 2083
    :sswitch_14
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v2

    or-int/2addr v0, v2

    .line 2084
    goto :goto_3d

    .line 2080
    :sswitch_1a
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v2

    or-int/2addr v0, v2

    .line 2081
    goto :goto_3d

    .line 2077
    :sswitch_20
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v2

    or-int/2addr v0, v2

    .line 2078
    goto :goto_3d

    .line 2074
    :sswitch_26
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    or-int/2addr v0, v2

    .line 2075
    goto :goto_3d

    .line 2071
    :sswitch_2c
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v2

    or-int/2addr v0, v2

    .line 2072
    goto :goto_3d

    .line 2068
    :sswitch_32
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v0, v2

    .line 2069
    goto :goto_3d

    .line 2065
    :sswitch_38
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    or-int/2addr v0, v2

    .line 2061
    :cond_3d
    :goto_3d
    shl-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2091
    .end local v1    # "i":I
    :cond_40
    return v0

    nop

    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_38
        0x2 -> :sswitch_32
        0x4 -> :sswitch_2c
        0x8 -> :sswitch_26
        0x10 -> :sswitch_20
        0x20 -> :sswitch_1a
        0x40 -> :sswitch_14
        0x80 -> :sswitch_e
    .end sparse-switch
.end method
