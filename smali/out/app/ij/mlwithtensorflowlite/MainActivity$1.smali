.class Lapp/ij/mlwithtensorflowlite/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/ij/mlwithtensorflowlite/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/ij/mlwithtensorflowlite/MainActivity;


# direct methods
.method constructor <init>(Lapp/ij/mlwithtensorflowlite/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lapp/ij/mlwithtensorflowlite/MainActivity;

    .line 49
    .local p0, "this":Lapp/ij/mlwithtensorflowlite/MainActivity$1;, "Lapp/ij/mlwithtensorflowlite/MainActivity$1;"
    iput-object p1, p0, Lapp/ij/mlwithtensorflowlite/MainActivity$1;->this$0:Lapp/ij/mlwithtensorflowlite/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 54
    .local p0, "this":Lapp/ij/mlwithtensorflowlite/MainActivity$1;, "Lapp/ij/mlwithtensorflowlite/MainActivity$1;"
    iget-object v0, p0, Lapp/ij/mlwithtensorflowlite/MainActivity$1;->this$0:Lapp/ij/mlwithtensorflowlite/MainActivity;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Lapp/ij/mlwithtensorflowlite/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "cameraIntent":Landroid/content/Intent;
    iget-object v1, p0, Lapp/ij/mlwithtensorflowlite/MainActivity$1;->this$0:Lapp/ij/mlwithtensorflowlite/MainActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lapp/ij/mlwithtensorflowlite/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 57
    .end local v0    # "cameraIntent":Landroid/content/Intent;
    goto :goto_23

    .line 59
    :cond_18
    iget-object v0, p0, Lapp/ij/mlwithtensorflowlite/MainActivity$1;->this$0:Lapp/ij/mlwithtensorflowlite/MainActivity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lapp/ij/mlwithtensorflowlite/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 61
    :goto_23
    return-void
.end method
