.class public final enum Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;
.super Ljava/lang/Enum;
.source "BoundingBoxUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/support/image/BoundingBoxUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CoordinateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;

.field public static final enum PIXEL:Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;

.field public static final enum RATIO:Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 66
    new-instance v0, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;

    const-string v1, "RATIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;->RATIO:Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;

    .line 68
    new-instance v1, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;

    const-string v3, "PIXEL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;->PIXEL:Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;

    .line 64
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;->$VALUES:[Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 64
    const-class v0, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;

    return-object v0
.end method

.method public static values()[Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;
    .registers 1

    .line 64
    sget-object v0, Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;->$VALUES:[Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;

    invoke-virtual {v0}, [Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/tensorflow/lite/support/image/BoundingBoxUtil$CoordinateType;

    return-object v0
.end method
