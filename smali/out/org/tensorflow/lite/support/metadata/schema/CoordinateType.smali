.class public final Lorg/tensorflow/lite/support/metadata/schema/CoordinateType;
.super Ljava/lang/Object;
.source "CoordinateType.java"


# static fields
.field public static final PIXEL:B = 0x1t

.field public static final RATIO:B

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 10
    const-string v0, "RATIO"

    const-string v1, "PIXEL"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/lite/support/metadata/schema/CoordinateType;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .registers 2
    .param p0, "e"    # I

    .line 12
    sget-object v0, Lorg/tensorflow/lite/support/metadata/schema/CoordinateType;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method