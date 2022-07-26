.class final Landroidx/appcompat/widget/AppCompatReceiveContentHelper;
.super Ljava/lang/Object;
.source "AppCompatReceiveContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;
    }
.end annotation


# static fields
.field private static final EXTRA_INPUT_CONTENT_INFO:Ljava/lang/String; = "androidx.core.view.extra.INPUT_CONTENT_INFO"

.field private static final LOG_TAG:Ljava/lang/String; = "ReceiveContent"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createOnCommitContentListener(Landroid/view/View;)Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 179
    new-instance v0, Landroidx/appcompat/widget/AppCompatReceiveContentHelper$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatReceiveContentHelper$1;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method static maybeHandleDragEventViaPerformReceiveContent(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_55

    .line 90
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_55

    .line 91
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOnReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_55

    .line 98
    :cond_14
    invoke-static {p0}, Landroidx/appcompat/widget/AppCompatReceiveContentHelper;->tryGetActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 99
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_31

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t handle drop: no activity: view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReceiveContent"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v1

    .line 103
    :cond_31
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3c

    .line 109
    instance-of v1, p0, Landroid/widget/TextView;

    xor-int/2addr v1, v3

    return v1

    .line 111
    :cond_3c
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_54

    .line 112
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_4f

    .line 113
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;->onDropForTextView(Landroid/view/DragEvent;Landroid/widget/TextView;Landroid/app/Activity;)Z

    move-result v1

    goto :goto_53

    .line 114
    :cond_4f
    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;->onDropForView(Landroid/view/DragEvent;Landroid/view/View;Landroid/app/Activity;)Z

    move-result v1

    .line 112
    :goto_53
    return v1

    .line 116
    :cond_54
    return v1

    .line 92
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_55
    :goto_55
    return v1
.end method

.method static maybeHandleMenuActionViaPerformReceiveContent(Landroid/widget/TextView;I)Z
    .registers 8
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "menuItemId"    # I

    .line 65
    const/4 v0, 0x0

    const v1, 0x1020022

    if-eq p1, v1, :cond_b

    const v2, 0x1020031

    if-ne p1, v2, :cond_11

    .line 66
    :cond_b
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOnReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    .line 67
    :cond_11
    return v0

    .line 69
    :cond_12
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 71
    .local v2, "cm":Landroid/content/ClipboardManager;
    if-nez v2, :cond_22

    const/4 v3, 0x0

    goto :goto_26

    :cond_22
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    .line 72
    .local v3, "clip":Landroid/content/ClipData;
    :goto_26
    const/4 v4, 0x1

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-lez v5, :cond_43

    .line 73
    new-instance v5, Landroidx/core/view/ContentInfoCompat$Builder;

    invoke-direct {v5, v3, v4}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 74
    if-ne p1, v1, :cond_37

    goto :goto_38

    :cond_37
    const/4 v0, 0x1

    :goto_38
    invoke-virtual {v5, v0}, Landroidx/core/view/ContentInfoCompat$Builder;->setFlags(I)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v0

    .line 76
    .local v0, "payload":Landroidx/core/view/ContentInfoCompat;
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    .line 78
    .end local v0    # "payload":Landroidx/core/view/ContentInfoCompat;
    :cond_43
    return v4
.end method

.method static tryGetActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    .local v0, "context":Landroid/content/Context;
    :goto_4
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_18

    .line 161
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_10

    .line 162
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    return-object v1

    .line 164
    :cond_10
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_4

    .line 166
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method
