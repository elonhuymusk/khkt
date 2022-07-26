.class public final enum Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;
.super Ljava/lang/Enum;
.source "BoundingBoxUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/support/image/BoundingBoxUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;

.field public static final enum BOUNDARIES:Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;

.field public static final enum CENTER:Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;

.field public static final enum UPPER_LEFT:Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 48
    new-instance v0, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;

    const-string v1, "BOUNDARIES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;->BOUNDARIES:Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;

    .line 54
    new-instance v1, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;

    const-string v3, "UPPER_LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;->UPPER_LEFT:Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;

    .line 60
    new-instance v3, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;

    const-string v5, "CENTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;->CENTER:Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;

    .line 42
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;->$VALUES:[Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    const-class v0, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;

    return-object v0
.end method

.method public static values()[Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;
    .registers 1

    .line 42
    sget-object v0, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;->$VALUES:[Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;

    invoke-virtual {v0}, [Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/tensorflow/lite/support/image/BoundingBoxUtil$Type;

    return-object v0
.end method
